import { LightningElement } from 'lwc';

export default class QuizApp extends LightningElement {
    selected={}
    correctAnswers = 0 
    myQuestions=[
        {
            id:"Que.1",
            question:"Which one of the following is not a template loop?",
            answers:{
                a:"for:each",
                b:"iterator",
                c:"map loop"
            },
            correctAnswer:"c"
        },
        {
            id:"Que.2",
            question:"Which of the file is invalid in LWC component folder?",
            answers:{
                a:".svg",
                b:".apex",
                c:".js"
            },
            correctAnswer:"b"
        },
        {
            id:"Que.3",
            question:"Which one of the following is not a directive?",
            answers:{
                a:"for:each",
                b:"iterator",
                c:"@track"
            },
            correctAnswer:"c"
        }
    ]
    allNotSelected = true;
    changehandler(event){
        console.log("name",event.target.name)
        console.log("value",event.target.value)
        this.checkSubmitAvailabilty();
    }
    submitHandler(event){
        event.preventDefault()
         let correct=this.myQuestions.filter(item=>this.selected[item.id] === item.correctAnswer)
         this.correctAnswers = correct.length
         console.log("this.correctAnswers",this.correctAnswers)
    }
    resetHandler(){
        this.selected = {}
        this.correctAnswers=0 
        this.checkSubmitAvailabilty();
    }
    checkSubmitAvailabilty(){
        this.allNotSelected = true;
        let count = 0;
        this.template.querySelectorAll('input').forEach(e => {
            if(e.checked)
            count++;
        })
        if(count == 3){
            this.allNotSelected = false;
        }
    }
}