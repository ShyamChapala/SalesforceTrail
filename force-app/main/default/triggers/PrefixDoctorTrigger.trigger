trigger PrefixDoctorTrigger on Lead (before insert, before update) {
	
    for(Lead l:trigger.new)
	{
		l.FirstName ='Dr' + l.FirstName;
	}
}