import Component from "@glimmer/component";
import { service } from "@ember/service";
import hideApplicationHeaderButtons from "discourse/helpers/hide-application-header-buttons";

export default class extends Component {
  @service currentUser;
  @service siteSettings;

  get hideSearch() {
    return this.currentUser === null && !this.siteSettings.anonymous_can_search;
  }

  <template>
    {{#if this.hideSearch}}
        {{hideApplicationHeaderButtons "search"}}
    {{/if}}
  </template>
}
