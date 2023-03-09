***dferencia en diferencias
*se quiere medir el efecto de un programa en una muestra poblacional
// Se basa en eliminar falsos contrafactuales
//La Evaluación de Impacto mide la relación causaefecto entre una intervención y un resultado//
*El objetivo de cada evaluación de impacto es demonstrar un efecto causal: Se quiere medir el impacto de un programa o una política en alguna variable de interés.

*Lo que hubiera pasado sin el programa, se llama el contrafactual.

* El impacto del programa o de la política es la diferencia entre el resultado que observamos con el programa y el resultado que hubiera ocurrido sin el programa ‐ el contrafactual.   

*Normalmente el grupo contrafactual es lo que se conoce como el grupo de control o el grupo que no recibio tratamiento.

*el metodo de diferencia en diferencia utiliza dos falsos contrafactuales

clear
use base_de_datos.dta

// primero se realiza una regresión 

regress variable_dependiente variable_regresora if resulatdo == despues_del_tratamiento
* Se obtiene el coeficiente estimado
scalar difA = _b[variable_regresora]
display difA // funcion para guardar el estimador


// se repita el mismo proceso prero ahora con los datos antes del tratamiento

regress variable_dependiente variable_regresora if resultado == antes_del_tratamiento

*coeficiente estimado
 scalar difB = _b[variable_regresora]
 display difB
 
 // diferencias en diferencias
 
 display difA - difB
 
 *El resuultado obtenido es el estimador de diferencias en diferencias
 
 //De tener todos los datos el método de diferencias en diferencia se puede medir con una sola regresion
 

 regress variable_dependiente variable_binaria_despues_tratamiento variable_binaria_si_tomo_ratamiento producto_de_las_dos_variables_binarias 
 *el coeficiente de la regresion del producto de las dos variables dara el mismo resultado



