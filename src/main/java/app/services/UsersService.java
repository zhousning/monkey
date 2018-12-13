package app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.daos.UserMapper;
import app.models.User;
import app.models.UserExample;
import app.models.UserExample.Criteria;

@Service
public class UsersService {
	
	@Autowired
	UserMapper userMapper;

	public User getUserById(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}
	
	public User getUserByEmail(String email) {
		return userMapper.selectByEmail(email);
	}

	public List<User> getUsers() {
		return userMapper.selectByExample(null);
	}

	public Integer createUser(User user) {
		return userMapper.insert(user);
	}

	public Integer updateUser(User user) {
		return userMapper.updateByPrimaryKey(user);
	}

	public void deleteById(Integer id) {
		userMapper.deleteByPrimaryKey(id);
	}

	public User insert(User user) {
		userMapper.insert(user);
		return user;
	}

}
