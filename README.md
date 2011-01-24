Textmate is a pretty good text editor. While not exclusively for developers and other technically minded folk, it would be fair to say they make up a large portion of the user base.

I bring this up because there's one thing that has always struck me as odd about this Pretty Good Text Editor. Unlike other text editors it is configured and customized via a GUI. And not some amazing wiz-bang revolutionary GUI, a pretty average one. I mean, it's not terrible, it could be worse I guess, but it's certainly odd considering a well formatted text file is often a pretty reasonable interface for configuring application targeted at technically oriented folk. In fact textmate itself is often the best tool for the job when it comes to modifying said configuration files.

This is the official way to edit language grammars:

<img alt="Bundle Editor screenshot" src="http://github.com/quackingduck/bundlemate.tmbundle/raw/master/bundle-editor-screenshot.png" width='800'>

There's a texteditor inside the GUI for configuring the texteditor that is worse than the texteditor you are trying to configure. 

As I was saying, odd.

At the disk level, textmate bundles are serialized data structures spread across a across multiple files that have reasonably standard naming conventions.

For example, the keystrokes to activate the command that shows the word count for the current document can be found by looking at the value of the `keyEquivalent` attribute in the file: `Text.tmbundle/Commands/Word Count.plist`.

Bundlemate includes a program that takes a source file called `bundle.yaml` as input and produces the expected set of files and directories as output. Bundlemate itself is also a bundle and is self-hosting (that's what usually ends up happening with compilers, sorry about that).

Using Bundlemate should aid in both the authoring and sharing (via sites like github) of bundles as it's often easier to see the differences between two source files edited by human authors than it is to see the differences between two serialized data structures generated by a GUI.

See httphttps://github.com/quackingduck/mb-html.tmbundle for an example of a bundle that was written with BundleMate.