public class Rectangle implements Shape{
   public decimal width;
   public decimal height;
    public decimal Area(){
    system.debug('The area is rectangle is '+(width*height));
        return width*height;
    }
    public decimal perimeter(){
        system.debug('The peremeter is rectangle is '+ (2*(height+width)));
        return 2*(height+width);
    }

}