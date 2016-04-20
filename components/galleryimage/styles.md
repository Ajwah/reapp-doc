```
    var { url, height, ...props } = this.props;

    this.addStyles({
      backgroundImage: `url(${url})`,
      height,
    });

    return (
      <div {...this.componentProps()} {...props}>
        <div {...this.componentProps('img')}></div>
      </div>
    );
  ```