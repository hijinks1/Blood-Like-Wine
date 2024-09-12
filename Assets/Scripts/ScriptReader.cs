using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Ink.Runtime;
using TMPro;
using UnityEditor;
using UnityEditor.Tilemaps;
using UnityEditor.VersionControl;
using UnityEngine.SearchService;
using UnityEngine.Tilemaps;
using UnityEngine.UI;

public class ScriptReader : MonoBehaviour
{
    [SerializeField]
    public TextAsset _InkJsonFile;
    public Story _StoryScript;
    
    public TMP_Text DialogueText;
    public TMP_Text NameTag;

    //connects the Choices and the Button 1 prefab to themselves under the Dialogue Manager once dragged
    [SerializeField] 
    public GridLayoutGroup Choices;
    [SerializeField] 
    public Button ChoiceBasedPrefab;

    private static Story story;
    public float typingSpeed = .1f;
    
    //lyall animator
    public const string LYALL_TAG = "Lyall";
    [SerializeField] public Animator LyallAnimator;
    //blackout animator
    public const string BLACKOUT_TAG = "Blackout";
    [SerializeField] public Animator Blackout;
    //werewolf sprite animator
    public const string WEREWOLF_TAG = "Werewolf";
    [SerializeField] public Animator Werewolf;
    
//established for the saving file
    // private void Awake()
    // {
    //     _StoryScript = new Story(_InkJsonFile.text);
    // }

    void Start()
    {
        LoadStory();
    }

    void Update()
    { 
        // string savedJson = _StoryScript.state.ToJson();
       // Debug.Log("scene saved");

        if (Input.GetKeyDown(KeyCode.Space)) //everytime space is pressed, new text is displayed
        {
            DisplayNextLine();
        }
        
        // else if (Input.GetKeyDown(KeyCode.LeftArrow)) //when <- is pressed, text goes back to previous test
        //     Debug.Log("Left arrow pressed");
        // {
        //     _StoryScript.state.LoadJson(savedJson);
        //     Debug.Log("Loaded previous file");
        // }
    }
    
    void LoadStory()
    {
        _StoryScript = new Story(_InkJsonFile.text);
        //Function below connects to the function inside of Inky! Changes the names of the characters
        _StoryScript.BindExternalFunction("Name", (string CharName) => ChangeName(CharName));
    }

    public void DisplayNextLine()
    {
        if (_StoryScript.canContinue)  //checking if there is content to go through
        {
            string text = _StoryScript.Continue(); //gets next line 
            text = text?.Trim(); //removes white space from the text
            DialogueText.text = text; //sets the text in the dialogue box to the next piece of text
            
            HandleTags(_StoryScript.currentTags);
            StopAllCoroutines();
            StartCoroutine(TypeSentence(text));

        }
        else if (_StoryScript.currentChoices.Count > 0)
        { 
            DisplayChoices();
        }
        else
        { 
            //if there is no text, dialogue box says this!
            DialogueText.text = "The End.";
        }

       // types out each letter in dialogue box
         IEnumerator TypeSentence(string sentence)
         {
             DialogueText.text = "";
             foreach (char letter in sentence.ToCharArray())
             {
                 DialogueText.text += letter;
                 yield return new WaitForSeconds(typingSpeed);
             }
         }
    }
    //Lyall expression changes
    public void HandleTags(List<string> currentTags)
    {
        //goes through each tag
        foreach (string tag in currentTags)
        {
            string[] splitTag = tag.Split(':');
            if (splitTag.Length != 2)
            {
                Debug.LogError("Tag could not be appropriately parsed:" +tag);
            }

            string tagKey = splitTag[0];
            string tagValue = splitTag[1].Trim();

            switch (tagKey)
            {
                case LYALL_TAG:
                    LyallAnimator.Play(tagValue);
                    break;
                case BLACKOUT_TAG:
                    Blackout.Play(tagValue);
                    break;
                case WEREWOLF_TAG:
                    Werewolf.Play(tagValue);
                    break;
            }
        }
    }
    
    public void DisplayChoices()
    { //checks if there is a button
        if (Choices.GetComponentsInChildren<Button>().Length > 0) return;
        
        for (int i = 0; i < _StoryScript.currentChoices.Count; i++)
        {
            var choice = _StoryScript.currentChoices[i];
            var button = CreateChoiceButton(choice.text); //creates a choice button
            
            button.onClick.AddListener(() => OnClickChoiceButton(choice));
        }
    }

    Button CreateChoiceButton(string text)
    { //instantiate the button prefab
        var choiceButton = Instantiate(ChoiceBasedPrefab);
        choiceButton.transform.SetParent(Choices.transform, false);

        //change the text in the button prefab
        var buttonText = choiceButton.GetComponentInChildren<TMP_Text>();
        buttonText.text = text;

        return choiceButton;
    }

    void OnClickChoiceButton(Choice choice)
    {
        _StoryScript.ChooseChoiceIndex(choice.index);
        
        RefreshChoiceView(); //choices will disappear after click
        DisplayNextLine();
    }

    void RefreshChoiceView()
    {
        if (Choices != null) //if choices are not null then
        {
            foreach (var button in Choices.GetComponentsInChildren<Button>())
            {
                Destroy(button.gameObject);
            }
        }
    }
    
    void ChangeName(string name)
    {
        string SpeakerName = name; //changes speaker's name to the name
        NameTag.text = SpeakerName;
    }
    
}
