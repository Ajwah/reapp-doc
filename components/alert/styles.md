```
    var { children, ...props } = this.props;

    return (
      <div {...props} {...this.componentProps()}>
        {children}
      </div>
    );
  ```