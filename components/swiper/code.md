```
  var child =
    <SVG file={require('../../node_modules/reapp-ui/assets/icons/add.svg')}
         color='red'
         styles={{self: {width: '10px'}}}
    />
  return (
    <Swiper below={child}
      styles={{self: {width: '100px', height: '100px', background: 'green'},
               below: {'background-color': 'rgba(0, 0, 0, 0.5)'}}}
    />
  );
```