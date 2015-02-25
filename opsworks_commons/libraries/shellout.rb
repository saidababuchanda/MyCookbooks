module OpsWorks
module ShellOut
extend self

# This would be your new default timeout 3Hrs.
DEFAULT_OPTIONS = { timeout: 10 }

def shellout(command, options = {})
cmd = Mixlib::ShellOut.new(command, DEFAULT_OPTIONS.merge(options))
cmd.run_command
cmd.error!
[cmd.stderr, cmd.stdout].join("\n")
end
end
end
