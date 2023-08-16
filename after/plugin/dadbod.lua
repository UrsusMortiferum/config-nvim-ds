require('nvim-databasehelper').setup(
  {
    dadbod = {
      enabled = true,
      var = 'dadbodstring',
    },
    connections = {
      system = {
        initial_database = 'otmil5p1_s1',
        driver = 'oraclesql',
        host = 'usngkor34otm.us.int.kn',
        port = '1521',
        user = 'rogc',
        password = 'otmil5p1',
      }
    },
    initial_window_height = 10,
  }
)
