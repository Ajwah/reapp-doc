```
  <!-- Not working -->
  render() {
    var image = require('../../assets/photos/sunrise.jpg');
    return (
      <Drawer
        from={'left'}
        open={false}
        dragger={false}>
        <View plain>
          <p>drawer</p>
          <Button onTap={this.toggleDrawer.bind(this, 'left')}>Close me</Button>
          <br />
          <img src={image} />
        </View>
      </Drawer>
    );
```