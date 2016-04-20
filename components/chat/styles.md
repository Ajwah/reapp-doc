```
    var {
      children,
      itemProps,
      wrap,
      ...props } = this.props;

    return (
      <div {...this.componentProps()} {...props}>
        {React.Children.map(children, (li, i) => {
          if (wrap)
            return (
              <ChatItem {...itemProps}
                index={i}
                key={i}>
                {li.content || li}
              </ChatItem>
            );

          return clone(li, { key: i, index: i });
        })}
      </div>
    );
  ```