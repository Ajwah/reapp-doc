```
    var {
      children,
      itemProps,
      title,
      type,
      wrap,
      nopad,
      ...props } = this.props;

    return (
      <div {...this.componentProps()} {...props}>
        {title && (
          <Title styles={this.getStyles('title')}>{title}</Title>
        )}
        {React.Children.map(children, (li, i) => {
          if (wrap)
            return (
              <ListItem {...itemProps}
                index={i}
                key={i}
                nopad={nopad}>
                {li.content || li}
              </ListItem>
            );

          return clone(li, { key: i, index: i, nopad });
        })}
      </div>
    );
  ```