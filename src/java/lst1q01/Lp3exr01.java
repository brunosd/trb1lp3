package lst1q01;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Walter Welenir
 */
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

public class Lp3exr01 implements Serializable {

    public void data()
    {
        Date dataAtual = GregorianCalendar.getInstance().getTime();
        SimpleDateFormat formato = new SimpleDateFormat();
        System.out.print(formato.format(dataAtual));
    }
    public String dataAtual() {
        Date dataAtual = GregorianCalendar.getInstance().getTime();
        SimpleDateFormat formato = new SimpleDateFormat();
        return formato.format(dataAtual);
    }
}
