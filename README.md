# Struts2 S2-057 (CVE-2018-11776)

[Vulhub](https://vulhub.org)'s [`struts2/s2-057`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-057) environment, by
phith0n and the Vulhub contributors: the Struts 2.3.34 showcase with an action chaining configuration that has no namespace, vulnerable to S2-057 (OGNL in the URL namespace). This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine is Vulhub's published image `vulhub/struts2:2.3.34-showcase` with Vulhub's `struts-actionchaining.xml` copied in (Vulhub mounts it); the environment folder is vendored in [`build/struts2/app/`](build/struts2/app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| struts2 | Struts 2.3.34 showcase on Tomcat, port 8080 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:8080/showcase/ to see the Struts2 test page. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/struts2/s2-057/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
