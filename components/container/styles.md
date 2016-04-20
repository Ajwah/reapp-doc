```
    var {
      children,
      pad,
      col,
      wrap,
      ...props } = this.props;

    if (col)
      this.addStyles('col');

    return (
      <div {...this.componentProps()} {...props}>
        {React.Children.map(children, (child, index) => {
          var childProps = {
            pad, index,
            key: index,
            total: children.length
          };

          return wrap ?
            <Block {...childProps}>{child}</Block> :
            clone(child, childProps);
        })}
      </div>
    );
  ```