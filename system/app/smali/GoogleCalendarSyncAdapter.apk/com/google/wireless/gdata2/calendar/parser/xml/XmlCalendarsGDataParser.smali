.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# static fields
.field private static EVENT_FEED_SCHEMA:Ljava/lang/String;

.field private static GCAL_NAMESPACE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "http://schemas.google.com/gCal/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    .line 25
    const-string v0, "http://schemas.google.com/gCal/2005#eventFeed"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->EVENT_FEED_SCHEMA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 16
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 63
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v12, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-nez v12, :cond_11

    .line 64
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Expected CalendarEntry!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_11
    move-object v2, p1

    .line 66
    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 68
    .local v2, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, name:Ljava/lang/String;
    sget-object v12, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    invoke-static {v8, v12}, Lcom/google/wireless/gdata2/data/XmlUtils;->matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 71
    const-string v12, "accesslevel"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_78

    .line 72
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, accesslevelStr:Ljava/lang/String;
    const/4 v0, 0x1

    .line 75
    .local v0, accesslevel:B
    const-string v12, "none"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 76
    const/4 v0, 0x0

    .line 92
    :cond_38
    :goto_38
    invoke-virtual {v2, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 131
    .end local v0           #accesslevel:B
    .end local v1           #accesslevelStr:Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 77
    .restart local v0       #accesslevel:B
    .restart local v1       #accesslevelStr:Ljava/lang/String;
    :cond_3c
    const-string v12, "read"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46

    .line 78
    const/4 v0, 0x1

    goto :goto_38

    .line 79
    :cond_46
    const-string v12, "freebusy"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_50

    .line 80
    const/4 v0, 0x2

    goto :goto_38

    .line 81
    :cond_50
    const-string v12, "contributor"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 84
    const/4 v0, 0x3

    goto :goto_38

    .line 85
    :cond_5a
    const-string v12, "editor"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 86
    const/4 v0, 0x3

    goto :goto_38

    .line 87
    :cond_64
    const-string v12, "owner"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 88
    const/4 v0, 0x4

    goto :goto_38

    .line 89
    :cond_6e
    const-string v12, "root"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 90
    const/4 v0, 0x5

    goto :goto_38

    .line 93
    .end local v0           #accesslevel:B
    .end local v1           #accesslevelStr:Ljava/lang/String;
    :cond_78
    const-string v12, "color"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8a

    .line 94
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, color:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_3b

    .line 97
    .end local v3           #color:Ljava/lang/String;
    :cond_8a
    const-string v12, "hidden"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b6

    .line 98
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, hiddenStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 101
    .local v4, hidden:Z
    const-string v12, "false"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 102
    const/4 v4, 0x0

    .line 106
    :cond_a2
    :goto_a2
    invoke-virtual {v2, v4}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 108
    if-eqz v4, :cond_3b

    .line 109
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_3b

    .line 103
    :cond_ac
    const-string v12, "true"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 104
    const/4 v4, 0x1

    goto :goto_a2

    .line 111
    .end local v4           #hidden:Z
    .end local v5           #hiddenStr:Ljava/lang/String;
    :cond_b6
    const-string v12, "selected"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_dd

    .line 112
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, selectedStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 115
    .local v9, selected:Z
    const-string v12, "false"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d3

    .line 116
    const/4 v9, 0x0

    .line 120
    :cond_ce
    :goto_ce
    invoke-virtual {v2, v9}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_3b

    .line 117
    :cond_d3
    const-string v12, "true"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ce

    .line 118
    const/4 v9, 0x1

    goto :goto_ce

    .line 121
    .end local v9           #selected:Z
    .end local v10           #selectedStr:Ljava/lang/String;
    :cond_dd
    const-string v12, "timezone"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f0

    .line 122
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, timezone:Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 125
    .end local v11           #timezone:Ljava/lang/String;
    :cond_f0
    const-string v12, "overridename"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 126
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, overrideName:Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    goto/16 :goto_3b
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 7
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v1, "application/atom+xml"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v0, p4

    .line 143
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 144
    .local v0, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    const-string v1, "self"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 145
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelfUri(Ljava/lang/String;)V

    .line 152
    .end local v0           #calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    :cond_16
    :goto_16
    return-void

    .line 146
    .restart local v0       #calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    :cond_17
    const-string v1, "edit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 147
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEditUri(Ljava/lang/String;)V

    goto :goto_16

    .line 148
    :cond_23
    sget-object v1, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->EVENT_FEED_SCHEMA:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 149
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEventsUri(Ljava/lang/String;)V

    goto :goto_16
.end method
