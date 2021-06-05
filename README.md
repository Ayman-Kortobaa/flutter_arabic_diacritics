# arabic_diacritics_test

A new Flutter project showing the issue with Arabic diacritics rendering.

![inApp-Image](https://i.imgur.com/4kSKwrc.jpg)

## Walkthrough

The app has a `Column` with three children to show different usage of diacritics with `TextSpan`.

**note:**  the app uses Uthmanic font but this behavior is apparent with almost every font.

1. The first line is when the diacritics are in a separate `TextSpan` it gets displayed like it is on its own (like how `TextSpan` should be treated but it doesn't work like that in Arabic context, the previous letter should be taken into account).
1. If the diacritics are in a `TextSpan` with a letter that they should be displayed on they get displayed correctly.
1. Using a `Text` widget with diacritics on a letter (first part) gets displayed correctly, and diacritics on their own (second part) they get displayed on baseline (which is correct in this case) like the diacritics in the first line with a single difference is in the first line there is a letter actually before the diacritics so they shouldn't be displayed like that.

## Conclusion
Diacritics get treated correctly by Flutter but in Arabic context is important as even if they are on their own in the `TextSpan` they should care about their position in the sentence.

The same is also applicable for some letters as they can be drawn differently depending on their place in a sentence or word but `TextSpan` doesn't always respect that, the underlined letter in the next picture is drawn longer than it should be when preceded with a `TextSpan` with different style.

![incorrect-letter](https://i.imgur.com/AHwjjGI.png)