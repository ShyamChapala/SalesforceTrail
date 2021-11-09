trigger ContactMailUpdate on Contact (before insert,before update) {

    for (Contact con:trigger.new){
        con.Email = 'hello@12345.com';
    }

}