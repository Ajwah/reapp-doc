```
    var {
      children,
      title,
      ...props } = this.props;

    return (
      <div {...this.componentProps()} {...props}>
        {this.makeSection('title', title)}
        {this.makeSection('content', children)}
      </div>
    );
  ```