$NetBSD: patch-misc_misc.c,v 1.1 2020/12/20 15:15:02 fcambus Exp $

Fixed crash in change_mem2() on 64-bit platforms.

Patch from upstream: https://sourceforge.net/p/ucon64/svn/2822/

--- misc/misc.c.orig	2020-07-03 08:09:50.000000000 +0000
+++ misc/misc.c
@@ -501,7 +501,7 @@ change_mem2 (char *buf, size_t bufsize, 
 
           if (strpos == pos_1st_esc)
             setindex = 0;                       // reset argument pointer
-          if (pos_1st_esc == (unsigned int) -1)
+          if (pos_1st_esc == (size_t) -1)
             pos_1st_esc = strpos;
 
           set = sets[setindex].data;            // get next set of characters
