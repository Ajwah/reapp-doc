```
    var { label, labelProps, ...props } = this.props;

    var textarea = (
      <textarea {...props} {...this.componentProps()} />
    );

    if (!label)
      return textarea;

    return (
      <Label title={label} {...labelProps}>
        {textarea}
      </Label>
    );
  ```