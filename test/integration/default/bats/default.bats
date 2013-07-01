#!/usr/bin/env bats

@test "git-fs bin should exist" {
    [ -x "/usr/local/bin/git-fs" ]
}

@test "git-fs help should exit normally" {
    git fs help
}
