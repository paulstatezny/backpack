# About ADA

ADA is the law.
WCAG is the specification. (We're following v2.0) https://www.w3.org/TR/WCAG20/

# Programs to Know About

## Browsers

The ADA community does not use Chrome. They use Firefox mostly.

Support Firefox w/ whatever's latest + NVDA on Windows.
Support VoiceOver for iOS.

Note: with NVDA you can use "Speech Viewer" if you don't want to listen to the robot.

## Tools

Install aXe (Browser plugin that checks ADA friendliness) and NVDA (screen reader).
On Mac, just use VoiceOver. That's what the community uses because it's written well.

# Being Compliant

Most of ADA compliance is just good HTML.

## The natural/correct use of HTML

 - <a> tags take the user somewhere.
 - <button> tags perform an action.
 - <div> and <span> tags *aren't clickable*, so don't use them for buttons!
 - Don't haphazardly use h tags (h1, h2, etc) -- if it's not really a heading, don't put it in an h tag.
 - `id` attributes -- these are unique!11!1!
 - <label for="foo-bar"> -- `for` specified the `id` of an <input> element.

# WCAG Spec

 - Perceivable
 - Operable
 - Understandable
 - Robust

## Perceivable

### 1.1 Provide text alternatives for non-text content.

## Operable

### 2.1 Keyboard Accessible

Means you can tab through (and select) things.
Spacebar and enter should be the same as a click.

## New Terminology

"Landmarks" - Ways for people to navigate the page. (Since they can't see it.)
Break up page into e.g. "header, hero, nav bar"

## ARIA attributes

Stands for "Accessible Rich Internet Applications".
Urged us to avoid aria whenever possible. It's usually a patch for crappy HTML. (e.g. <span aria-role="checkbox" aria-labelledby="foo-bar" aria-checked="true"> instead of just <input type="checkbox">)
