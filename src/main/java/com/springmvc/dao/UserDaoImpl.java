package com.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.query.Query;
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
}
