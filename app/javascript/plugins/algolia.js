const Algo = () => {
    (function() {
        var placesAutocomplete = places({
          appId: plIYKW1GWZKS,
          apiKey: cdaba87f9a765ec84160887408192c69,
          container: document.querySelector('#input-styling-address input'),
          style: false,
          debug: true
        });
    })();
}

export { Algo };