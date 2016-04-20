```
    var { width, pad, row, children, ...props } = this.props;

    if (pad)
      this.addStyles('pad');

    if (row)
      this.addStyles('row');

    this.addStyles(this.getWidthStyle(width));

    return (
      <div {...this.componentProps()} {...props}>
        {children}
      </div>
    );
  ```