package net.sigmainfo.eid

class UserInfo {

	static belongsTo = [user: User]
	
	int id
	String addr1
	String addr2
	String city
	String state
	String country
	String pin
	String phone
	String mobile
	String fax
	String secondaryEmail
	Date dateCreated
	Date lastUpdated
	
	
    static constraints = {
		id blank:false
		addr1 blank:false
		city blank:false
		state blank:false, display:true 
		country blank:false, display:true
		user unique:true
    }
}
