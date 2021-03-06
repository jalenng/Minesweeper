public class FaceButton extends MSButton
{
    private float x,y, width, height;

    public FaceButton()
    {
        label = "🙂";
        x = (SCREEN_WIDTH / 2) - 20;
        y = SCREEN_HEIGHT - 47;
        width = 40;
        height = 40;
        Interactive.add( this ); // register it with the manager
    }

    public void mousePressed () 
    {
        if (status != -1) {
            status = 0;
            initialize();
        }
    }

    public void draw()
    {
        if (status != -1) {
            fill(75);
            rect(x + (width * 0.1), y + (width * 0.1), width * 0.9, height * 0.9, width / 10); 
            textSize(30);
            fill(255);
            text(label, x+(width/2),y+(height/2));
        }
    }
}