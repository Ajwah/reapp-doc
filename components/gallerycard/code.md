```
  function imageRequire(name) {
    return require('../../assets/photos/' + name + '.jpg');
  }

  render() {
    var Images = ['sunrise'].map(imageRequire);
    return (
      <Gallery images={Images} width={'100px'} heigth={'110px'}>
      </Gallery>
    );
  }
```