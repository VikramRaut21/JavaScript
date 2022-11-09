import { LightningElement, track } from 'lwc';

export default class HelloWorld extends LightningElement {
   FullName = "Working Space"
   title="Aura"

   changeHandler(event){
        this.title = event.target.value
   }

   address={
    city:'Melbourne',
    postcode:3008,
    country:'Australia'
   }
   trackHandler(event){
        this.address= {...this.address, "city":event.target.value}
   }
   /***getter example */
   users =["john","smith","nik"]
   num1=10
   num2=20

   get firstUser(){
     return this.users[0].toUpperCase() 
   }
   get multiply(){
     return this.num1*this.num2
   }
}
