package _01_register.service.impl;

import _01_register.dao.UserDao;
import _01_register.dao.impl.UserHibernateDaoImpl;
import _01_register.model.UserBean;
import _01_register.service.UserService;
import _05_orderProcess.model.OrderBean;

public class UserServiceImpl implements UserService {
	UserDao  dao ;
	public UserServiceImpl() {
		this.dao = new UserHibernateDaoImpl();
	}

	@Override
	public int saveUser(UserBean ub) {
		return dao.saveUser(ub);
	}

	@Override
	public boolean idExists(String id) {
		return dao.idExists(id);
	}

	@Override
	public UserBean queryUser(String id) {
		return dao.queryUser(id);
	}

	@Override
	public void updateUnpaidOrderAmount(OrderBean ob) {
		dao.updateUnpaidOrderAmount(ob);
	}

	@Override
	public UserBean getUser(int nId) {
		return dao.getUser(nId);
	}

	

	@Override
	public boolean nicknameExists(String nickname) {
		return dao.nicknameExists(nickname);
	}

}
