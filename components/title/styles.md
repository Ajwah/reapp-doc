```
    var { children, ...props } = this.props;

    return (
      <h3 {...this.componentProps()} {...props}>
        {children}
      </h3>
    );
  ```