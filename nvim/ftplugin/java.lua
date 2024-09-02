local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local workspace_dir = '/Users/anshulkanwar/dev/oms-credit' .. project_name

local config = {
    cmd = {
	'/Users/anshulkanwar/Library/Java/JavaVirtualMachines/openjdk-22.0.2/Contents/Home/bin/java',
	'-javaagent:' .. '/Users/anshulkanwar/.local/share/nvim/mason/packages/jdtls/lombok.jar',
	'-jar', '/Users/anshulkanwar/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
	'-configuration', '/Users/anshulkanwar/.local/share/nvim/mason/packages/jdtls/config_mac',
	'-data', workspace_dir,
    },
}
require('jdtls').start_or_attach(config)
