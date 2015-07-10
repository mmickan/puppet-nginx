# Private define
define nginx::resource::upstream::member::collect_exported {
  if $caller_module_name != $module_name {
    fail("Use of private define ${name} by ${caller_module_name}")
  }

  ::Nginx::Resource::Upstream::Member <<| upstream == $name |>>
}
