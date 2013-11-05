// ==UserScript==
// @name        fpc svn to viewvc
// @namespace   http://tangentcode.com/
// @include     http://svn.freepascal.org/*
// @version     1
// @grant       none
// ==/UserScript==

// script to cross-link fpc svn repo with viewvc install
// because often the svn url comes up first, but you can't
// really browse it because of mime type issues.

var path = document.location.pathname; // eg: /svn/fpc/trunk/packages/dbus

var result = '/cgi-bin/viewvc.cgi';

// (special case: the root, which does not list the repos)
// I have: http://svn.freepascal.org/svn/
// I want: http://svn.freepascal.org/cgi-bin/viewvc.cgi?view=roots

if (path == '/svn/' || path == '/' || path == '') { 

  result += '?view=roots';

} else {

// (case 1 : main repo)
// I have: http://svn.freepascal.org/svn/fpc/trunk/packages/dbus/
// I want: http://svn.freepascal.org/cgi-bin/viewvc.cgi/trunk/packages/dbus/

// (case 2 : secondary repo)
// I have: http://svn.freepascal.org/svn/fpcprojects/fpcircbot/
// I want: http://svn.freepascal.org/cgi-bin/viewvc.cgi/fpcircbot/?root=fpcprojects

    var crumbs = path.split('/');              // ["", "svn", "fpc", "trunk", "packages", "dbus", ""]
    crumbs = crumbs.slice(2, crumbs.length-1); // ["fpc", "trunk", "packages", "dbus"]

    var root = crumbs.shift();    
    crumbs.push((root == "fpc") ? '' : '?root=' + root);    
    
    crumbs.unshift(result);
    
    result = crumbs.join("/");
}

if (! path.startsWith('/cgi')) {
   var a = document.createElement('a');
   a.setAttribute('href', result);
   a.innerHTML = 'browse in viewvc';
   var body = document.querySelector('body');
   body.insertBefore(a, body.children[0]);
}
