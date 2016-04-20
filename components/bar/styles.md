```
    var {
      display,
      children,
      barItemProps,
      activeIndex,
      position,
      wrap,
      ...props } = this.props;

    if (position)
      this.addStyles(`position-${position}`);

    return (
      <div {...this.componentProps()} {...props}>
        {React.Children.map(children, (child, i) => {
          var childProps = {
            display,
            active: i === activeIndex,
            key: i
          };

          if (wrap)
            return (
              <BarItem {...barItemProps} {...childProps}>
                {child}
              </BarItem>
            );

          return clone(child, childProps, true);
        })}
      </div>
    );
  ```