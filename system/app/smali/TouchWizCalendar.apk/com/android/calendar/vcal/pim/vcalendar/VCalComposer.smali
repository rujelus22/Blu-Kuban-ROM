.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;
.super Ljava/lang/Object;
.source "VCalComposer.java"


# static fields
.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "\r\n"

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private buildEventStr(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;I)Ljava/lang/String;
    .registers 12
    .parameter "stru"
    .parameter "vcalversion"

    .prologue
    const/4 v8, 0x1

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v4, strbuf:Ljava/lang/StringBuilder;
    const-string v5, "BEGIN:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 107
    const-string v5, "UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2a
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 110
    const-string v5, "DESCRIPTION;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_5a
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 115
    if-ne p2, v8, :cond_1c3

    .line 116
    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_1b0

    .line 117
    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->endday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_79
    :goto_79
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 131
    if-ne p2, v8, :cond_200

    .line 132
    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_1ed

    .line 133
    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->startday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_98
    :goto_98
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 147
    const-string v5, "DUE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_b1
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e1

    .line 151
    const-string v5, "LOCATION;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_e1
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 156
    const-string v5, "COMPLETED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_fa
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_113

    .line 159
    const-string v5, "RRULE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_113
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_143

    .line 163
    const-string v5, "SUMMARY;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_143
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_165

    .line 168
    const-string v3, "TENTATIVE"

    .line 169
    .local v3, stat:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_282

    .line 182
    :goto_156
    const-string v5, "STATUS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .end local v3           #stat:Ljava/lang/String;
    :cond_165
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_271

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    if-eqz v5, :cond_271

    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_271

    .line 187
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    const-string v6, "vcalendar1.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_242

    .line 188
    const-string v2, ""

    .line 189
    .local v2, prefix:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_271

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    .local v1, method:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_28c

    .line 202
    const-string v2, "DALARM"

    .line 205
    :goto_1a0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18b

    .line 119
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #method:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_1b0
    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_79

    .line 122
    :cond_1c3
    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_1da

    .line 124
    const-string v5, "DTEND;VALUE=DATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->endday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_79

    .line 126
    :cond_1da
    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_79

    .line 135
    :cond_1ed
    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_98

    .line 138
    :cond_200
    iget-boolean v5, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    if-eqz v5, :cond_217

    .line 140
    const-string v5, "DTSTART;VALUE=DATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->startday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_98

    .line 142
    :cond_217
    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_98

    .line 171
    .restart local v3       #stat:Ljava/lang/String;
    :pswitch_22a
    const-string v3, "TENTATIVE"

    .line 172
    goto/16 :goto_156

    .line 174
    :pswitch_22e
    const-string v3, "CONFIRMED"

    .line 175
    goto/16 :goto_156

    .line 177
    :pswitch_232
    const-string v3, "CANCELLED"

    .line 178
    goto/16 :goto_156

    .line 192
    .end local v3           #stat:Ljava/lang/String;
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #method:Ljava/lang/String;
    .restart local v2       #prefix:Ljava/lang/String;
    :pswitch_236
    const-string v2, "DALARM"

    .line 193
    goto/16 :goto_1a0

    .line 195
    :pswitch_23a
    const-string v2, "AALARM"

    .line 196
    goto/16 :goto_1a0

    .line 198
    :pswitch_23e
    const-string v2, "MALARM"

    .line 199
    goto/16 :goto_1a0

    .line 208
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #method:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_242
    const-string v5, "BEGIN:VALARM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ACTION:AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TRIGGER:-PT10M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "END:VALARM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_271
    const-string v5, "END:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 169
    nop

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_22a
        :pswitch_22e
        :pswitch_232
    .end packed-switch

    .line 190
    :pswitch_data_28c
    .packed-switch 0x0
        :pswitch_236
        :pswitch_23a
        :pswitch_23e
    .end packed-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "str"

    .prologue
    .line 223
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    const-string v7, "=3D"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v7, "=0D"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "=0A"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, data:Ljava/lang/String;
    new-instance v5, Ljava/util/BitSet;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    .line 227
    .local v2, qp:[B
    const/4 v3, 0x0

    .line 229
    .local v3, qpstr:Ljava/lang/String;
    :try_start_38
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_3f} :catch_41

    .end local v3           #qpstr:Ljava/lang/String;
    .local v4, qpstr:Ljava/lang/String;
    move-object v3, v4

    .line 233
    .end local v4           #qpstr:Ljava/lang/String;
    .restart local v3       #qpstr:Ljava/lang/String;
    :goto_40
    return-object v3

    .line 230
    :catch_41
    move-exception v1

    .line 231
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_40
.end method

.method private isNull(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 238
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 239
    :cond_12
    const/4 v0, 0x1

    .line 240
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public createVCal(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    .registers 9
    .parameter "struct"
    .parameter "vcalversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v1, returnStr:Ljava/lang/StringBuilder;
    if-eq p2, v5, :cond_13

    const/4 v3, 0x2

    if-eq p2, v3, :cond_13

    .line 58
    new-instance v3, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;

    const-string v4, "version not match 1.0 or 2.0."

    invoke-direct {v3, v4}, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_13
    if-ne p2, v5, :cond_72

    .line 60
    const-string v3, "vcalendar1.0"

    iput-object v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 65
    :goto_19
    const-string v3, "BEGIN:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    if-ne p2, v5, :cond_77

    .line 68
    const-string v3, "VERSION:1.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :goto_31
    const-string v3, "PRODID:vCal ID default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v3, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 75
    if-ne p2, v5, :cond_83

    .line 76
    const-string v3, "TZ:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_57
    :goto_57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_58
    iget-object v3, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f0

    .line 88
    iget-object v3, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {p0, v3, p2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->buildEventStr(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 62
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_72
    const-string v3, "vcalendar2.0"

    iput-object v3, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    goto :goto_19

    .line 70
    :cond_77
    const-string v3, "VERSION:2.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 78
    :cond_83
    const-string v3, "BEGIN:VTIMEZONE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZID:vCal default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BEGIN:STANDARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DTSTART:16010101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZOFFSETFROM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZOFFSETTO:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END:STANDARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END:VTIMEZONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_57

    .line 95
    .restart local v0       #i:I
    :cond_f0
    const-string v3, "END:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
