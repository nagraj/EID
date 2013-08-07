import net.sigmainfo.eid.User
import net.sigmainfo.eid.UserInfo


class BootStrap {

	 
	
    def init = { servletContext ->
		
		def user1 = null
		if (!User.count()) {
				user1	=	new User(email:"nagraj.rao@sigmainfo.net", 
				password: "test", 
				firstName: "nagraj", 
				middleName: "r", lastName:"rao", role:"test")
				
			
				if(!UserInfo.count() && user1.save(failOnError: true, flush: true)){
					new UserInfo(addr1: "a1", addr2: "a2",
						city: "bangalore", state: "KA", country: "IN",
						fax: "123456", mobile: "9887654321", phone: "34534534",
						pin: "23232", secondaryEmail: "n@n.com",
						user: user1
						).save(failOnError: true)
				}
		}
		
		
		
    }
	
    def destroy = {
    }
}
