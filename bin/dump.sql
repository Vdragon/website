-- andro_user

INSERT INTO `andro_user` (`id`, `username`, `email`, `password`, `salt`, `enabled`, `created`, `updated`, `last_login`) VALUES
(2, 'Julien', 'mewt@androirc.com', '0e3EVtoTLx0ajtAylaRUQy8hISTK8UJTwXB/XWsxD6/DNpU9Ka3Q3oVBsh33efgNQYpijA9VYk5498wDXdo/dg==', 'i1xnxr3mcoowokg8gs8w08gg0g8swwo', 1, NOW(), NOW(), NULL),
(3, 'Sébastien', 'blinkseb@androirc.com', 'VULOnMdLkBpV0hLoJ6o6AbJPlw/bg6Cks3OEiMtfjKf1jaajBZ0icdEak9yzbGKHOR8fK7uEovyos66gJJinPg==', 'gyokoxjx08owkg0k4wcc08ckowwk04w', 1, NOW(), NOW(), NULL);

-- andro_article

INSERT INTO `andro_article` (`id`, `author_id`, `title`, `content`, `visible`, `created`, `updated`, `slug`) VALUES
(1, 2, 'AndroIRC 1.0 is out!', '<p>That''s it! AndroIRC is now available in the <i>Android Market</i> since today ! Priced at <b>$1.95</b>, AndroIRC lets you connect simply and effectively to several IRC networks simultaneously from your Android smartphone. Easily customizable, AndroIRC manages mIRC colors, charset , SSL connection, automatic identification with NickServ, Android''s notifications when the application is no longer in the foreground and much more .. . ! For more information, you can always look at the screenshots and FAQs</p>', 1, '2011-01-25 20:52:17', '2011-01-25 20:52:17', 'androirc-1-0-is-out'),
(2, 2, 'Version 1.0.1 on the Market', '<p>Version 1.0.1 is already available on the Android Market. The program, bugfixes  and adding a <i>software license</i> (More <a href="http://en.wikipedia.org/wiki/Software_license">here</a>) available in the menu (EULA).</p>\r\n\r\n<p>Nothing too serious.</p>', 1, '2011-01-25 21:01:08', '2011-01-25 21:01:08', 'version-1-0-1-on-the-market'),
(3, 2, 'AndroIRC 1.0.2', '<p>And yes, we work hard here! Version 1.0.2 is already available. It adds nothing definite, just bug fixes on big screens and during the change of orientation which causes a restart of the application</p>\r\n\r\n<p>Available on the Android Market today.</p>', 1, '2011-01-25 21:01:24', '2011-01-25 21:01:24', 'androirc-1-0-2'),
(4, 3, 'AndroIRC is free !', '<p>Yes, you''ve heard right! We''ve decided to make AndroIRC free. As always, you can download AndroIRC on the Android Market!</p>', 1, '2010-07-15 21:01:39', '2010-07-15 21:01:39', 'androirc-is-free'),
(5, 3, 'AndroIRC 1.1 is here!', '<p>Already a month since the previous update! It''s time to bring you back AndroIRC 1.1.</p>\r\n\r\n<p>It''s a major update, with a lot of bug fixes and some new features :</p>\r\n\r\n<ul>\r\n<li>Support for touch screen :\r\n<ul>\r\n<li>A tap brings the opened windows list up</li>\r\n<li>A double tap brings the users list up</li>\r\n<li>A left/right fling change the current window up/down</li>\r\n</ul>\r\n<li>The message window does not scroll anymore when you receive a new message, unless you already are at the bottom of the list</li>\r\n<li>Added support for "/msg" alias</li>\r\n<li>Improved socket management</li>\r\n<li>New crashreport feature : if you choose it, you can allow AndroIRC to automatically send crashreport to our server in order to help us to improve AndroIRC</li>\r\n<li>The force close when showing the menu is fixed</li>\r\n<li>The message list was completely rewritten. As a consequence, the drawing is faster. Unfortunately, the list separators are no longer supported.</li>\r\n<li>A lot of bug fixes</li>\r\n</ul>\r\n\r\n<p>The update will be available in the next few days on the Market.</p>', 1, '2010-07-16 21:01:54', '2010-07-16 21:01:54', 'androirc-1-1-is-here'),
(6, 3, 'AndroIRC v1.1.1', '<p>Soon after v1.1, here v1.1.1. It''s a bug fixes release thanks to the first crash reports we''ve been collected!</p>\r\n\r\n<p>Bug fixes :</p>\r\n<ul>\r\n<li>No more crash when connecting to a new channel</li>\r\n<li>No more crash with malformed color code</li>\r\n<li>No more crash with malformed raw message</li>\r\n</ul>', 1, '2010-07-17 21:02:59', '2010-07-17 21:02:59', 'androirc-v1-1-1'),
(7, 3, 'AndroIRC 1.1.2', '<p>Again a bug fixes release, thanks to your bugs reports!</p>\r\n\r\n<p>The force close on startup should be fixed.</p>', 1, '2010-07-18 21:03:15', '2010-07-18 21:03:15', 'androirc-1-1-2'),
(8, 3, 'AndroIRC 1.1.3', '<p>Hello everyone,\r\n\r\nAfter long hours of work, we finally find out two majors bugs : the force close on startup, and the force close on menu. There were due to older Android version, but it''s now fixed! Some others bugs have been fixed too.</p>\r\n\r\n<p>The update will be available as soon as the market is reopened!</p>\r\n\r\n<p><b>Edit</b>: The update is now available.</p>', 1, '2010-07-19 21:03:31', '2010-07-19 21:03:31', 'androirc-1-1-3'),
(9, 3, 'AndroIRC 1.2 is out!', '<p>A new major release of AndroIRC is out! Four new major features :</p>\r\n<ul>\r\n<li>Added support for nickname/alt. nickname per server</li>\r\n<li>Added support for auto ident by nickserv per server</li>\r\n<li>Complete refactoring of the auto-join channel feature: it''s now easier to add an auto-join channel for a server</li>\r\n<li>Added support for copy: simply long press on a line, and it''s copied!</li>\r\n</ul>\r\n<p>\r\nAdditionally, a lot of work has been done rewriting the database. Unfortunately, when upgrading, you''ll loose all the channels you''ve added. All your others preferences will be kept!\r\n</p><p>\r\nIt''s also good to mention that AndroIRC now support new mIRC tag for italic text!\r\n</p><p>\r\nThe update will be available in the next few hours!\r\n</p><p>\r\nHave fun!</p>', 1, '2010-07-26 21:03:48', '2010-07-26 21:03:48', 'androirc-1-2-is-out'),
(10, 3, 'AndroIRC 1.2.2', '<p>AndroIRC 1.2.2 is now available on the market!\r\nWhat''s new?</p>\r\n<ul>\r\n<li>You can now disable the auto-correction of channel names, or choose with which character you want the correction to be done. Furthermore, no correction will be done if you enter a channel name starting with ''#'', ''&'', ''+'' or ''!''. You have the control! A little example: <br />\r\nYou have set the option to correct with the ''+'' character : <br />\r\n<pre>/j androirc</pre> will in reality join <b>+androirc</b>, but <pre>/j #androirc</pre> will join <b>#androirc</b>, no matter the option selected.</li>\r\n<li>Various bug fix</li>\r\n</ul>\r\n<p>The update is available right now!</p>', 1, '2010-07-27 21:04:34', '2010-07-27 21:04:34', 'androirc-1-2-2'),
(13, 3, 'New design / AndroIRC 1.2.4', '<p>Hello everyone,</p>\r\n\r\n<p>\r\nAs you may have noticed since a couple of days, the website has a new design! We''re now connected throught Facebook and Twitter! You can also leave us some comments and feedback (this is really appreciated!)</p>\r\n\r\n<p>You may also have noticed the new "Donate" button. Indeed, even if AndroIRC is (and will remain) totally free, the developpement is very time/effort consumming. We have charges concerning the web hosting too. That''s why, if you use and enjoy AndroIRC, a donation would be really helpfull!</p>\r\n\r\n<p>From all the AndroIRC team, thank you all in advance!</p>\r\n\r\n<p>PS: AndroIRC v1.2.4 is available on the market. Nothing new, only bug fix. If you have any bugs or problems with AndroIRC, please, send us an email describing your problem. Rating us one star on the market won''t help! Thank you!</p>', 1, '2010-07-30 21:05:04', '2010-07-30 21:05:04', 'new-design-androirc-1-2-4'),
(14, 3, 'AndroIRC 1.3 is out!', '<p>Hello everyone!</p>\r\n<p>A new major release of AndroIRC is here!</p>\r\n<p>What''s new?</p>\r\n<ul>\r\n<li><b>Text customization</b>: A long press on the text box shows a popup allowing the user to customize text (colors, formating, ...). This uses mIRC standards.</li>\r\n<li><b>Improved network detection</b>: AndroIRC now detects networks lost, and reconnect automatically when a new network is available</li>\r\n<li><b>Tips of the day</b>: On startup, a little tips is added on the home page</li>\r\n<li><b>Custom commands on startup</b>: You can now set custom commands, automatically send when the server is connected.</li>\r\n<li><b>Icons set</b>: you can choose what set of icons AndroIRC should use</li>\r\n<li><b>New aliases</b>: /hop, /kb, /w, /um&lt;ode&gt;, /v&lt;oice&gt;, /h&lt;alfop&gt;, /o&lt;p&gt;, /dv, /dh, /q&lt;uery&gt;</li>\r\n<li><b>Server ping</b>: AndroIRC now pings the server every two minutes to detect timeout</li>\r\n<li>On supported devices, using the camera button will append a "/" on the text box</li>\r\n<li>As usual, a lot of bugs fixed</li>\r\n</ul>\r\n<p>Have fun with this new release, and don''t hesitate to send an email if you find a bug!</p>', 1, '2010-08-10 21:05:38', '2010-08-10 21:05:38', 'androirc-1-3-is-out'),
(15, 2, 'Bugs report', '<p>Hi all!</p>\r\n<p></p>\r\n<p>We''re opening a new section allowing you to easily submit bug reports : http://bugs.androirc.com</p>\r\n\r\n<p>Thanks in advance for your bug reports!</p>', 1, '2010-08-20 21:06:01', '2010-08-20 21:06:01', 'bugs-report'),
(16, 2, 'Some news', '<p>Hi everyone!</p>\r\n\r\n<p>Sorry for the lack of news these early days, but we are really busy. School has started again, so we have less time to work on AndroIRC, sad :(</p>\r\n\r\n<p>Let me inform you that we are currently working on AndroIRC 2.0. We are currently on beta release, so you can expect a new release on the market within 2-3 weeks. As a little gift, here a screenshot of the new home screen :</p>\r\n\r\n<center>\r\n<img src="99da112f35bd9449a8814da6231dd0217f1a7902.png" thumbnail="true" /></center>', 1, '2010-09-25 21:06:33', '2011-06-01 19:28:33', 'some-news'),
(17, 2, 'AndroIRC v2.0 is here!', '<p>Hello everybody!</p>\r\n<p>Today is a great day, AndroIRC v2.0 is out!</p>\r\n<p>There''re a lot of new features, like:\r\n<ul>\r\n<li>Logging support</li>\r\n<li>SASL Authentication support, with PLAIN and BLOWFISH (only on Android 2.3 and above) encryption!</li>\r\n<li>Complete rewrite of the application from scratch: more stability and less bugs!</li>\r\n<li>And of course, a lot of bugs fixed!</li>\r\n</ul></p>\r\n<p>If you need to report bugs, please use the bug report section of the website (<a href="http://bugs.androirc.com">http://bugs.androirc.com</a>) for better efficiency, and *don''t* send mail with bug reports, please!</p>\r\n<p>I hope you''ll have as much as fun to use AndroIRC than we have developing it!</p>', 1, '2010-12-15 21:07:16', '2010-12-15 21:07:16', 'androirc-v2-0-is-here'),
(20, 3, 'New website / AndroIRC 2.1', 'As you can all see, we''ve updated the AndroIRC website today, with a new cool blue theme! This is to follow the new AndroIRC 2.1, now with blue theme, and very new cool features :\r\n\r\n<ul>\r\n<li>New black theme. We''re listening to you!</li>\r\n<li>Service support: no more disconnection when AndroIRC is in background</li>\r\n<li>Bug fixes</li>\r\n</ul>\r\n\r\nMuch informations on the appbrain AndroIRC page. A wiki is also opened, http://wiki.androirc.com, which should help you begin with AndroIRC! Have fun with AndroIRC !', 1, '2011-01-29 19:15:58', '2011-05-07 17:38:37', 'new-website-androirc-2-1'),
(21, 3, 'AndroIRC 3.0 beta is here', 'Hello everyone,\r\n\r\nWe are pleased to announce that AndroIRC v3.0 is now available in <a href="http://www.androirc.com/beta">beta</a> ! After a long time, the news list is quite huge!\r\n\r\n<ul>\r\n<li><a href="http://redmine.madalynn.eu/projects/androirc/wiki/FiSH">FiSH</a> support ! As FiSH needs Blowfish in order to encrypt / decrypt, FiSH support is limited to devices running Android 2.3 or above.</li>\r\n<li>History support: by default, the latest 20 typed messages are stored. You can navigate through history using the up / down key (the DPAD also works!)</li>\r\n<li>Nick completion: just press the search button while typing, and it will automatically complete your nick. Press search again to cycle through nicks.</li>\r\n<li>Redesigned user list. A long press on a nick append the nick in the textbox, while clicking on it show a little menu.</li>\r\n<li>Partial Android 3.0 Honeycomb support</li>\r\n<li>Support for irc:// links in Android browser</li>\r\n<li>A quick start dialog when first launching AndroIRC, and a what''s new dialog when upgrading</li>\r\n</ul>\r\n\r\nWe have also fixed a lot of issues, like\r\n<ul>\r\n<li>BNC support</li>\r\n<li>/me & queries issues</li>\r\n<li>fling / gestures are now less sensitive</li>\r\n<li>better detection of network connection, and better handling of connection lost and reconnection</li>\r\n<li>better disconnection from servers</li>\r\n<li>bugs fix</li>\r\n</ul>\r\n\r\n<p>\r\nUnfortunately, Android 1.5 is no longer supported. You''ll have to stay with AndroIRC 2, or upgrade to a newer Android version.\r\n</p><p>\r\nWe have migrate our server to a more powerful one. That was the occasion to make some improvement to the website, and to bring you a <b>mobile</b> version of this website. You can find it at <a href="http://m.androirc.com">http://m.androirc.com</a>. If you visit the site with a mobile, you''ll automatically be redirected to the mobile version!\r\n</p><p>\r\nWe have also switched from bugzilla to redmine. As a consequence, all the opened issues are lost, but they were (hopefully) all fixed. You can still report bugs <a href="http://bugs.androirc.com">here</a> (account needed). The wiki has also moved and was updated: still <a href="http://wiki.androirc.com">here</a>.\r\n</p><p>\r\nAndroIRC is currently available in English, French, Czech, Swedish and Dutch. You can help us translating AndroIRC! All you have to do is to create a account <a href="http://mygengo.com/string/">here</a>, and register to the AndroIRC project <a href="http://mygengo.com/string/p/androirc-1/dashboard">here</a>. We are counting on you !\r\n</p>\r\nEnjoy AndroIRC.', 1, '2011-06-02 22:13:30', '2011-06-02 22:50:35', 'androirc-3-0-beta-is-here'),
(22, 2, 'AndroIRC 3.0 beta 2', '<p>Greetings everyone!</p>\r\n\r\n<p>As promised, AndroIRC 3.0 beta 2 is now available, still at the <a href="http://www.androirc.com/beta">same</a> place!</p>\r\n\r\n<p>Nothing really new, but we have fixed <b>a lot of</b> bugs, and added a notification system to let you know if a new beta is available, or if the release is here!</p>\r\n\r\n<p>We still need your feedback, so don''t hesitate to use the contact form to reach us!</p>\r\n\r\n<p>Enjoy AndroIRC!</p>', 1, '2011-06-13 17:51:33', '2011-06-13 17:52:44', 'androirc-3-0-beta-2'),
(23, 3, 'AndroIRC 3.0 beta 3', '<p>Here we go, here''s the beta 3 of AndroIRC 3.0! If everything goes as planned, this should be the last beta before release to the Market!</p>\r\n\r\n<p>Thanks for any one who''s testing, your crash reports are very useful!</p>\r\n\r\n<p>Enjoy AndroIRC!</p>', 1, '2011-06-18 22:48:31', '2011-06-18 22:54:31', 'androirc-3-0-beta-3'),
(24, 3, 'AndroIRC 3.0 final is out !', '<p>Hello everyone,</p>\r\n\r\n<p>Finally, AndroIRC 3.0 is out after three betas. Thanks to anyone who''ve tested it, this version 3 has a lot of bug fixes, and some great new features :</p>\r\n\r\n<ul>\r\n<li><a href="http://redmine.madalynn.eu/projects/androirc/wiki/FiSH">FiSH</a> support ! As FiSH needs Blowfish in order to encrypt / decrypt, FiSH support is limited to devices running Android 2.3 or above.</li>\r\n<li>History support: by default, the latest 20 typed messages are stored. You can navigate through history using the up / down key (the DPAD also works!)</li>\r\n<li>Nick completion: just press the search button while typing, and it will automatically complete your nick. Press search again to cycle through nicks.</li>\r\n<li>Redesigned user list. A long press on a nick append the nick in the textbox, while clicking on it show a little menu.</li>\r\n<li>Partial Android 3.0 Honeycomb support</li>\r\n<li>Support for irc:// links in Android browser</li>\r\n<li>A quick start dialog when first launching AndroIRC, and a what''s new dialog when upgrading</li>\r\n</ul>\r\n\r\nWe have also fixed a lot of issues, like\r\n<ul>\r\n<li>BNC support</li>\r\n<li>/me & queries issues</li>\r\n<li>fling / gestures are now less sensitive</li>\r\n<li>better detection of network connection, and better handling of connection lost and reconnection</li>\r\n<li>better disconnection from servers</li>\r\n<li>bugs fix</li>\r\n</ul>\r\n\r\n<p>\r\nUnfortunately, Android 1.5 is no longer supported. You''ll have to stay with AndroIRC 2, or upgrade to a newer Android version.\r\n</p>\r\n\r\n<p>Like requested many times, you''ll now find a <b>premium</b> app on the <a href="https://market.android.com/details?id=com.androirc.premium">market</a>. Install this app if you want to support us! As a result, ads will be disabled on AndroIRC!</p>\r\n\r\n<p>Thanks to anyone who participate to the beta, and enjoy AndroIRC!</p>', 1, '2011-06-26 14:13:03', '2011-08-20 16:56:59', 'androirc-3-0-final-is-out');
