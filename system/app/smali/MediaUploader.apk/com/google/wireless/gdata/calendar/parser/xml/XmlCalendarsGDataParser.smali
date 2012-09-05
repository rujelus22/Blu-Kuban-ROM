.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter
    .parameter
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
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 58
    instance-of v1, p1, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    if-nez v1, :cond_14

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected CalendarEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_14
    check-cast p1, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    .line 65
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "accesslevel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 67
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v0, v3

    .line 87
    :goto_31
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 125
    :cond_34
    :goto_34
    return-void

    .line 72
    :cond_35
    const-string v1, "read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    move v0, v5

    .line 73
    goto :goto_31

    .line 74
    :cond_3f
    const-string v1, "freebusy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 75
    const/4 v0, 0x2

    goto :goto_31

    .line 76
    :cond_49
    const-string v1, "contributor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    move v0, v6

    .line 79
    goto :goto_31

    .line 80
    :cond_53
    const-string v1, "editor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    move v0, v6

    .line 81
    goto :goto_31

    .line 82
    :cond_5d
    const-string v1, "owner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 83
    const/4 v0, 0x4

    goto :goto_31

    .line 84
    :cond_67
    const-string v1, "root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 85
    const/4 v0, 0x5

    goto :goto_31

    .line 88
    :cond_71
    const-string v2, "color"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 89
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_34

    .line 92
    :cond_83
    const-string v2, "hidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 93
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    move v0, v3

    .line 101
    :goto_9a
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 103
    if-eqz v0, :cond_34

    .line 104
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_34

    .line 98
    :cond_a3
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    move v0, v5

    .line 99
    goto :goto_9a

    .line 106
    :cond_ad
    const-string v2, "selected"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 107
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v0, v3

    .line 115
    :goto_c4
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_34

    .line 112
    :cond_c9
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    move v0, v5

    .line 113
    goto :goto_c4

    .line 116
    :cond_d3
    const-string v2, "timezone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 117
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 120
    :cond_e6
    const-string v2, "overridename"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 121
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_f9
    move v0, v3

    goto :goto_c4

    :cond_fb
    move v0, v3

    goto :goto_9a

    :cond_fd
    move v0, v5

    goto/16 :goto_31
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "alternate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "application/atom+xml"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 138
    check-cast p4, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    .line 139
    invoke-virtual {p4, p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAlternateLink(Ljava/lang/String;)V

    .line 141
    :cond_15
    return-void
.end method
