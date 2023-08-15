
package com.classes;


public class Admin {
    
    private String adminID;
    private String adFirstname;
    private String adLastname;
    private String adPhone;
    private String adAddress;
    private String adUsername;
    private String adEmail;
    private String adPassword;
    private String adPicture;

    public Admin(String adminID, String adFirstname, String adLastname, String adPhone, String adAddress, String adUsername, String adEmail, String adPicture) {
        this.adminID = adminID;
        this.adFirstname = adFirstname;
        this.adLastname = adLastname;
        this.adPhone = adPhone;
        this.adAddress = adAddress;
        this.adUsername = adUsername;
        this.adEmail = adEmail;
        this.adPicture = adPicture;
    }

    public String getAdminID() {
        return adminID;
    }

    public String getAdFirstname() {
        return adFirstname;
    }

    public String getAdLastname() {
        return adLastname;
    }

    public String getAdPhone() {
        return adPhone;
    }

    public String getAdAddress() {
        return adAddress;
    }

    public String getAdUsername() {
        return adUsername;
    }

    public String getAdEmail() {
        return adEmail;
    }

    public String getAdPassword() {
        return adPassword;
    }

    public String getAdPicture() {
        return adPicture;
    }
    
    
}
