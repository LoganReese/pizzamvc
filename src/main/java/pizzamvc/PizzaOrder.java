package pizzamvc;

import java.util.Arrays;

/**
 * A class that represents a single pizza order.
 *
 * @author Logan Reese
 */
public class PizzaOrder {

    private String email;
    private String size;
 private String style;
    private String[] toppings;

    public PizzaOrder() {
        email = "";
        size = "";
        style = "";
        toppings = null;
    }

    public PizzaOrder(String email, String size, String style, String[] toppings) {
        this.email = email;
        this.size = size;
        this.style = style;
        this.toppings = toppings;
    }

    public String[] getToppings() {
        return toppings;
    }

    public void setToppings(String[] toppings) {
        this.toppings = toppings;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    public String getStyle() {
        return style;
    }
    public void setStyle(String style) {
        this.style = style;
    }
    
 
    @Override
    public String toString() {
        return "PizzaOrder{" + "email=" + email + ", size=" + size + "style = " + style
                + ", toppings=" + Arrays.toString(toppings) + '}';
    }
}