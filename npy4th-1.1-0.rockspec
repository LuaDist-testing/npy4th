-- This file was automatically generated for the LuaDist project.

package = "npy4th"
version = "1.1-0"

-- LuaDist source
source = {
  tag = "1.1-0",
  url = "git://github.com/LuaDist-testing/npy4th.git"
}
-- Original source
-- source = {
--    url = "git://github.com/htwaijry/npy4th",
--    tag = "1.1-0"
-- }

description = {
   summary = "A Numpy format loader for Torch",
   detailed = [[
      Load .npy and .npz files into torch.
   ]],
   homepage = "git://github.com/htwaijry/npy4th",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}