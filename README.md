# OTS

Attempt to [snap](https://snapcraft.io/otax/)
  the [OpenTaxSolver](https://sourceforge.net/projects/opentaxsolver/)
  rev 2021

## Make your own snap package
```bash
# ub server includes a empty lxd?
sudo snap remove --purge lxd
# reinstall lxd
sudo snap install lxd
sudo lxd init --auto
sudo usermod -a -G lxd ${USER}
# view config
lxc version
lxc profile show default
lxc storage show default
echo 'export SNAPCRAFT_BUILD_ENVIRONMENT=lxd' >> ~/.profile
sudo reboot
# retrieve YAML 
git clone https://gitlab.com/shrmpy/container.git
cd container/opentaxsolver
# make snap 
snapcraft
# local install
sudo snap install otax_19.07_arm64.snap --dangerous
# start ots
otax

```
The GTK desktop UI should load. 
- To save work: Save button > /home/myuser/snap/otax/common/US_1040_xxxx.txt
- To generate the PDF: Compute Tax button > Fill-out PDF forms button

## References
Non-multipass snapcraft by using
  [LXD](https://forum.snapcraft.io/t/getting-started-with-snapcraft/27467/2)
 
GTK app
  [article](https://snapcraft.io/docs/gtk2-applications)

Opensource.com
  [article](https://opensource.com/article/21/2/linux-tax-software)

Linuxquestions.org
  [2015 thread](https://www.linuxquestions.org/questions/linux-software-2/any-linux-based-us-federal-tax-filing-software-out-there-4175531634/)

Bogleheads.org
  [2013 thread](https://www.bogleheads.org/forum/viewtopic.php?t=108298)

OpenTaxFormFiller
  by [codehero](https://github.com/codehero/OpenTaxFormFiller)
  ([LICENSE](https://opensource.org/licenses/MIT))

