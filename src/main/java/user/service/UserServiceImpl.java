package user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.UserImageDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void upload(List<UserImageDTO> userImageList) {
		userDAO.upload(userImageList);
		
	}
	@Override
	public List<UserImageDTO> getUploadList() {
		// TODO Auto-generated method stub
		return userDAO.getUploadList();
	}
}
