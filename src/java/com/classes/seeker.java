
package com.classes;


public class seeker {
    private String seekerID;
    private String firstName;
    private String lastName;
    private String userName;
    private String Phone;
    private String Address;
    private String email;
    private String about ;
    private String profilePath;
    private String cv;

    public seeker(String seekerID, String firstName, String lastName, String userName, String Phone, String Address, String email, String about) {
        this.seekerID = seekerID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.Phone = Phone;
        this.Address = Address;
        this.email = email;
        this.about = about;
    }
    public String useSeekerID(){
        return seekerID;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getUserName() {
        return userName;
    }

    public String getPhone() {
        return Phone;
    }

    public String getAddress() {
        return Address;
    }

    public String getEmail() {
        return email;
    }

    public String getAbout() {
        return about;
    }

    public String getProfilePath() {
        return profilePath;
    }

    public void setProfilePath(String profilePath) {
        this.profilePath = profilePath;
    }

    public void setSeekerID(String seekerID) {
        this.seekerID = seekerID;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getCv() {
        return cv;
    }

    public void setCv(String cv) {
        this.cv = cv;
    }
    
    
    
}
