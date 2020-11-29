package com.rihem.medicament.restcontrollers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rihem.medicament.entities.Medicament;
import com.rihem.medicament.service.MedicamentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@RestController
@RequestMapping("/api")
@CrossOrigin
public class MedicamentRESTController {
	@Autowired
	MedicamentService medicamentService;
	
	@RequestMapping(method = RequestMethod.GET)
	public List<Medicament> getAllMedicaments(){
		
		return medicamentService.getAllMedicaments();
		
	}
	@RequestMapping(value="/{id}",method = RequestMethod.GET)
	public Medicament getMedicamentById(@PathVariable("id") Long id) {
		return medicamentService.getMedicament(id);
	}
	@RequestMapping(method = RequestMethod.POST)
	public Medicament createMedicament(@RequestBody Medicament medicament) {
		return medicamentService.saveMedicament(medicament);
	}
	@RequestMapping(method = RequestMethod.PUT)
	public Medicament updateMedicament(@RequestBody Medicament medicament) {
		return medicamentService.updateMedicament(medicament);
	}
	@RequestMapping(value="/{id}", method = RequestMethod.DELETE)
	public void deleteMedicament(@PathVariable("id") Long id) {
		
		medicamentService.deleteMedicamentById(id);
	}
	@RequestMapping(value="/medicaType/{idType}", method = RequestMethod.GET)
	public List<Medicament> getMedicamentByTypId(@PathVariable("idType") Long idType){
		return medicamentService.findByTypeMedicamentIdType(idType);
	}

}
