# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `struts2/s2-057` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `build/struts2/app/` | [`struts2/s2-057`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-057) |
| `base/struts2/2.3.34-showcase/` | [`base/struts2/2.3.34-showcase`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/struts2/2.3.34-showcase): the Dockerfile of `vulhub/struts2:2.3.34-showcase` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/struts2:2.3.34-showcase`,
pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/`
to show how it is built. Building from `base/` instead would download the vulnerable software from its
original sources, some of which are gone.

`build/struts2/Dockerfile` starts from `vulhub/struts2:2.3.34-showcase` and copies in
`struts-actionchaining.xml`, which Vulhub's compose file mounts as a volume (Isoloom has no bind mounts).

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
