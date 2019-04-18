[33mcommit 18992010c0ce7ee86443c1831aada53cf5142475[m
Author: Estella Song <estellajaysong@gmail.com>
Date:   Thu Apr 18 02:04:49 2019 +0000

    added feature - admins can create and view categories

[33mcommit a1e40c8eeea68eef93790722bd63f6f7e41a762f[m
Author: Estella Song <estellajaysong@gmail.com>
Date:   Thu Apr 18 00:49:46 2019 +0000

    added feature - product sold out badge

[33mcommit ff918c1c2f3d237dbcd37fa2bed0c5d9c3b5e2d5[m
Merge: 8716554 7891e66
Author: Khurram Virani <kvirani@users.noreply.github.com>
Date:   Thu Aug 23 13:48:04 2018 -0700

    Merge pull request #132 from lighthouse-labs/jh-refactor-cart-arithmetic
    
    Refactor cart total-summation

[33mcommit 7891e66ff566d8d3665481e63085b91a3c9e321b[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Thu Aug 23 13:47:21 2018 -0700

    fix a bit too much vertical spacing in controller

[33mcommit b6f83b21c5a9f9ceadaa137982fc165939b01c40[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Thu Aug 23 13:45:31 2018 -0700

    Fix 500 due to old code from prev branch

[33mcommit 909473ae3a6d010d3cea905805750c80f1100aab[m
Merge: 05db901 8716554
Author: Khurram Virani <kvirani@gmail.com>
Date:   Thu Aug 23 13:42:43 2018 -0700

    Merge branch 'master' into jh-refactor-cart-arithmetic

[33mcommit 8716554dd5f57b014771228a2d74ddadc8c6774a[m
Merge: 959e103 d8997f9
Author: Khurram Virani <kvirani@users.noreply.github.com>
Date:   Thu Aug 23 13:40:46 2018 -0700

    Merge pull request #131 from lighthouse-labs/jh-fix-http
    
    ♪ anything put can do post can do better ♪

[33mcommit d8997f90b793ab7d4693bd5ac0481650d913fe4e[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Thu Aug 23 13:40:29 2018 -0700

    Make the form.button_to css more general so it applies elsewhere

[33mcommit 94c5ab990d326db00863b6759656c6601c8a1fd1[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Thu Aug 23 13:37:32 2018 -0700

    Switch to button_to for add item button

[33mcommit f88b420d0b64afa9bf75d9ba8be80a68c8d3245c[m
Author: Jeremy Holman <jeremy.holman@gmail.com>
Date:   Sat Jul 21 21:41:19 2018 -0700

    ♪ anything put can do post can do better ♪

[33mcommit 05db9017243df86c8cf7f8bd062c59b6595a9f0a[m
Author: Jeremy Holman <jeremy.holman@gmail.com>
Date:   Sat Jul 21 20:50:01 2018 -0700

    Refactor cart total-summation
    
    Old code had AR queries inside the view, it had duplicated summation code in
    multiple places, and one of the summations used weird scope-violating mutation
    to do the summation.

[33mcommit 959e103a90e69b3591d8c3dd9503c713c9ed6ba4[m
Merge: 85cb1bc 5614e17
Author: Khurram Virani <kvirani@users.noreply.github.com>
Date:   Tue Nov 14 11:39:17 2017 -0800

    Merge pull request #102 from lighthouse-labs/gemfile-ruby-version
    
    Loosen ruby requirement to 2.3.*

[33mcommit 5614e1701180cbf2dbeb40d6d3c5e4f836ec78d5[m
Author: James S <interlock@users.noreply.github.com>
Date:   Mon Nov 13 12:07:15 2017 -0800

    Loosen ruby requirement to 2.3.*

[33mcommit 85cb1bcebff0af65d1926a32a7e8b152b8325466[m
Merge: bf7c63b 1699b18
Author: Don Burks <don@lighthouselabs.ca>
Date:   Tue Aug 8 15:20:12 2017 -0700

    Merge pull request #94 from vaz/flash-errors-on-redirect
    
    Flash errors on redirect

[33mcommit bf7c63b3521fc6a13e4d09b167cea6562e0499c7[m
Merge: b2e6eea b0b6beb
Author: Don Burks <don@lighthouselabs.ca>
Date:   Tue Aug 8 15:20:00 2017 -0700

    Merge pull request #98 from vaz/patch-1
    
    Add pull request template, tell students not to PR

[33mcommit b0b6beb154bd8bc1f42c4990c7ef9b0464425d36[m
Author: V <v@tryptid.com>
Date:   Mon Aug 7 16:29:52 2017 -0700

    Add pull request template, tell students not to PR
    
    Students often make PRs for their feature branches (I'm guessing they see the prompt in Github when they push to their own fork, and just go for it).
    
    The pull request template will give them something to read about it.

[33mcommit 1699b18b97ec07b71de73c758f317581d7081985[m
Author: vaz <v@tryptid.com>
Date:   Mon Jul 10 22:40:27 2017 -0700

    flash errors with redirect_to need special treatment
    
    Unlike :notice (or :alert), other flash types like :error
    need to be passed as part of a :flash option hash.

[33mcommit b2e6eeaf6c76459bca04b00a918570622dc75af1[m
Merge: f8acb1f fa93799
Author: Khurram Virani <kvirani@gmail.com>
Date:   Mon Nov 14 08:48:43 2016 -0800

    Merge pull request #24 from fzero/master
    
    Fixing `raise` issue on seeds.rb

[33mcommit fa93799f51ab755996f628bf33d47216b13a3816[m
Author: Fabio Neves <fabio@fzero.ca>
Date:   Mon Nov 14 11:18:24 2016 -0500

    Fixing `raise` issue on seeds.rb
    
    Running `rake db:setup` shouldn't blow up when RAILS_ENV=test. It should
    simply exit gracefully instead.

[33mcommit f8acb1ff8aa068ba1acc17c893f736cd7c83b7b9[m
Author: James Sapara <james.sapara@gmail.com>
Date:   Wed Nov 9 14:58:57 2016 -0800

    add our vagrant standard subnet to web-console whitelist. close #8

[33mcommit 785e26475d9d37cb39be27ae6bed52925c3b4338[m
Merge: a64b91b 8ad451b
Author: Khurram Virani <kvirani@gmail.com>
Date:   Mon Nov 7 12:19:57 2016 -0800

    Merge pull request #7 from adrianmc/product-create-bugs
    
    Product creation bug fixes

[33mcommit 8ad451b5a0df5033a111b8063f2b989c94ba0960[m
Author: Adrian Li <li.adrianmc@gmail.com>
Date:   Sun Nov 6 23:37:21 2016 -0500

    fix typo in controller so redirect works properly after product creation

[33mcommit aebb20f8b4e29abdc7140800619ec94326d6341b[m
Author: Adrian Li <li.adrianmc@gmail.com>
Date:   Sun Nov 6 23:37:00 2016 -0500

    fix form validation error (category_id instead of just category)

[33mcommit a64b91b1d5f406b516c43ecbe728a547c03b42c4[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Mon Aug 1 08:42:53 2016 -0700

    remove user model

[33mcommit 9f82fe2f176b1cb9eaec9cee94d1f0d80d0ed5f7[m
Author: James Sapara <james.sapara@gmail.com>
Date:   Wed Jul 27 13:01:27 2016 -0700

    link to rails guide v4.2 that this project uses

[33mcommit b47f2af1df1397dde89f06c39d7b28d8d1a044dd[m
Author: James Sapara <james.sapara@gmail.com>
Date:   Wed Jul 27 12:47:06 2016 -0700

    updated instructions to mention the secrets.yml config, removed db example developer credentials, readme updated

[33mcommit 2ca6cde04685387c6d68b8fe0f46f250015b7149[m
Author: James S <james.sapara@gmail.com>
Date:   Wed Jul 27 11:57:54 2016 -0700

    Removed development pg credentials setup step
    
    default works fine.

[33mcommit d1241ed46e0a85e3501ddcceb01d9be5c9572c04[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Wed Jul 27 01:11:39 2016 -0700

    remove unncessary files

[33mcommit e1e76cf2aabd00ca59f8dc5e2fda93bac9ecb617[m
Author: Khurram Virani <kvirani@gmail.com>
Date:   Wed Jul 27 01:09:29 2016 -0700

    Final commit
