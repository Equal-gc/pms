package pms.common.response;


public class ResponseBean<T> {

	// 代码
	private String code = ResponseCode.SUCCESS;

	// 描述
	private String message = ResponseMessage.OPER_SUCCESS;

	// 消息数据
	private T data;


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public void setAllData( String code,String message,T data){
		this.code=code;
		this.message=message;
		this.data=data;
	}
}
