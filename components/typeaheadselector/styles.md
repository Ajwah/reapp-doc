```
    var classes = {
      "typeahead-selector": true
    };
    var classList = classNames(classes);

    var results = [];

    this.props.options.forEach(function(result, i) {
      results.push (
        <TypeaheadOption
          {...this.componentProps('typeaheadOption')}
          optionStyles={this.props.optionStyles}
          data-test={result.keys} ref={result} key={result.inputDisplayText}
          hover={this.state.selectionIndex === results.length}
          onMouseDown={this._onMouseDown.bind(this, result)}>
          { result.inListElement }
        </TypeaheadOption>
      );
    }, this);

    // CustomValue should be added to results list with different class name
    if (this.props.customValue !== null) {

      results.push(
        <TypeaheadOption
          {...this.componentProps('typeaheadOption')}
          optionStyles={this.props.optionStyles}
          ref={this.props.customValue} key={this.props.customValue}
          hover={this.state.selectionIndex === results.length}
          customValue={this.props.customValue}
          onMouseDown={this._onMouseDown.bind(this, this.props.customValue)}>
          { this.props.customValue }
        </TypeaheadOption>
      );
    }

    return <TypeaheadList className={classList} styles={this.props.listStyles}>{ results }</TypeaheadList>;
  ```