# Measure Performance for Great Good

## Important metrics

DOMContentLoaded
Load Time
Perceived load time
XHR requests
Cached resources
Angular Watchers
Total Download Size (Network tab => bottom left)
Frames per Second

## DOMContentLoaded Steps

1. Parse HTML
2. Recalculate Style
3. Layout (Avoid Layout thrashing!)
4. Painting
5. Evaluate Script (On mobile, expect 2x time of desktop)

### How to avoid layout thrashing

Avoid recalculating geometry

## Measuring XHRs

You can filter with `larger-than:`

## FPS

Target: 60 FPS
That leaves ~16ms per frame

Watch out for JANK :-P
