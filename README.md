# gitpod-pharo

[(This link will open markfirmware/gitpod-pharo in gitpod.)](https://gitpod.io#https://github.com/markfirmware/gitpod-pharo)

A gitpod workspace will open including theia (similar to vscode) and also a novnc browser window to
the gitpod workspace where the pharo launcher will be running.

## Explanation

On the road to gtoolkit running within gitpod. As discussed in the discord gtoolkit help channel, there
is a graphics issue running gtoolkit in gitpod related to Skia and/or glutin.

Therefore this repo is a step away from gtoolkit and is using pharo 9.0 for development in the mean time.

Gitpod is a theia/vscode virtual development environment,
therefore [VSCode-Pharo](https://badetitou.github.io/projects/VSCode-Pharo/)
is installed.


### Notes

The vnc resolution is set [here in pharo.dockerfile](https://github.com/markfirmware/gitpod-pharo/blob/62dd29866da8dd4c05597eaf3c4120772b781aae/pharo.dockerfile#L4)

Gitpod does not persist $HOME (/home/gitpod) but does persist /workspace/REPO_NAME.
Therefore pharo is started with:

    HOME=$(pwd) ./pharolauncher/pharo-launcher

as seen in [.gitpod.yml](https://github.com/markfirmware/gitpod-pharo/blob/62dd29866da8dd4c05597eaf3c4120772b781aae/.gitpod.yml#L13)