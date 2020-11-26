'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "7e316e4f4db0e06f5027bb0518787d61",
".git/config": "139a88cd8cd6b045dad64207931029a2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "d41d8cd98f00b204e9800998ecf8427e",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "092bd2486394fcce79a30d64b4a5292e",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "4734caa970cd226083640a9e69d6cd32",
".git/logs/refs/heads/master": "4734caa970cd226083640a9e69d6cd32",
".git/logs/refs/remotes/orign/master": "0b945587067dc3af82653775cce74b57",
".git/objects/13/5a3f566ef0f67f055309dc4ab65aa26ac69967": "b9e902e0488ad9c20b4e1c6698a09098",
".git/objects/1a/8fe6413935ea635921bc35151bd3ea69c22e88": "19e60f5bc6222b1b9323c8f1c22f3eab",
".git/objects/1c/4236dff616f1bcbdd0fdb5b0dab43cf29ce05b": "f8064696d2ca8a9db9c9040ce5276530",
".git/objects/1c/6d9c9b62f1851ca6a454fc3455bb924b77b4be": "1c8843ec5841b577c0d6c088bbaa06ef",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/29/052a7b4905ca2cab0b0d74e7a7dece3eaa405e": "3ebb44b26125d5c71319c443ca7d185e",
".git/objects/32/50d0c80dcbc9e6c38700e849fcdfb91f49739a": "8a6e61fbf6b98593ebf7f6ef0b62965d",
".git/objects/34/9b019233b75d721dd49131a020acc308dda6e0": "00b0df466208528c93493f59a57cb4e1",
".git/objects/44/12a31f5ddfd7c65188b0529e54a6281809ed6f": "f4d6c7386b08cfe4d6df225c4f4bc200",
".git/objects/47/f833644bb07d5458b9f74026e44349841eaaff": "c0f03d8e026eaec6583fd5053ad4695c",
".git/objects/48/560788fe43e8150df54d6341c680d87aaaa210": "04c9fc7f31034d347093001463eb736a",
".git/objects/4c/c9bb03e7769d51cb6b963bcb2a731b18c94ebb": "b4fb3e603177f924793e82b272e668a4",
".git/objects/5c/ab0f911f7e40e0eca1beb326b692371771bfc7": "f13ac1651d3dea7713a6860abf1338b4",
".git/objects/5c/fbae1e414394d37f4b9e665ffba2852e7ac138": "eff1a99b44cd3e31fba44b70349430d8",
".git/objects/5e/9bf425cd9261667fec1743132f968cc0666e58": "a0da2c980346bcda1fc65ed3031b71c1",
".git/objects/61/25401ce154ceecb8f7bc3a9602c14f405a94fe": "2b8141025e72859d6f41b0cd5d0919c9",
".git/objects/71/0d1693c3bb457b7377eeaec32880a1b007af9b": "91eb2972e1419a37ffa9c1a3d03226ff",
".git/objects/75/fa7e481a5a0af770cbca058357901138210be1": "1dd3360801ab0da92dc038c3e02ef191",
".git/objects/77/e58760cbcba27e78c6739607c83aa56f55f9ed": "e3a854772bddd6793f54067b2b9bea5b",
".git/objects/7b/f911ec4fcb076f90fc10edb42d24d52f5d3f8a": "b389e9274540e62d9a3ec30a4249008d",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/93/7b33bd85c3c4e7f92ff054110c82537b8ef9a2": "a72ad9ead703d9793f28b02c155d2f6a",
".git/objects/97/f4b23efd1c80446d0e8c4f162e50fd255155a8": "5cffc510b92730a00716cca4e325cfa5",
".git/objects/a5/0f63296359183a79aec747244fa1185c27b860": "a7456215e69f7f5f9349266360b2a3f8",
".git/objects/a5/7b2e999045a185f28ba211643f8d4535057e30": "018219273c065162f9d3d7b8d5dafdb2",
".git/objects/a6/4e3f57baa3219730c2ea6721f637429de6ff9a": "621e92dd8166a23e47a0da0d2d8297bb",
".git/objects/a6/71e013b608559c3963b82e64dfdbbc9c89e2dc": "ec264da3c45c8fdf0ddabd4487d14bc1",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/a8/548392e46ce10bd1627947201262231afa24c4": "8499ef6d2897025d4357819b2f1359e0",
".git/objects/aa/7cc029082ba129b8a7ecbac0e7d3a396466c51": "f03c79c10e0f4c2bf6eca1bb511eb632",
".git/objects/b1/a64d7b0827cab5956f2f3a235e33be35dd4188": "3ed50b99475c8a8d638c7817a2044657",
".git/objects/b2/7565f857cb894f1cefb370de74fb6ac1814b29": "0b4868561b526a22dcad261127df056c",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/bf/310849c93749131f16834b839a0e0a8d76cbba": "97a955a456905549c65c75ce1eb96546",
".git/objects/bf/7d9257a4e113ff824fc5eaea2cd64cfe48cab4": "73f565104845037c88c50641f7d96474",
".git/objects/c0/7c182d66c8f56c41ca70599d8ebb840959db44": "155ebc76b073172407f69a5df0cf96ed",
".git/objects/cf/1c1abe04547ec9b556ed44a012b7f34c875215": "1065578c3e56d17c1ca55fef841bc49d",
".git/objects/d2/e92a6818cd0b93caa07c6424e792cfae72b22f": "939d36282ddc3eb596d9ce71bb4591eb",
".git/objects/d4/1437b99e62455d3c377a693c1eca5ba8505b7f": "9553e03344b770ad0280f1679afc6930",
".git/objects/dc/c19405892be7bcffea9796599589522095db35": "0a2709f479b33408ddc7d4c2201aa080",
".git/objects/de/35da690515f69009b7736ee06e1abc423260c4": "a120305157f3fbf2f66f02283c4d1b94",
".git/objects/e2/389e22cbf49d9137a53e2220dd543f63cf7bcb": "d19b9f189e534ff6bb13b59f8486cd4a",
".git/objects/e8/4d830f8a7bcd30d9cdc6152c31b21d3d242f35": "5544051ac5ee4b3e06883e10b6de54f9",
".git/objects/eb/94b0090c0b99ae2803a5f43ef461563b58089b": "80a90664f5a50dea7cfd1d2df4e8c2df",
".git/objects/ec/bd02dfc3638e98a4828642cf5b7c03b03cd280": "c8cc069a4a20b2084cafd1e500e93c6b",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/f9/acfb9add617e2d7a300a4bb9f1162f19fbe8db": "0146e01f93875c1ff3b92f71106cb50c",
".git/objects/fc/34e636d35db0438708794a2be31fbb67683c36": "5cd87eabe438c29680d75953ae6e927c",
".git/ORIG_HEAD": "edba92c8127c17633d9bddedac2cac11",
".git/refs/heads/master": "edba92c8127c17633d9bddedac2cac11",
".git/refs/remotes/orign/master": "edba92c8127c17633d9bddedac2cac11",
"assets/AssetManifest.json": "5449a681de0724ad2cd8650377394e64",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/icons/bank-card-fill.png": "0bf9f96a1f51349f654d31fc9eca57e1",
"assets/icons/bank-card-line.png": "ad9cb89a24f63bc329758ee09c4398a9",
"assets/icons/book-fill.png": "276f4ed0948df0cb49b8bd46445f19f2",
"assets/icons/book-line.png": "4e74032798ccba6031306beed6c2501d",
"assets/icons/facebook-fill.png": "f6bc493be95a6532110e1258d98e108d",
"assets/icons/file-copy-2-fill.png": "4ea072f40e0abc31d3ceedc69a64619a",
"assets/icons/file-copy-2-line.png": "123de0cb00fdc1fd3b7777cf79dab541",
"assets/icons/file-text-fill.png": "78ed716887c4eb583768889c59d24afc",
"assets/icons/file-text-line.png": "c49c47bb4cde84d69cf67d3b952f2afc",
"assets/icons/github-fill.png": "52a4aa31da8e6822c5b3e641389ab417",
"assets/icons/home-fill.png": "b90fc18f19967442af3141b3ddde29e9",
"assets/icons/home-line.png": "00f75ba7bd9d89fb6640ae5fde51a3a2",
"assets/icons/instagram-fill.png": "ee0d8d2fdbd74e30ff63ae76274d614d",
"assets/icons/instagram-line.png": "6af0d86e9b98264ffa8d2cc90a92543b",
"assets/icons/linkedin-fill.png": "869fa834cfd85c0f6ebf05bf41b9dfc2",
"assets/icons/mail-fill.png": "d75c293dbcf8f1dbed244ed293fac29d",
"assets/icons/medal-2-fill.png": "a2913cfa460b698e767998a26357317d",
"assets/icons/medal-2-fill.svg": "b6068826b83bf695954d47d5ee5469e4",
"assets/icons/medal-2-line.png": "f69e23817c46f382b69584e7b597a9a0",
"assets/icons/trophy-fill.png": "1203ecdd31f6cbfc994a529609074f2d",
"assets/icons/trophy-fill.svg": "8963139a8922328445b2fe219d2e5cf2",
"assets/icons/twitter-fill.png": "19adb58b27fc96f15c95b665abb83f04",
"assets/icons/whatsapp-fill.png": "735790fa86e9d57b3906a41b8900cabc",
"assets/images/DP.jpg": "ae7de7857614df0b5e3dfedfa7e58966",
"assets/NOTICES": "94efba4efde358b3909517788b87edff",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/packages/flutter_signin_button/assets/logos/2.0x/facebook_new.png": "83bf0093719b2db2b16e2839aee1069f",
"assets/packages/flutter_signin_button/assets/logos/2.0x/google_dark.png": "937022ea241c167c8ce463d2ef7ed105",
"assets/packages/flutter_signin_button/assets/logos/2.0x/google_light.png": "8f10eb93525f0c0259c5e97271796b3c",
"assets/packages/flutter_signin_button/assets/logos/3.0x/facebook_new.png": "12531aa3541312b7e5ddd41223fc60cb",
"assets/packages/flutter_signin_button/assets/logos/3.0x/google_dark.png": "ac553491f0002941159b405c2d37e8c6",
"assets/packages/flutter_signin_button/assets/logos/3.0x/google_light.png": "fe46d37e7d6a16ecd15d5908a795b4ee",
"assets/packages/flutter_signin_button/assets/logos/facebook_new.png": "e1dff5c319a9d7898aee817f624336e3",
"assets/packages/flutter_signin_button/assets/logos/google_dark.png": "c32e2778b1d6552b7b4055e49407036f",
"assets/packages/flutter_signin_button/assets/logos/google_light.png": "f71e2d0b0a2bc7d1d8ab757194a02cac",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "831eb40a2d76095849ba4aecd4340f19",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a126c025bab9a1b4d8ac5534af76a208",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d80ca32233940ebadc5ae5372ccd67f9",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"faviconpp.png": "9365d056c429b1004e1e908db3ad2434",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/pp-192.png": "6d2874b0e133662fbd0139c4ec82c44a",
"icons/pp.png": "ecb807895c6359eaf09ca4186f1b7700",
"index.html": "b12bdcf8dd914b5efd226d7c32d8f040",
"/": "b12bdcf8dd914b5efd226d7c32d8f040",
"main.dart.js": "d624c9d1ba39a1a2cfa2c2875962917a",
"manifest.json": "e4d0f666a78b54b49d480d195389b537",
"version.json": "426313f2f3133c2f20415344c4a22df3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
