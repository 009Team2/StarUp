package _01_register.dao.impl;

//import java.sql.Connection;
import java.util.List;

import javax.persistence.Query;
//import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import _01_register.dao.UserDao;
import _01_register.model.UserBean;
import _05_orderProcess.model.OrderBean;

@Repository
public class UserDaoImpl implements UserDao {
//	private DataSource ds = null;
//	private Connection conn = null;
	
	@Autowired
	SessionFactory factory;
	
	public UserDaoImpl() {
//		try {
//			Context ctx = new InitialContext();
//			ds = (DataSource) ctx.lookup(GlobalService.JNDI_DB_NAME);
//			factory = HibernateUtil.getSessionFactory();
//		} catch (Exception ex) {
//			ex.printStackTrace();
//			throw new RuntimeException("UserDaoImpl_Jdbc類別#建構子發生例外: " + ex.getMessage());
//		}
	}
	
	public int saveUser(UserBean mb) {
		int count = 0;
		Session session = factory.getCurrentSession();
//		Transaction tx = null;
//		try {
//			tx = session.beginTransaction();
			session.save(mb);
			count++;
//			tx.commit();
//		} catch (Exception ex) {
//			if(tx != null) tx.rollback();
//			ex.printStackTrace();
//			throw new RuntimeException("UserService類別#saveUser()發生例外: " 
//										+ ex.getMessage());
//		}
		return count;
	}
	// 判斷參數account(會員帳號)是否已經被現有客戶使用，如果是，傳回true，表示此id不能使用，
	// 否則傳回false，表示此id可使用。
	@SuppressWarnings("unchecked")
	public boolean idExists(String account) {
		boolean exist = false;
		String hql = "FROM UserBean WHERE account = :account";
		Session session = factory.getCurrentSession();
//		Transaction tx = null;
//		try {
//			tx = session.beginTransaction();
			List<UserBean> list = session.createQuery(hql)
					.setParameter("account", account)
					.getResultList();
//			if(list.isEmpty()) {
//				exist = false;
//			}else {
//				exist = true;
//			}
			exist = (list.isEmpty()) ? false : true;
//			tx.commit();
//		} catch (Exception ex) {
//			if(tx != null) tx.rollback();
//			ex.printStackTrace();
//			throw new RuntimeException("UserService類別#idExists()發生例外: " 
//					+ ex.getMessage());
//		}
		return exist;
	}
	
	@SuppressWarnings("unchecked")
	public boolean nicknameExists(String nickname) {
		boolean exist = false;
		String hql = "FROM UserBean WHERE nickname = :nickname";
		Session session = factory.getCurrentSession();
//		Transaction tx = null;
//		try {
//			tx = session.beginTransaction();
			List<UserBean> list = session.createQuery(hql)
					.setParameter("nickname", nickname)
					.getResultList();
//			if(list.isEmpty()) {
//				exist = false;
//			}else {
//				exist = true;
//			}
			exist = (list.isEmpty()) ? false : true;
//			tx.commit();
//		} catch (Exception ex) {
//			if(tx != null) tx.rollback();
//			ex.printStackTrace();
//			throw new RuntimeException("UserService類別#idExists()發生例外: " 
//					+ ex.getMessage());
//		}
		return exist;
	}
	
	// 檢查使用者在登入時輸入的帳號與密碼是否正確。如果正確，傳回該帳號所對應的MemberBean物件，
	// 否則傳回 null。
	@SuppressWarnings({ "unchecked", "unused" })
	public List<UserBean> checkLogin(String account,String password) {
		int i = 0;
		Session session = factory.getCurrentSession();
//		Transaction tx = null;
		List<UserBean> list = null;
		String hql = "From UserBean u WHERE u.account = :account and u.password = :password";
//		try {
//			tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			query.setParameter("account", account);
			query.setParameter("password", password);
			list = query.getResultList();
//			if(list.size() > 0) {
//				i=1;
//			}else {
//				i=0;
//			}
			i++;
//			} catch(Exception ex) {
//			ex.printStackTrace();
//			throw new RuntimeException("UserService類別#checkAccountPassword()發生SQL例外: " 
//					+ ex.getMessage());
//		}
		return list ;
	}
	// 檢查使用者在登入時輸入的帳號與密碼是否正確。如果正確，傳回該帳號所對應的MemberBean物件，
		// 否則傳回 null。
		
		@SuppressWarnings("unchecked")
		@Override
		public UserBean checkIDPassword(String account, String password) {
			UserBean mb = null;
			String hql = "FROM UserBean m WHERE m.account = :account and m.password = :pswd";
			
			Session session = factory.getCurrentSession();
			List<UserBean>list = session.createQuery(hql)
					.setParameter("account", account)
					.setParameter("pswd", password)
					.getResultList();
			mb = (list.isEmpty() ? null : list.get(0));
//			try (
//				Connection con = ds.getConnection(); 
//				PreparedStatement ps = con.prepareStatement(sql);
//			) {
//				ps.setString(1, account);
//				ps.setString(2, password);
//				try (ResultSet rs = ps.executeQuery();) {
//					if (rs.next()) {
//						mb = new UserBean();
//						mb.setUser_id(rs.getInt("user_id"));
//						mb.setAccount(rs.getString("account"));
//						mb.setPassword(rs.getString("password"));
//						mb.setName(rs.getString("name"));
//						mb.setNickname(rs.getString("nickname"));
//						mb.setGender(rs.getString("gender"));
//						mb.setBirthday(rs.getDate("birthday"));
//						mb.setAddress(rs.getString("address"));
//						mb.setPhoto(rs.getBlob("photo"));
//						mb.setIntroduction(rs.getClob("introduction"));
//						mb.setRegTime(rs.getTimestamp("regTime"));
//						mb.setUnpaid_amount(rs.getLong("unpaid_amount"));
//					}
//				}
//			} catch (SQLException ex) {
//				ex.printStackTrace();
//				throw new RuntimeException("UserDaoImpl_Jdbc類別#checkIDPassword()發生SQL例外: " 
//						+ ex.getMessage());
//			}
			return mb;
		}

		@Override
		public List<UserBean> getAllUsers() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public int deleteUser(int pk) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int updateUser(UserBean ub) {
			// TODO Auto-generated method stub
			return 0;
		}

		@SuppressWarnings("unchecked")
		@Override
		public UserBean getUser(int pk) {
			System.out.println("pk ="+ pk);
			UserBean ub = null;
			String hql = "SELECT photo FROM UserBean u WHERE u.user_id = :uid ";
			Session session = factory.getCurrentSession();
//			Transaction tx = null;
//			try {
//				tx = session.beginTransaction();
				List<UserBean> list = session.createQuery(hql)
						.setParameter("uid", pk)
						.getResultList();
				System.out.println(list);
				ub = (list.isEmpty()) ? null : list.get(0);
//			} catch (Exception e) {
//				e.printStackTrace();
//				tx.rollback();
//			}
//			System.out.println("ub = "+ub);
			return ub;
		}
		@Override
		public void updateUnpaidOrderAmount(OrderBean ob) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public UserBean queryUser(String id) {
			// TODO Auto-generated method stub
			return null;
		}
}
