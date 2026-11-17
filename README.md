# homebrew-ccswitch

Personal tap for my [CC Switch](https://github.com/jiangsongkian/cc-switch) fork. The fork adds
cross-app rules management on top of upstream; the builds are published as
`rules-v<version>` releases on that repo.

```bash
brew tap jiangsongkian/ccswitch
brew install --cask cc-switch-rules
```

The cask installs to the same `/Applications/CC Switch.app` as the official `cc-switch` cask,
so uninstall the official one first (never with `--zap`, it would delete `~/.cc-switch`):

```bash
brew uninstall --cask cc-switch
```

Upgrades come from the app's own updater (`auto_updates true`), which is why
`brew list --cask --versions` will lag behind the version shown in the app. To force a
reinstall from this tap:

```bash
brew upgrade --cask --greedy cc-switch-rules
```

The cask is bumped automatically every 6 hours from the latest `rules-v*` release
(`.github/workflows/bump-cask.yml`).
