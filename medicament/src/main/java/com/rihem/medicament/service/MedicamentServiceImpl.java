package com.rihem.medicament.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.rihem.medicament.entities.TypeMedicament;
import com.rihem.medicament.entities.Medicament;
import com.rihem.medicament.repos.MedicamentRepository;

@Service
public class MedicamentServiceImpl implements MedicamentService {

	@Autowired
	MedicamentRepository medicamentRepository;
	@Override
	public Medicament saveMedicament(Medicament m) {
		// TODO Auto-generated method stub
		return medicamentRepository.save(m);
	}

	@Override
	public Medicament updateMedicament(Medicament m) {
		// TODO Auto-generated method stub
		return medicamentRepository.save(m);
	}

	@Override
	public void deleteMedicament(Medicament m) {
		// TODO Auto-generated method stub
		medicamentRepository.delete(m);
	}

	@Override
	public void deleteMedicamentById(Long id) {
		// TODO Auto-generated method stub
		medicamentRepository.deleteById(id);
		
	}

	@Override
	public Medicament getMedicament(Long id) {
		// TODO Auto-generated method stub
		return medicamentRepository.findById(id).get();
	}

	@Override
	public List<Medicament> getAllMedicaments() {
		// TODO Auto-generated method stub
		return medicamentRepository.findAll();
	}
	@Override
	public Page<Medicament> getAllMedicamentsParPage(int page, int size) {
	      return medicamentRepository.findAll(PageRequest.of(page, size));
	}

	@Override
	public List<Medicament> findByNomMedicament(String nom) {
		return medicamentRepository.findByNomMedicament(nom);
	}

	@Override
	public List<Medicament> findByNomMedicamentContains(String nom) {
		return medicamentRepository.findByNomMedicamentContains(nom);
	}

	@Override
	public List<Medicament> findByNomPrix(String nom, Double prix) {
		return medicamentRepository.findByNomPrix(nom, prix);
	}

	@Override
	public List<Medicament> findByTypeMedicament(TypeMedicament typemedicament) {
		return medicamentRepository.findByTypeMedicament(typemedicament);
	}

	@Override
	public List<Medicament> findByTypeMedicamentIdType(Long id) {
		return medicamentRepository.findByTypeMedicamentIdType(id);
	}

	@Override
	public List<Medicament> findByOrderByNomMedicamentAsc() {
		return medicamentRepository.findByOrderByNomMedicamentAsc();
	}

	@Override
	public List<Medicament> trierMedicamentsNomsPrix() {
		return medicamentRepository.trierMedicamentsNomsPrix();
	}

}
