package ch01.model;

import java.util.List;

import ch01.dao.MemberDao;
import ch01.dao.impl.MemberJDBCDaoImpl;

public class MemberService {

	public boolean isDup(String id) {
		MemberDao dao = new MemberJDBCDaoImpl();
		return dao.isDup(id);
	}

	public int save(MemberBean mb) {
		MemberDao dao = new MemberJDBCDaoImpl();
		return dao.save(mb);
	}

	public List<MemberBean> getAllMembers() {
		MemberDao dao = new MemberJDBCDaoImpl();
		return dao.getAllMembers();
	}

	public MemberBean getMember(int pk) {
		MemberDao dao = new MemberJDBCDaoImpl();
		return dao.getMember(pk);
	}

	public int deleteMember(int ipk) {
		MemberDao dao = new MemberJDBCDaoImpl();
		return dao.deleteMember(ipk);
	}

	public int updateMember(MemberBean mb) {
		MemberDao dao = new MemberJDBCDaoImpl();
		return dao.updateMember(mb);
	}

}
