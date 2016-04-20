```
    var {
      confirm,
      ...props } = this.props;

    if (confirm)
      this.addStyles('confirm');

  	var testStyle = {
  	  background: '#FF0000',
  	}

    return <Button chromeless {...this.componentProps()} {...props} />;
  ```