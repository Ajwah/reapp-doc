```
  	return this.props.inputs.map((item, index) => {
  	  var inputName = this.props.namePrefix + index;
  	  var inputType = "text";
  	  var inputDefaultValue = "";
  	  var inputDisabled = false;
  	  var inputPlaceholder = "";
  	  var inputLabel = false;
  	  if (!!item.type) {
  	  	inputType = item.type;
  	  }
  	  if (!!item.defaultValue) {
  	  	inputDefaultValue = item.defaultValue;
  	  }
      if (!this.props.disabled) {
    	  if (!!item.disabled) {
    	  	inputDisabled = true;
    	  }
      } else {
        inputDisabled = true;
      }
  	  if (!!item.placeholder) {
  	  	inputPlaceholder = item.placeholder;
  	  }
  	  if (!!item.label) {
  	  	inputLabel = item.label;
  	  }
      return (
        <Form.Input ref={inputName}
          key={index} 
          type={inputType} 
      	  name={inputName} 
      	  defaultValue={inputDefaultValue} 
      	  disabled={inputDisabled} 
          styles={this.props.inputStyles}
          onBlur={this.props.handleInputBlur.bind(null,this)} 
      	  placeholder={inputPlaceholder} 
      	  label={inputLabel} />
      );
    });
  ```