package com.rihem.medicament.entities;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class TypeMedicament {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idType;
	private String nomType;
	private String descriptionType;
	
	@JsonIgnore
	@OneToMany(mappedBy = "typeMedicament")
	private List<Medicament> medicaments;
	
	

}
