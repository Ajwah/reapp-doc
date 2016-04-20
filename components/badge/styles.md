```
    var { children, ...props } = this.props;

    return (
      <div {...this.componentProps()} {...props}>
        <span {...this.componentProps('text')}>
          {children}
        </span>
      </div>
    );
  ```