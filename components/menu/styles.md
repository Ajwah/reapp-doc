```
    var itemProps = {
      noicon: true,
      styles: {
        self: { border: 'none' },
        children: { color: '#fff' }
      }
    };

    return (
      <List {...this.componentProps()} itemProps={itemProps} {...this.props}>
        {this.props.children}
      </List>
    );
  ```