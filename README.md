Fujitsu ScanSnap 1300i Cookbook
===============================

Install Macintosh software to manage a ScanSnap 1300i.

Requirements
------------

#### Platforms

* Mac OS X 10.4 - 10.9

#### Cookbooks

* `dmg`

Attributes
----------

None.

Usage
-----

Just include `scansnap1300i` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[scansnap1300i]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Author
==================

Author:: Julian C. Dunn (<jdunn@aquezada.com>)
Copyright:: Copyright (c) 2013, Julian Dunn
License:: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
