/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package KAS;

/**
 *
 * @author HP
 */
public class vechicleDisp {
    private final int Vid;
    private final String Vname;
    private final String Regno;
    private final String Type;
    private final int cap;
    
    public vechicleDisp(int Vid, String Vname, String Regno,String Type, int cap)
    {
        this.Vid = Vid;
        this.Vname = Vname;
        this.Regno = Regno;
        this.Type = Type;
        this.cap = cap;
    }
    
    public int getVid()
    {
        return Vid;
    }
    
    public String getVname()
    {
        return Vname;
    }
    
    public String getRegno()
    {
        return Regno;
    }
    
    public String getType()
    {
        return Type;
    }
    
    public int getCap(){
        return cap;
    }
    
}
