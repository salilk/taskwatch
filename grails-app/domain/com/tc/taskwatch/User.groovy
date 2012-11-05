package com.tc.taskwatch

class User {

    transient springSecurityService

    String username
    String email
    String firstName
    String lastName
    Long mobileNumber
    String password
    boolean enabled = true
    boolean accountExpired = false
    boolean accountLocked = false
    boolean passwordExpired = false

    static constraints = {
        firstName nullable: true
        lastName nullable: true
        email blank: false, unique: true, email: true
        mobileNumber nullable: true, unique: true
        username blank: false, unique: true
        password blank: false
    }

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }
}
