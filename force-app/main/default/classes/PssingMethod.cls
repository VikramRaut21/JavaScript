public class PssingMethod {
    public static void ForDebug(){
        String msg = 'Original Value';
        processString(msg);
        System.assertEquals(msg,'Original Value');
        
    }
    public static void processString(String s){
        s='Modified Value';
    }

}