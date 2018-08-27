package com.ite.government.util;

import java.math.BigDecimal;

import org.apache.log4j.Logger;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

public class ReadExcelCell {
	private static final Logger log = Logger.getLogger(ReadExcelCell.class);

	public String CeldaExcelXLSX(XSSFSheet Hoja, XSSFRow Fila, Integer NumFila, int NumColumna) {
		String Celda = "";
		Fila = Hoja.getRow(NumFila);
		try {
			if (Fila != null) {
				Celda = Fila.getCell(NumColumna) == null ? ""
						: (Fila.getCell(NumColumna).getCellType() == Cell.CELL_TYPE_STRING) ? Fila
								.getCell(NumColumna).getStringCellValue()
								: (Fila.getCell(NumColumna).getCellType() == Cell.CELL_TYPE_NUMERIC) ? ""
										+ Fila.getCell(NumColumna)
												.getNumericCellValue()
										: (Fila.getCell(NumColumna)
												.getCellType() == Cell.CELL_TYPE_FORMULA) ? ""
												+ Fila.getCell(NumColumna)
														.getNumericCellValue()
												: (Fila.getCell(NumColumna)
														.getCellType() == Cell.CELL_TYPE_ERROR) ? Fila
														.getCell(NumColumna)
														.getStringCellValue()
														: "";
			}
		} catch (Exception e) {
			log.error("Error al Leer Celda de Excel XLSX", e);
		}
		return Celda;
	}

	public BigDecimal CeldaNumDobleExcelXLSX(XSSFSheet Hoja, XSSFRow Fila, Integer NumFila, int NumColumna) {
		BigDecimal Celda = null;
		Fila = Hoja.getRow(NumFila);
		try {
			if (Fila != null) {
				if (Fila.getCell(NumColumna) != null) {
					Celda = BigDecimal.valueOf(Fila.getCell(NumColumna).getNumericCellValue());
				}				
			}
		} catch (Exception e) {
			log.error("Error al Leer Celda Decimal de Excel XSLX", e);
		}
		return Celda;
	}
	
	public Integer CeldaNumEnteroExcelXSLX(XSSFSheet Hoja, XSSFRow Fila, Integer NumFila, int NumColumna){
		int Celda = 0;
		Fila = Hoja.getRow(NumFila);
		try {
			if (Fila != null) {
				if (Fila.getCell(NumColumna) != null) {
					Celda = (int) Fila.getCell(NumColumna).getNumericCellValue();
				}
				
			}
		} catch (Exception e) {
			log.error("Error al Leer Celda Numerico de Excel XSLX", e);
		}
		return  Celda;
	}
	
	public String CeldaExcelXLS(HSSFSheet Hoja, Row Fila, Integer NumFila, int NumColumna) {
		String Celda = "";
		Fila = Hoja.getRow(NumFila);
		try {
			if (Fila != null) {
				Celda = Fila.getCell(NumColumna) == null ? ""
						: (Fila.getCell(NumColumna).getCellType() == Cell.CELL_TYPE_STRING) ? Fila
								.getCell(NumColumna).getStringCellValue()
								: (Fila.getCell(NumColumna).getCellType() == Cell.CELL_TYPE_NUMERIC) ? ""
										+ Fila.getCell(NumColumna)
												.getNumericCellValue()
										: (Fila.getCell(NumColumna)
												.getCellType() == Cell.CELL_TYPE_FORMULA) ? ""
												+ Fila.getCell(NumColumna)
														.getNumericCellValue()
												: (Fila.getCell(NumColumna)
														.getCellType() == Cell.CELL_TYPE_ERROR) ? Fila
														.getCell(NumColumna)
														.getStringCellValue()
														: "";
			}
		} catch (Exception e) {
			log.error("Error al Leer Celda de Excel XLS", e);
		}
		return Celda;
	}
	
	public BigDecimal CeldaNumDobleExcelXLS(HSSFSheet Hoja, Row Fila, Integer NumFila, int NumColumna) {
		BigDecimal Celda = null;
		Fila = Hoja.getRow(NumFila);
		try {
			if (Fila != null) {
				if (Fila.getCell(NumColumna) != null) {
					Celda = BigDecimal.valueOf(Fila.getCell(NumColumna).getNumericCellValue());
				}				
			}
		} catch (Exception e) {
			log.error("Error al Leer Celda Decimal de Excel XSL", e);
		}
		return Celda;
	}
	
	public Integer CeldaNumEnteroExcelXSL(HSSFSheet Hoja, Row Fila, Integer NumFila, int NumColumna){
		int Celda = 0;
		Fila = Hoja.getRow(NumFila);
		try {
			if (Fila != null) {
				if (Fila.getCell(NumColumna) != null) {
					Celda = (int) Fila.getCell(NumColumna).getNumericCellValue();
				}				
			}
		} catch (Exception e) {
			log.error("Error al Leer Celda Numerico de Excel XSLX", e);
		}
		return  Celda;
	}
}
