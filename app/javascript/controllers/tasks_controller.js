import ApplicationController from './application_controller'
import Sortable from 'sortablejs'

/* This is the custom StimulusReflex controller for the Tasks Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  connect() {
    super.connect()
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      group: 'shared',
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    this.stimulate("Tasks#sort", event.item.dataset.taskId, event.newIndex + 1, event.to.dataset.status)
  }
}
