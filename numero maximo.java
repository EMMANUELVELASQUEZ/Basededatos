package programacion_02;

public class actividad_d26sep24 {

    public static void main(String[] args) {
        int[] semana = {20, 1, 15, 71, 8, 10, 3};
        int max = semana[0]; 

        for (int i = 1; i < semana.length; i++) {
            if (semana[i] > max) {
                max = semana[i]; 
            }
        }

        System.out.println("El número mayor es: " + max);
    }
}
