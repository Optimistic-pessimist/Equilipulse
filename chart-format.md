# Chart format
## File format
File ***must*** be in **json** format
## Content
```
{
    "music": "<path to song>",
    "bps": "<beats per second>", "beats": "<beat count>",
    "chart": [
        <chart>
    ]
}
```
## Charting
The ```"chart"``` section of the json has to be filled with:
```
[
    [],         beat 1
    []          beat 2
]
```

There are three types of notes: tap, drag, hold.
Include the notes in each beat of the json.
tap:
```
{
    "type": "tap",
    "lane": <lane of note>
}
```

drag:
```
{
    "type": "drag",
    "lane": <lane of note>
}
```

hold:
```
{
    "type": "hold",
    "lane": <lane of note>,
    "beats": <beats to be held>
}
```
