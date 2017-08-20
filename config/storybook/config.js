import { configure } from "@storybook/react";

const req = require.context("../../app/javascript", true, /.*\.stories.jsx$/);

function loadStories() {
  req.keys().forEach(filename => req(filename));
}

configure(loadStories, module);
