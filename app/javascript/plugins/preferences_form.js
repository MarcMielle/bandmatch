const initPreferencesForm = () => {
  const instrumentLabels = document.querySelectorAll(".intruments-checkbox label");

  instrumentLabels.forEach((label) => {
    label.addEventListener('click', (e) => {
      instrumentLabels.forEach((otherLabel) => {
        otherLabel.classList.remove('active');
      });

      label.classList.add('active');
    });
  });
};

export { initPreferencesForm };

