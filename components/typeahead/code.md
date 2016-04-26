TODO: Code dependency not working
```
  var opts = [
    {inputDisplayText: '1111'},
    {inputDisplayText: '2222'},
    {inputDisplayText: '3333'},
    {inputDisplayText: '4444'},
    {inputDisplayText: '5555'}
  ];
  return (
    <Typeahead inputStyles={{input: {background: 'yellow'}}}
               name="Typeahead"
               defaultValue="default selection you can modify"
               placeholder="Type Something..."
               disabled={false}
               options={opts}
               styles={{self: {background: 'green', 'padding-top': '50px'}}}
    />
  );
```