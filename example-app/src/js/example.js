import { DeviceCornerRadius } from 'device-corner-radius';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    DeviceCornerRadius.echo({ value: inputValue })
}
