import * as React from 'react';
import { Logout } from 'rise/ui/Logout'
import * as $ from 'jquery';

export class App extends React.Component {
  render() {
    return (
      <Logout onClick={() => {
          console.log('clicked it')
          $.ajax({
            type: 'DELETE',
            url: '/users/sign_out',
            success: (data) => {
                
            },
            error: (data) => {
                
            }
          });
        }} />
    );
  }
}