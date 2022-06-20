require('neorg').setup {
  load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/Dropbox/work",
          school = "~/Dropbox/school",
          personal = "~/Dropbox/personal"
        },
      },
    },
        ["core.norg.completion"] = {},
        ["core.gtd.base"] = {},
        ["core.norg.qol.toc"] = {},
        ["core.norg.journal"] = {},
        ["core.presenter"] = {},
        ["core.export"] = {}
        }
}
