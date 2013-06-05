package springapp.service;

import springapp.domain.File;

public interface FileService {
	public File getById(Long id);
	public void save(File file);
}
