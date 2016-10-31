Server = get_server_class

server_info = {
  server_name: Server::server_name,
  server_version: Server::server_version,
  mruby_version: MRUBY_VERSION,
  module_name: Server::module_name,
  module_version: Server::module_version,
}

Server.echo JSON::stringify(server_info)
