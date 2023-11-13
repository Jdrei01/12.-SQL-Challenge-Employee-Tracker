const connection = require('./connection')

// class structure
class DB {
    constructor(connections) {
        this.connection = connections;
    } 
    findAllDepartments() {
        return this.connection.promise().query("")
    }
    findAllRoles() {
        return this.connection.promise().query("")
    }
    findAllEmployees() {
        return this.connection.promise().query("")
    }
    createDepartment(department) {
        return this.connection.promise().query("", department)
    }
    createRole(role) {
        return this.connection.promise().query("", role) 
    }
    createEmployee(employee) {
        return this.connection.promise().query("", employee)
    }
}

module.exports = new DB(connection);