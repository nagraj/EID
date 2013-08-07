package net.sigmainfo.eid

import org.springframework.aop.TrueClassFilter;

class User {

	static hasMany = [userInfo: UserInfo]
	int id;
	String email
	String password
	String firstName
	String middleName
	String lastName
	String role
	Date dateCreated 
	Date lastUpdated 
	
    static constraints = {
		id nullable:false 
		email email:true 
		password blank:false
		firstName nullable:false
		middleName nullable:true 
		lastName nullable:false 
		role nullable:false		
		userInfo nullable:true
    }
}
