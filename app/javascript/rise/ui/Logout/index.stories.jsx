import { storiesOf } from "@storybook/react";
import * as React from "react";
import { Logout } from "./";
import { action } from '@storybook/addon-actions';

storiesOf("App/Logout", module).add("default", () =>
  <div>
    <Logout onClick={action('hello')} />
  </div>
);
