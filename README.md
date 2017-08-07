# around(:suite) hooks seem completely broken!

If you put an `around(:suite)` hook in your spec_helper.rb file, you seem to always get this warning:

```
WARNING: `around(:suite)` hooks are only supported on the RSpec configuration object.
This `around(:suite)` hook, registered on an example group, will be ignored.
```

And then it blissfully ignores your hook, despite the fact that it has actually been defined on the RSpec configuration object. To duplicate the issue, just check out this little two-file repository and run `rspec` in the root:

```
~/rspec-around-suite-bug$ rspec
WARNING: `around(:suite)` hooks are only supported on the RSpec configuration object.
This `around(:suite)` hook, registered on an example group, will be ignored. Called
from /.../rspec-around-suite-bug/spec/spec_helper.rb:1:in `<top (required)>'.
WARNING: `around(:suite)` hooks are only supported on the RSpec configuration object.
This `around(:suite)` hook, registered on an example group, will be ignored. Called
from /.../rspec-around-suite-bug/spec/spec_helper.rb:7:in `block in <top (required)>'.
.

Finished in 0.00043 seconds (files took 0.07965 seconds to load)
1 example, 0 failures
```
