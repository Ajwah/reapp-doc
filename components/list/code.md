Todo: demonstrate usage of type-inset styling.
```
  <List title={<Title>Mail Style Media List</Title>}
    styles={{self: {background: 'red', 'padding-left': '20px'},
             title: {background: 'blue'}}}
    >
    <List.Item
      title="Donny Radcliffe"
      titleAfter="8:45 AM"
      titleSub="New messages from Jane Doe"
      wrapper={<a href="#" />}
      noicon>
      Lorem ipsume dolor sit amet, consectetur adipiscing
      elit. Nulla sagittis tellus ut turpis condimentium,
      ursula major.
    </List.Item>
  </List>
```