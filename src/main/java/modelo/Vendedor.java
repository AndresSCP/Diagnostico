package modelo;

import java.util.List;

import interfaces.CalculadoraBeneficios;

public class Vendedor implements CalculadoraBeneficios{
	
	String nombre;
	int ventas;
	
	public Vendedor (){};
	
	public Vendedor (String nombre, int ventas){
		this.nombre = nombre;
		this.ventas	= ventas;
	};
	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getVentas() {
		return ventas;
	}

	public void setVentas(int ventas) {
		this.ventas = ventas;
	}

	@Override
	public int calcularBeneficio(List<Integer> ventas) {
		// TODO Auto-generated method stub
		return 0;
	}


	
}

