```
  var left = <Title styles={{self: {background: 'green'}}}>
               Left
             </Title>
  var right = <Title styles={{self: {background: 'green'}}}>
                Right
              </Title>
  return (
    <TitleBar
      left={left} right={right}
      styles={{self: {background: 'green', 'paddin-top': '50px'},
               left: {background: 'yellow'}, mid: {background: 'red'},
               right: {background: 'blue'}}}
    >
      Hello World
    </TitleBar>
  );
```