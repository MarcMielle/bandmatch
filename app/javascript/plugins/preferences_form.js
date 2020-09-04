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

  const styleLabels = document.querySelectorAll(".style-checkbox label");

  styleLabels.forEach((label) => {
    label.addEventListener('click', (e) => {



      label.classList.toggle('active');
    });
  });
};

export { initPreferencesForm };
