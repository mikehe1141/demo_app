import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['fields', 'fieldsContainer', 'template'];
  static values = {
    currentIndex: Number,
  }

  addFields(event) {
    event.preventDefault();

    const newIndex = this.currentIndexValue + 1;
    const newFields = this.templateTarget.innerHTML.replace(/NEW_FORM/g, newIndex);

    this.currentIndexValue = newIndex;
    this.fieldsContainerTarget.insertAdjacentHTML('beforeend', newFields);
  }

  removeFields(event) {
    event.preventDefault();

    const row = event.target.closest('[data-dynamic-form-target="fields"]');

    if (this.fieldsTargets.length < 2) {
      this.clearFieldValues(row);
    } else {
      row.remove();
    }
  }

  clearFieldValues(row) {
    const inputFields = row.querySelectorAll('input');

    inputFields.forEach((inputField) => {
      if (inputField.type === 'text' || inputField.type === 'number') {
        inputField.value = null;
      } else if (inputField.type === 'radio') {
        inputField.checked = false;
      }
    });
  }
}
