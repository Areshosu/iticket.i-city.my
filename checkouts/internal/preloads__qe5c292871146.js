
    (function() {
      var baseURL = "https://cdn.shopify.com/shopifycloud/checkout-web/assets/";
      var scripts = ["https://cdn.shopify.com/shopifycloud/checkout-web/assets/runtime.baseline.en.159ab3276cb16be1bf97.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/334.baseline.en.64e053b0f15f4005e14e.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/409.baseline.en.fc6adb27161bdd0850e0.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/150.baseline.en.fa876c47558043c6ee2d.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/app.baseline.en.a41fe7370e087b6c87ab.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/731.baseline.en.ffc1b33abd05b4658105.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/958.baseline.en.191a390365a863877554.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/608.baseline.en.01149e16e975fd738d05.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/844.baseline.en.4be6f8f745eacab38323.js","https://cdn.shopify.com/shopifycloud/checkout-web/assets/OnePage.baseline.en.703b554f547c72c0a1b0.js"];
      var styles = ["https://cdn.shopify.com/shopifycloud/checkout-web/assets/334.baseline.en.d25cce06acc8898e35d4.css","https://cdn.shopify.com/shopifycloud/checkout-web/assets/app.baseline.en.bd7e1a04a0d2456be516.css","https://cdn.shopify.com/shopifycloud/checkout-web/assets/958.baseline.en.adb56ed22ef5fe7671a2.css","https://cdn.shopify.com/shopifycloud/checkout-web/assets/74.baseline.en.e9adb3cad6bd41940ef3.css"];
      var fontPreconnectUrls = [];
      var fontPrefetchUrls = [];
      var imgPrefetchUrls = ["https://cdn.shopify.com/s/files/1/2480/5042/files/new_i-City_logo_transparent_x320.png?v=1614281214"];

      function preconnect(url, callback) {
        var link = document.createElement('link');
        link.rel = 'dns-prefetch preconnect';
        link.href = url;
        link.crossOrigin = '';
        link.onload = link.onerror = callback;
        document.head.appendChild(link);
      }

      function preconnectAssets() {
        var resources = [baseURL].concat(fontPreconnectUrls);
        var index = 0;
        (function next() {
          var res = resources[index++];
          if (res) preconnect(res[0], next);
        })();
      }

      function prefetch(url, as, callback) {
        var link = document.createElement('link');
        if (link.relList.supports('prefetch')) {
          link.rel = 'prefetch';
          link.fetchPriority = 'low';
          link.as = as;
          if (as === 'font') link.type = 'font/woff2';
          link.href = url;
          link.crossOrigin = '';
          link.onload = link.onerror = callback;
          document.head.appendChild(link);
        } else {
          var xhr = new XMLHttpRequest();
          xhr.open('GET', url, true);
          xhr.onloadend = callback;
          xhr.send();
        }
      }

      function prefetchAssets() {
        var resources = [].concat(
          scripts.map(function(url) { return [url, 'script']; }),
          styles.map(function(url) { return [url, 'style']; }),
          fontPrefetchUrls.map(function(url) { return [url, 'font']; }),
          imgPrefetchUrls.map(function(url) { return [url, 'image']; })
        );
        var index = 0;
        (function next() {
          var res = resources[index++];
          if (res) prefetch(res[0], res[1], next);
        })();
      }

      function onLoaded() {
        preconnectAssets();
        prefetchAssets();
      }

      if (document.readyState === 'complete') {
        onLoaded();
      } else {
        addEventListener('load', onLoaded);
      }
    })();
  