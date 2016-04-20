```
    var { width, height, images, onClose, closeIconProps, ...props } = this.props;

    var close = onClose && (
      <Button chromeless onTap={this.handleClose} {...this.componentProps('close')}>
        <Icon
          color="#fff"
          file={require('../assets/icons/x.svg')}
          size={20}
          stroke={2}
          {...closeIconProps}
        />
      </Button>
    );

    var images = images.map((url, i) => {
      if (this.state.left < (i - 1) * width ||
          this.state.left > (i + 1) * width)
        return null;

      // Find highest resolution image
      return (
        <GalleryCard
          left={this.state.left}
          key={i}
          index={i}
          url={url}
          width={width}
          height={height}
        />
      );
    });

    this.addStyles({
      width: width,
      height: height
    });

    return (
      <div {...props} {...this.componentProps()}>
        {close}
        <TouchableArea scroller={this.scroller}>
          {images}
        </TouchableArea>
      </div>
    );
  ```