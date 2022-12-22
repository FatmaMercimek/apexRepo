public class okul {
    // properties
    private String isim;   // 2 method  getisim  setisim(String okulAdi)
    private Integer ogrenciSayisi; // 2 method getogrenciSayisi    setogrenciSayisi(Integer ogrSayisi)
    private List<String> ogrenciListesi;
    private static Integer toplamogrencisayisi;
     // constuctor method
    public okul(String okulAdi){
        System.debug('Okul constructor işlemi çalışıyor... ....');
        
        setisim(okulAdi);
        
        ogrenciSayisi=0;
        toplamogrencisayisi=0;
        ogrenciListesi = New List<String>();
        
       System.debug(isim + ' isimli okul oluşturuldu....');
    }
    // methods
    
    public void setogrenciListesi(String yeniOgrenci){
        ogrenciListesi.add(yeniOgrenci);
        ogrenciSayisi++;
        toplamogrencisayisi++;
    }
    
    
    public List<String> getogrenciListesi(){
        return ogrenciListesi;
    }
    
    public static Integer gettoplamOgrenciSayisi(){
       return toplamOgrenciSayisi;
    }
    
    public void setogrenciSayisi(Integer ogrSayisi){
        ogrenciSayisi=ogrSayisi;
        toplamogrencisayisi+=ogrenciSayisi;
    }
     public Integer getogrenciSayisi(){
        return ogrenciSayisi;
    }    
    public void setisim(String okulAdi){
       isim= okulAdi;
    } 
    public String getisim(){
       return isim;
    }
    
}