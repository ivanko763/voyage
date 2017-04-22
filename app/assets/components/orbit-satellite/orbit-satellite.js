class OrbitSatellite extends Polymer.Element {
  static get is() { return 'orbit-satellite'; }
  static get properties() {
    return {
      satelliteScale: {
        type: String,
        notify: true
      },
      orbitHeight: {
        type: String,
        notify: true
      },
      satellitePosition: {
        type: String,
        notify: true
      }
    };
  }
    
  connectedCallback() {
    super.connectedCallback();
    console.log("orbitHeight:", this.orbitHeight);
    var satellite = this.firstElementChild;
    var orbitH = this.orbitHeight;
    var satelliteS = this.satelliteScale;
    var satelliteP = this.satellitePosition;
    satellite.style.transform = 'translateY(-'+orbitH+'px) scale('+satelliteS+')';
    this.style.transform = 'rotate('+satelliteP+'deg)';
  }
  
}

window.customElements.define(OrbitSatellite.is, OrbitSatellite);
