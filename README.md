

## Description

[react-native](https://github.com/facebook/react-native) module for [ESP8266 ESPTOUCH Smart config](https://github.com/EspressifApp)

## Featues
* Support both IOS and Android
* React Native Promise support
* Fast way to do configure wifi network for IOT device

## Getting started
### Mostly automatic install
1. `npm install react-native-smartconfig-dm@latest --save`

####For iOS: 
1. cd ios
2. pod install


## Usage

```javascript
import Smartconfig from 'react-native-smartconfig-dm';

Smartconfig.start({
  type: 'esptouch', //or airkiss, now doesn't not effect
  ssid: 'wifi-network-ssid',
  bssid: 'filter-device', //"" if not need to filter (don't use null)
  password: 'wifi-password',
  timeout: 10000 //now doesn't not effect
}).then(function(results){
  //Array of device success do smartconfig
  console.log(results);
  /*[
    {
      'bssid': 'device-bssi1', //device bssid
      'ipv4': '192.168.1.11' //local ip address
    },
    {
      'bssid': 'device-bssi2', //device bssid
      'ipv4': '192.168.1.12' //local ip address
    },
    ...
  ]*/
}).catch(function(error) {

});

Smartconfig.stop(); //interrupt task
```

## Todo

* [ ] Support automatic get current wifi network ssid
* [ ] Set timeout effect
* [ ] Support airkiss

## LICENSE

```
  The MIT License (MIT)

  Copyright (c) 2015 <TuanPM> https://twitter.com/tuanpmt

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
```
