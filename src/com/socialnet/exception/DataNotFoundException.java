package com.socialnet.exception;

public class DataNotFoundException  extends Exception
{

	public DataNotFoundException(String msg)
	{
		super(msg);
	}

}
public class DataFoundException extends Exception
{
	public DataFoundException(String nonmsg)
	 {
		
		subclass(nonmsg);
	  }
}