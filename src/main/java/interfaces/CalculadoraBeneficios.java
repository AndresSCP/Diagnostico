package interfaces;

import java.util.List;

public interface CalculadoraBeneficios {

	public int calcularBeneficio(List<Integer> ventas);

	public static int calcularBeneficioSimple(List<Integer> ventas) {
		int montoTotalVentas = 0;
		for (int venta : ventas) {
			montoTotalVentas += venta;
		}
		return Math.round(montoTotalVentas * 0.03f);
	}

	public static int calcularBeneficioComplejo(List<Integer> ventas) {
		int montoTotalVentas = 0;
		int beneficio = 0;
		for (int venta : ventas) {
			montoTotalVentas += venta;
			if (venta > 1000) {
				beneficio += Math.round(venta * 0.05f);
			} else if (venta > 500) {
				beneficio += Math.round(venta * 0.02f);
			}
		}
		beneficio += Math.round(montoTotalVentas * 0.01f);
		if (montoTotalVentas > 5000) {
			beneficio += 100;
		}
		return beneficio;
	}

}
