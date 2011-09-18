---
date: 2011/07/25 15:53:00
title: "parallel test suite"
---

As you may know, i3 v4.0 has a big test suite (currently 642 tests in 72
files). As the test suite grew over time, the time needed to run all tests has
increased. While we want to spend some time on removing the delays in the tests
by properly checking if the X11 events have been processed, there also is an
easier solution for now: Running the tests in parallel.

I just <a
href="http://code.stapelberg.de/git/i3/commit/?id=4dde5bb863d6670f6aa70ef2b714e98ea2474dcd">pushed
the commit to make our run script, complete-run.pl</a>, do exactly that.

Have a look at the time which was necessary to run a test before this commit:

    All tests successful.
    Files=72, Tests=642, 139 wallclock secs (135.87 usr  0.47 sys + 34.86 cusr  3.12 csys = 174.32 CPU)
    Result: PASS

…and after this commit:

    All tests successful.
    Files=72, Tests=642, 48 wallclock secs ( 0.28 usr  0.40 sys + 37.04 cusr  3.37 csys = 41.09 CPU)
    Result: PASS

48 seconds vs. 139 seconds is a pretty impressive speed-up :).
