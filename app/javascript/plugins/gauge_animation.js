const initGaugeAnimation = () => {
  const gaugeContainers = document.querySelectorAll('.affinity-container');
  gaugeContainers.forEach(gaugeContainer => {

    var firstGauge = gaugeContainer.querySelector('.progress');
    var firstTarget = parseInt(firstGauge.getAttribute('data-target'));
    var firstGaugeReadout = gaugeContainer.querySelector('.percentage > .value');

    //variables
    var gaugeR = parseInt(gaugeContainer.querySelectorAll('circle')[0].getAttribute('r'));
    var gaugeC = gaugeR * Math.PI * 2;
    var animationDuration = 1.5;

    //init svg circfirstGaugeReadoutles
    var circles = gaugeContainer.querySelectorAll('circle');
    var gauges = gaugeContainer.querySelectorAll('.progress');
    TweenMax.set(circles, {
      strokeDashoffset: gaugeC
    });

    TweenMax.set(gauges, {
      attr: {
        'stroke-dasharray': gaugeC + ' ' + gaugeC
      }
    });

    //calculate the offset
    function calculateOffset(t, c) {

      var target = c - (c * t) / 100;
      return target;

    }

    //timeline
    var tl = new TimelineMax();

    //first gauge animation
    tl.to(firstGauge, animationDuration, {

      strokeDashoffset: calculateOffset(firstTarget, gaugeC),
      ease: Bounce.easeOut,
      onUpdate: function() {

        var currentStrokeOffset = parseInt(firstGauge.style.strokeDashoffset);
        firstGaugeReadout.textContent = Math.round(100 - (currentStrokeOffset * 100) / gaugeC);

      }
    });
  });

};

export { initGaugeAnimation };
