#
# Cookbook Name:: scansnap1300i
# Recipe:: default
#
# Copyright 2013, Urbandecoder Labs LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

dmg_package "ScanSnap Manager" do
  source 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-s1300i/ScanSnap.dmg'
  checksum 'fc1e9823c1b6c34f87a762c0133bcb29b2833bf1aee907f2d8e5d24666b03338'
  volumes_dir 'ScanSnap'
  action :install
  type "pkg"
  package_id "jp.co.pfu.ScanSnap.V10L10"
end

os_level = node['platform_version'].split('.')[1].to_i
if os_level >= 7
  dmg_package 'MacScanSnapV32L63UpWW' do
    source 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/v32l63/MacScanSnapV32L63UpWWA.dmg'
    checksum 'fde835c99cd1443276d3992a942de25c8472bd9fac6297a1abf3f0e83ab796d6'
    volumes_dir 'ScanSnap'
    action :install
    type "pkg"
    package_id "jp.co.pfu.ScanSnap.V32L63"
  end
elsif os_level >= 4 && os_level < 7
  dmg_package 'MacScanSnapV32L63UpWW' do
    source 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/v32l63/MacScanSnapV32L63UpWW.dmg'
    checksum '9ee5154458cb3d55cdf4fcb8e9f60d57d74348205581184439271baf51f98cc6'
    volumes_dir 'ScanSnap'
    action :install
    type "pkg"
    package_id "jp.co.pfu.ScanSnap.V32L63"
  end
end
