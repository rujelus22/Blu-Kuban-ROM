.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 15
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 58
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v11, p1, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    if-nez v11, :cond_11

    .line 59
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Expected CalendarEntry!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_11
    move-object v2, p1

    .line 61
    check-cast v2, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    .line 65
    .local v2, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, name:Ljava/lang/String;
    const-string v11, "accesslevel"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 67
    const-string v11, "value"

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, accesslevelStr:Ljava/lang/String;
    const/4 v0, 0x1

    .line 70
    .local v0, accesslevel:B
    const-string v11, "none"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 71
    const/4 v0, 0x0

    .line 87
    :cond_30
    :goto_30
    invoke-virtual {v2, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 121
    .end local v0           #accesslevel:B
    .end local v1           #accesslevelStr:Ljava/lang/String;
    :cond_33
    :goto_33
    return-void

    .line 72
    .restart local v0       #accesslevel:B
    .restart local v1       #accesslevelStr:Ljava/lang/String;
    :cond_34
    const-string v11, "read"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 73
    const/4 v0, 0x1

    goto :goto_30

    .line 74
    :cond_3e
    const-string v11, "freebusy"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 75
    const/4 v0, 0x2

    goto :goto_30

    .line 76
    :cond_48
    const-string v11, "contributor"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 79
    const/4 v0, 0x3

    goto :goto_30

    .line 80
    :cond_52
    const-string v11, "editor"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 81
    const/4 v0, 0x3

    goto :goto_30

    .line 82
    :cond_5c
    const-string v11, "owner"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 83
    const/4 v0, 0x4

    goto :goto_30

    .line 84
    :cond_66
    const-string v11, "root"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 85
    const/4 v0, 0x5

    goto :goto_30

    .line 88
    .end local v0           #accesslevel:B
    .end local v1           #accesslevelStr:Ljava/lang/String;
    :cond_70
    const-string v11, "color"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 89
    const-string v11, "value"

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, color:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_33

    .line 92
    .end local v3           #color:Ljava/lang/String;
    :cond_82
    const-string v11, "hidden"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 93
    const-string v11, "value"

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, hiddenStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 96
    .local v4, hidden:Z
    const-string v11, "false"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 97
    const/4 v4, 0x0

    .line 101
    :cond_9a
    :goto_9a
    invoke-virtual {v2, v4}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 103
    if-eqz v4, :cond_33

    .line 104
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_33

    .line 98
    :cond_a4
    const-string v11, "true"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 99
    const/4 v4, 0x1

    goto :goto_9a

    .line 106
    .end local v4           #hidden:Z
    .end local v5           #hiddenStr:Ljava/lang/String;
    :cond_ae
    const-string v11, "selected"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d5

    .line 107
    const-string v11, "value"

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, selectedStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 110
    .local v8, selected:Z
    const-string v11, "false"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cb

    .line 111
    const/4 v8, 0x0

    .line 115
    :cond_c6
    :goto_c6
    invoke-virtual {v2, v8}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_33

    .line 112
    :cond_cb
    const-string v11, "true"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 113
    const/4 v8, 0x1

    goto :goto_c6

    .line 116
    .end local v8           #selected:Z
    .end local v9           #selectedStr:Ljava/lang/String;
    :cond_d5
    const-string v11, "timezone"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 117
    const-string v11, "value"

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, timezone:Ljava/lang/String;
    invoke-virtual {v2, v10}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
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
    .line 132
    const-string v1, "alternate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "application/atom+xml"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v0, p4

    .line 134
    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    .line 135
    .local v0, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAlternateLink(Ljava/lang/String;)V

    .line 137
    .end local v0           #calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    :cond_16
    return-void
.end method
