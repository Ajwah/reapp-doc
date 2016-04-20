```
    var { title, children, ...props } = this.props;

    return (
      <label {...this.componentProps()} {...props}>
        {title && (
          <span {...this.componentProps('title')}>
            {title}
          </span>
        )}
        {children}
      </label>
    );
  ```