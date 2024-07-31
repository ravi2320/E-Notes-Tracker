package com.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.hibernate.query.Query;

import com.springmvc.entity.Notes;
import com.springmvc.entity.User;

@Transactional
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    public int saveUser(User user) {
        int id = (Integer) hibernateTemplate.save(user);
        return id;
    }

    public User login(String email, String password) {
        String hql = "from User where email = :em and password = :pwd";
        return hibernateTemplate.execute(session -> {
            Query<User> query = session.createQuery(hql, User.class);
            query.setParameter("em", email);
            query.setParameter("pwd", password);
            return query.uniqueResult();
        });
    }

	@Override
	public int saveNotes(Notes notes) {
		int i = (Integer)hibernateTemplate.save(notes);
		return i;
	}

	@Override
	public List<Notes> getNotesByUser(User user) {
		
		String sql = "from Notes where user =: us";
		
		List<Notes> list = hibernateTemplate.execute(s->{
			Query q = s.createQuery(sql);
			q.setEntity("us", user);
			return q.getResultList();
		});
		return list;
	}

	@Override
	public Notes getNotesById(int notesId) {
		return hibernateTemplate.get(Notes.class, notesId);
	}

	@Override
	public void deleteNotes(int notesId) {
		Notes n = hibernateTemplate.get(Notes.class, notesId);
		hibernateTemplate.delete(n);
	}
	
	@Override
	public void editNotes(Notes n) {
		hibernateTemplate.update(n);
	}
}
