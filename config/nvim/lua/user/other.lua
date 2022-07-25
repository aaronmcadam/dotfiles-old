local status_ok, other = pcall(require, "other-nvim")
if not status_ok then
  return
end

other.setup({
  rememberBuffers = false,
  mappings = {
    {
      pattern = "/(.*)/(.*).ts(.*)$",
      target = {
        {
          target = "/%1/%2.spec.ts%3",
          context = "test"
        },
        {
          target = "/%1/%2.stories.tsx",
          context = "story"
        },
      }
    },
    {
      pattern = "/(.*)/(.*).spec.ts(.*)$",
      target = {
        {
          target = "/%1/%2.ts%3",
          context = "implementation"
        },
        {
          target = "/%1/%2.stories.tsx",
          context = "story"
        },
      }
    },
    {
      pattern = "/(.*)/(.*).stories.tsx$",
      target = {
        {
          target = "/%1/%2.tsx",
          context = "implementation"
        },
        {
          target = "/%1/%2.spec.tsx",
          context = "test"
        },
      }
    }
  }
})
