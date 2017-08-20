import * as React from 'react';
import * as $ from 'jquery';

export class Logout extends React.Component {
  onClick() {
    $.ajax({
      type: 'DELETE',
      url: '/users/sign_out',
      success: (data) => {
        debugger
      },
      error: (data) => {
        debugger
      }
    }).always(() => {
      debugger;
    });
  }

  render() {
    return (
      <button onClick={this.onClick}>Log out</button>
    );
  }
}