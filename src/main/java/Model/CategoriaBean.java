package Model;

public class CategoriaBean {

	int codcategoria;
	String Nome;
	ImmagineBean Immagine;
	
	
	public int getCodcategoria() {
		return codcategoria;
	}
	public void setCodcategoria(int codcategoria) {
		this.codcategoria = codcategoria;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
	}
	public CategoriaBean() {
		super();
	}
	
	public ImmagineBean getImmagine() {
		return Immagine;
	}
	public void setImmagine(ImmagineBean immagine) {
		Immagine = immagine;
	}
	
	
	
	
	
}
