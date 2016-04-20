```
    var {
      confirm,
      ...props } = this.props;

    if (confirm)
      this.addStyles('confirm');

    return <Button {...this.componentProps()} {...props} />;
  ```