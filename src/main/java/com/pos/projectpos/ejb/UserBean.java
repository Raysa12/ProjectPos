package com.pos.projectpos.ejb;

import com.pos.projectpos.common.UserDto;
import com.pos.projectpos.entities.User;
import com.pos.projectpos.entities.UserGroup;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import jakarta.persistence.*;

import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Stateless
public class UserBean {

    @Inject
    PasswordBean passwordBean;
    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());

    @PersistenceContext
    EntityManager entityManager;

    public List<UserDto> findAllUsers(){
        LOG.info("findAllUsers");
        try{
            TypedQuery<User> typedQuery = entityManager.createQuery("SELECT u FROM User u", User.class);
            List<User> users = typedQuery.getResultList();
            return copyUserToDto(users);
        }
        catch(Exception ex){
            throw new EJBException(ex);
        }
    }

    private List<UserDto> copyUserToDto(List<User> users) {
        List<UserDto> userDto;
        userDto = users
                .stream()
                .map(x -> new UserDto(x.getId(), x.getEmail(), x.getPassword(), x.getUsername(),x.getType())).collect(Collectors.toList());
        return userDto;
    }
    public void createUser(String username, String email, String password,String type, Collection<String> groups) {
        LOG.info("createUser");
        User newUser = new User();
        newUser.setUsername(username);
        newUser.setEmail(email);
        newUser.setType(type);
        newUser.setPassword(passwordBean.convertToSha256(password));
        entityManager.persist(newUser);
        assignGroupsToUser(username, groups);
    }
    private void assignGroupsToUser(String username, Collection<String> groups) {
        LOG.info("assignGroupsToUser");
        for (String group : groups) {
            UserGroup userGroup = new UserGroup();
            userGroup.setUsername(username);
            userGroup.setUserGroup(group);
            entityManager.persist(userGroup);
        }
    }


    public Collection<String> findUsernamesByUserIds(Collection<Long> userIds){
        List<String> usernames =
                entityManager.createQuery("SELECT u.username FROM User u WHERE u.id IN :userIds", String.class)
                        .setParameter("userIds", userIds)
                        .getResultList();
        return usernames;

    }

    public UserDto findUserById(long userID) {
        User user = entityManager.find(User.class, userID);
        UserDto userDto = new UserDto(userID, user.getUsername(), user.getEmail(), user.getPassword(), user.getType());
        return userDto;
    }
    //-----------------------------

}

