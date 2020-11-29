package com.rihem.medicament.entities;

import javax.persistence.Entity;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.istack.NotNull;

import java.util.Date;

import javax.persistence.*;

@Entity
public class Medicament {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idMedicament;
	@NotNull
	@Size (min = 4,max = 15)
	private String nomMedicament;
	@Min(value = (long) 10.0)
	@Max(value = (long) 10000.0)
	private Double prixMedicament;
	@Min(value = 10)
	@Max(value = 10000)
	private int qteMedicament;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@PastOrPresent
	private Date dateCreation;
		@ManyToOne
		private TypeMedicament typeMedicament;
	
	public Medicament() {
		super();
	}
	public Medicament(String nomMedicament, Double prixMedicament, int qteMedicament, Date dateCreation) {
		super();
		this.nomMedicament= nomMedicament;
		this.prixMedicament= prixMedicament;
		this.qteMedicament= qteMedicament;
		this.dateCreation= dateCreation;
	}
	public Long getIdMedicament() {
		return idMedicament;
	}
	public void setIdMedicament(Long idMedicament) {
		this.idMedicament = idMedicament;
	}
	public String getNomMedicament() {
		return nomMedicament;
	}
	public void setNomMedicament(String nomMedicament) {
		this.nomMedicament = nomMedicament;
	}
	public Double getPrixMedicament() {
		return prixMedicament;
	}
	public void setPrixMedicament(Double prixMedicament) {
		this.prixMedicament = prixMedicament;
	}
	public int getQteMedicament() {
		return qteMedicament;
	}
	public void setQteMedicament(int qteMedicament) {
		this.qteMedicament = qteMedicament;
	}
	public Date getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	@Override
	public String toString() {
		return "Medicament [idMedicament=" + idMedicament + ", nomMedicament=" + nomMedicament + ", prixMedicament="
				+ prixMedicament + ", qteMedicament=" + qteMedicament + ", dateCreation=" + dateCreation + "Type de medicament" +
				typeMedicament+"]";
	}
	public TypeMedicament getTypeMedicament() {
		return typeMedicament;
	}
	public void setTypeMedicament(TypeMedicament typeMedicament) {
		this.typeMedicament = typeMedicament;
	}

}
