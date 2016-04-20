```
    return (
      <TypeaheadButton {...this.componentProps('typeaheadButton')} styles={this.props.optionStyles} onMouseDown={this._onMouseDown}>
        { this.props.children }
      </TypeaheadButton>
    );
  ```