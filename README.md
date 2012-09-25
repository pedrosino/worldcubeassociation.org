# WCA results website

A little overview of our system. Not quite finished and will slightly change soon,
as Stefan is rearranging the include-files.


## Public web access

### `/`
The PHP scripts for the public pages, currently also containing password-protected
access to competition organisation/administration pages.

### `/images`
Just icons right now.

### `/misc`
For miscellaneous stuff like the public data export and the age-vs-speed statistic.

### `/style`
CSS and images.


## Protected web access

### `/admin`
Tools for the results managing team. Protected with `.htaccess` and `.htpasswd` and requiring use of SSL.


## No web access

These folders are used internally by the above parts and use `.htaccess` to deny web access.

### `/dev`
Developer stuff, so far some tools Stefan uses and is working on. Denying web access for now.

### `/includes`
Our helper scripts that are only used internally by those accessible on the web.
Those starting with underscores like `_tables.php` are our general tool scripts,
the other ones like `events_results.php` have prefixes like `events_` telling
what they belong to. Also here is `_config.php.template`, a template for the `_config.php`
file necessary to run the server.

### `/generated`
For stuff that is generated again and again (logs, precomputed stuff).
Collecting it in here to not clutter the root folder, deny web access,
and ignore using `.gitignore`.

### `/statistics`
All the little scripts computing the statistics on the statistics page, the
order (and selection) is defined in `ALL_LISTS.php`. Used by `/statistics.php`.

### `/thirdparty`
Stuff like PHPExcel and reCAPTCHA. Where possible, we link to the repository
on GitHub.
