.class public Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;
.super Ljava/lang/Object;
.source "smlCalendarAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field public m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

.field public m_Reminder:I


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;)V
    .registers 2
    .parameter "Event"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)V
    .registers 33
    .parameter "vCalendar"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_6

    .line 245
    :cond_5
    :goto_5
    return-void

    .line 38
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    if-nez v25, :cond_19

    .line 39
    new-instance v25, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    invoke-direct/range {v25 .. v25}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 41
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->luid:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    .line 43
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2e4

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    const-string v26, "NOTITLE"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    .line 48
    :goto_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nALLDAY:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    .line 53
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c1

    .line 55
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2f8

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    .line 61
    :cond_c1
    :goto_c1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f5

    .line 63
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_312

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    .line 69
    :cond_f5
    :goto_f5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    if-eqz v25, :cond_156

    .line 71
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v25, v0

    if-nez v25, :cond_156

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v25, v0

    if-nez v25, :cond_156

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v25, v0

    if-nez v25, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    const-wide/32 v27, 0x5265c00

    cmp-long v25, v25, v27

    if-ltz v25, :cond_156

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    .line 82
    :cond_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_180

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->timezone:Ljava/lang/String;

    .line 86
    :cond_180
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1e9

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    move/from16 v25, v0

    if-lez v25, :cond_32c

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    const-wide/32 v27, 0x5265c00

    add-long v25, v25, v27

    const-wide/16 v27, 0x1

    sub-long v25, v25, v27

    const-wide/32 v27, 0x5265c00

    div-long v7, v25, v27

    .line 91
    .local v7, days:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "D"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    .line 100
    .end local v7           #days:J
    :cond_1e9
    :goto_1e9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    move-object/from16 v25, v0

    if-eqz v25, :cond_375

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_375

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-wide/from16 v19, v0

    .line 103
    .local v19, startMill:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 104
    .local v4, alarmMill:J
    const/4 v12, 0x0

    .line 106
    .local v12, min:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    .line 108
    sub-long v25, v19, v4

    const-wide/32 v27, 0xea60

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v12, v0

    .line 109
    move-object/from16 v0, p0

    iput v12, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Reminder:I

    .line 116
    .end local v4           #alarmMill:J
    .end local v12           #min:I
    .end local v19           #startMill:J
    :goto_23e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 118
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v18, v0

    .line 119
    .local v18, start:Landroid/text/format/Time;
    const/16 v24, 0x0

    .line 121
    .local v24, until:Ljava/lang/String;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xe10

    div-long v27, v27, v29

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 123
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "#0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3eb

    .line 125
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "DAILY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_385

    .line 127
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 128
    invoke-static/range {v18 .. v18}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    .line 145
    :cond_2a2
    :goto_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "#0"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    .line 243
    :cond_2c0
    :goto_2c0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RRULE : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 46
    .end local v18           #start:Landroid/text/format/Time;
    .end local v24           #until:Ljava/lang/String;
    :cond_2e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    goto/16 :goto_45

    .line 58
    :cond_2f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    goto/16 :goto_c1

    .line 66
    :cond_312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    goto/16 :goto_f5

    .line 95
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    const-wide/16 v27, 0x3e8

    div-long v16, v25, v27

    .line 96
    .local v16, seconds:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "S"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    goto/16 :goto_1e9

    .line 113
    .end local v16           #seconds:J
    :cond_375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    goto/16 :goto_23e

    .line 130
    .restart local v18       #start:Landroid/text/format/Time;
    .restart local v24       #until:Ljava/lang/String;
    :cond_385
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "WEEKLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3a7

    .line 132
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x5

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 133
    invoke-static/range {v18 .. v18}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2a2

    .line 135
    :cond_3a7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "MONTHLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3c9

    .line 137
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0xa

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 138
    invoke-static/range {v18 .. v18}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2a2

    .line 140
    :cond_3c9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "YEARLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2a2

    .line 142
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x32

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 143
    invoke-static/range {v18 .. v18}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2a2

    .line 147
    :cond_3eb
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "#"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5fc

    .line 149
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 150
    .local v9, end:Landroid/text/format/Time;
    const/16 v22, 0x0

    .line 151
    .local v22, str_rrule_cnt:Ljava/lang/String;
    const/16 v21, 0x0

    .line 152
    .local v21, str_intercval:Ljava/lang/String;
    const/16 v23, 0x0

    .line 153
    .local v23, szTmp:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 154
    .local v13, occurrences:I
    const/4 v11, 0x0

    .line 156
    .local v11, interval:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "UNTIL="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 158
    .local v14, pos:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 159
    const/4 v10, 0x0

    .local v10, idx:I
    :goto_41f
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_477

    .line 161
    aget-object v25, v23, v10

    invoke-static/range {v25 .. v25}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_433

    .line 159
    :cond_430
    :goto_430
    add-int/lit8 v10, v10, 0x1

    goto :goto_41f

    .line 164
    :cond_433
    aget-object v25, v23, v10

    const-string v26, "UNTIL=#"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_456

    .line 166
    aget-object v25, v23, v10

    const/16 v26, 0x7

    aget-object v27, v23, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 167
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    goto :goto_430

    .line 169
    :cond_456
    aget-object v25, v23, v10

    const-string v26, "INTERVAL="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_430

    .line 171
    aget-object v25, v23, v10

    const/16 v26, 0x9

    aget-object v27, v23, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 172
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_430

    .line 176
    :cond_477
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v11, v0, :cond_47e

    .line 178
    mul-int/2addr v13, v11

    .line 181
    :cond_47e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "DAILY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_50d

    .line 183
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v25, v0

    add-int v25, v25, v13

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 184
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4fd

    .line 185
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 188
    :goto_4b7
    invoke-static {v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    .line 217
    :cond_4bb
    :goto_4bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v28, v14, 0x6

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    .line 219
    invoke-static/range {v24 .. v24}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2c0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    goto/16 :goto_2c0

    .line 187
    :cond_4fd
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto :goto_4b7

    .line 190
    :cond_50d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "WEEKLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_55e

    .line 192
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v25, v0

    mul-int/lit8 v26, v13, 0x7

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 193
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_54e

    .line 194
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 197
    :goto_548
    invoke-static {v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4bb

    .line 196
    :cond_54e
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto :goto_548

    .line 199
    :cond_55e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "MONTHLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5ad

    .line 201
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    add-int v25, v25, v13

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 202
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_59d

    .line 203
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 206
    :goto_597
    invoke-static {v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4bb

    .line 205
    :cond_59d
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto :goto_597

    .line 208
    :cond_5ad
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "YEARLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4bb

    .line 210
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    add-int v25, v25, v13

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 211
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5ec

    .line 212
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 215
    :goto_5e6
    invoke-static {v9}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4bb

    .line 214
    :cond_5ec
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto :goto_5e6

    .line 224
    .end local v9           #end:Landroid/text/format/Time;
    .end local v10           #idx:I
    .end local v11           #interval:I
    .end local v13           #occurrences:I
    .end local v14           #pos:I
    .end local v21           #str_intercval:Ljava/lang/String;
    .end local v22           #str_rrule_cnt:Ljava/lang/String;
    .end local v23           #szTmp:[Ljava/lang/String;
    :cond_5fc
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 225
    .local v6, before:Landroid/text/format/Time;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 226
    .local v3, after:Landroid/text/format/Time;
    const/4 v15, 0x0

    .line 228
    .local v15, rrule_until:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "UNTIL="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 229
    .restart local v10       #idx:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int/lit8 v26, v10, 0x6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 230
    invoke-static {v15}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemStringTimeToVItemTime(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v6

    .line 232
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    iget-wide v0, v6, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xe10

    div-long v27, v27, v29

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 233
    iget v0, v6, Landroid/text/format/Time;->isDst:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6a2

    .line 234
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 238
    :goto_662
    invoke-static {v3}, Lcom/syncmldstmo/base/vitem/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v24

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v28, v10, 0x6

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    goto/16 :goto_2c0

    .line 236
    :cond_6a2
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    goto :goto_662
.end method

.method public static DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;
    .registers 3
    .parameter "DecodeStr"

    .prologue
    .line 249
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCal;->DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 250
    .local v1, vCalendar:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;

    invoke-direct {v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)V

    .line 252
    .local v0, calendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;
    return-object v0
.end method

.method public static EncodeVCal(Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;)Ljava/lang/String;
    .registers 3
    .parameter "CalendarItem"

    .prologue
    .line 379
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->ToSmlvCal_t(Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 380
    .local v1, vCalendar:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvCal;->EncodeVCal(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, szEncoded:Ljava/lang/String;
    return-object v0
.end method

.method public static ToSmlvCal_t(Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    .registers 18
    .parameter "CalendarItem"

    .prologue
    .line 258
    new-instance v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;

    invoke-direct {v9}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;-><init>()V

    .line 260
    .local v9, vCalendar:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    iput v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->luid:I

    .line 261
    sget-object v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->VERSION:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    .line 262
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->SUMMARY:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->LOCATION:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->RRULE:Ljava/lang/String;

    .line 266
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    iput v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->nALLDAY:I

    .line 268
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    if-lez v10, :cond_f7

    .line 270
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    if-nez v10, :cond_4c

    .line 271
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    .line 272
    :cond_4c
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    if-nez v10, :cond_57

    .line 273
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    .line 275
    :cond_57
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    const-string v11, "UTC"

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 276
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    const-string v11, "UTC"

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 277
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 278
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 280
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/text/format/Time;->allDay:Z

    .line 281
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/text/format/Time;->allDay:Z

    .line 283
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    if-nez v10, :cond_a5

    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->minute:I

    if-nez v10, :cond_a5

    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    if-nez v10, :cond_a5

    .line 285
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    iget v11, v10, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Landroid/text/format/Time;->monthDay:I

    .line 286
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    const/16 v11, 0x18

    iput v11, v10, Landroid/text/format/Time;->hour:I

    .line 347
    :cond_a5
    :goto_a5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    if-lez v10, :cond_f6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_f6

    .line 351
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    if-nez v10, :cond_d3

    .line 353
    new-instance v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    invoke-direct {v10}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;-><init>()V

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    .line 355
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    if-nez v10, :cond_d3

    .line 356
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    iput-object v11, v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    .line 361
    :cond_d3
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->bUsed:Z

    .line 363
    move-object/from16 v0, p0

    iget v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Reminder:I

    if-lez v10, :cond_1b8

    .line 365
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Reminder:I

    mul-int/lit8 v12, v12, 0x3c

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    sub-long v2, v10, v12

    .line 366
    .local v2, dtAlarm:J
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    invoke-virtual {v10, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 374
    .end local v2           #dtAlarm:J
    :cond_f6
    :goto_f6
    return-object v9

    .line 291
    :cond_f7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_119

    .line 293
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    if-nez v10, :cond_10e

    .line 294
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    .line 296
    :cond_10e
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->STARTDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 299
    :cond_119
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_13d

    .line 301
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    if-nez v10, :cond_130

    .line 302
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    .line 304
    :cond_130
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_a5

    .line 308
    :cond_13d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    invoke-static {v10}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a5

    .line 310
    const/4 v6, 0x0

    .line 311
    .local v6, nIndex:I
    const-wide/16 v4, 0x0

    .line 312
    .local v4, duration:J
    const-string v8, ""

    .line 313
    .local v8, szValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    .local v1, bflag:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v7, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    .line 316
    .local v7, szTmp:Ljava/lang/String;
    const-string v10, "S"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_197

    .line 318
    const/4 v1, 0x1

    .line 325
    :cond_15e
    :goto_15e
    if-lez v6, :cond_a5

    .line 327
    const/4 v10, 0x1

    invoke-virtual {v7, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 330
    if-eqz v1, :cond_1a1

    .line 332
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v4

    add-long/2addr v11, v13

    iput-wide v11, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    .line 338
    :goto_17f
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    if-nez v10, :cond_18a

    .line 339
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    .line 341
    :cond_18a
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->ENDDATE:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_a5

    .line 320
    :cond_197
    const-string v10, "D"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_15e

    .line 322
    const/4 v1, 0x0

    goto :goto_15e

    .line 336
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    const-wide/16 v13, 0x18

    mul-long/2addr v13, v4

    const-wide/16 v15, 0xe10

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    iput-wide v11, v10, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    goto :goto_17f

    .line 370
    .end local v1           #bflag:Z
    .end local v4           #duration:J
    .end local v6           #nIndex:I
    .end local v7           #szTmp:Ljava/lang/String;
    .end local v8           #szValue:Ljava/lang/String;
    :cond_1b8
    iget-object v10, v9, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCal_t;->AALARM:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;

    iget-object v10, v10, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalAlarm_t;->RunTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v11, v11, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_f6
.end method

.method public static deleteAllCalendar(Landroid/content/ContentResolver;)Z
    .registers 15
    .parameter "cResolver"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 638
    const/4 v8, 0x0

    .line 639
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 641
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 642
    .local v10, rawId:I
    const/4 v11, 0x0

    .line 644
    .local v11, ret:I
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    .line 646
    .local v2, from:[Ljava/lang/String;
    const-string v3, "calendar_id=\"1\""

    .line 650
    :try_start_e
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 652
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 653
    .local v6, Id:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 657
    :cond_23
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 658
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 659
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 661
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 663
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_41} :catch_4d

    move-result v0

    if-nez v0, :cond_23

    .line 672
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :cond_44
    if-eqz v8, :cond_49

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 676
    .end local v6           #Id:I
    :cond_49
    :goto_49
    if-ltz v11, :cond_62

    move v0, v12

    .line 679
    :goto_4c
    return v0

    .line 666
    :catch_4d
    move-exception v9

    .line 668
    .local v9, e:Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_5b

    .line 672
    if-eqz v8, :cond_49

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_49

    .line 672
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_5b
    move-exception v0

    if-eqz v8, :cond_61

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0

    :cond_62
    move v0, v13

    .line 679
    goto :goto_4c
.end method

.method public static deleteCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 8
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 615
    .local v1, deleteId:I
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 616
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 620
    :try_start_a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_1d

    move-result v1

    .line 627
    :goto_14
    if-gtz v1, :cond_26

    .line 629
    const-string v3, "Events db delete fail"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 630
    const/4 v3, 0x0

    .line 633
    :goto_1c
    return v3

    .line 622
    :catch_1d
    move-exception v2

    .line 624
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_14

    .line 633
    .end local v2           #e:Ljava/lang/Exception;
    :cond_26
    const/4 v3, 0x1

    goto :goto_1c
.end method

.method private getEventCV()Landroid/content/ContentValues;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 427
    const-string v1, "title"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_1a
    const-string v1, "calendar_id"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 435
    const-string v1, "description"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_34
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 438
    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_47
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_5c

    .line 441
    const-string v1, "dtstart"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 443
    :cond_5c
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_71

    .line 444
    const-string v1, "dtend"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-wide v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    :cond_71
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->timezone:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 447
    const-string v1, "eventTimezone"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_84
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 450
    const-string v1, "duration"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_97
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    if-lez v1, :cond_aa

    .line 453
    const-string v1, "allDay"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    :cond_aa
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    if-lez v1, :cond_bd

    .line 456
    const-string v1, "hasAlarm"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    :cond_bd
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 459
    const-string v1, "rrule"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_d0
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    if-eqz v1, :cond_e3

    .line 462
    const-string v1, "_id"

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    :cond_e3
    return-object v0

    .line 429
    :cond_e4
    const-string v1, "title"

    const-string v2, "NOTITLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a
.end method


# virtual methods
.method public addCalendar(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 10
    .parameter "cResolver"

    .prologue
    const/4 v5, 0x0

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 485
    .local v4, uri:Landroid/net/Uri;
    const-string v3, ""

    .line 487
    .local v3, szId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->getEventCV()Landroid/content/ContentValues;

    move-result-object v0

    .line 488
    if-nez v0, :cond_c

    .line 534
    :cond_b
    :goto_b
    return-object v5

    .line 493
    :cond_c
    :try_start_c
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_1a

    move-result-object v4

    .line 500
    :goto_12
    if-nez v4, :cond_23

    .line 502
    const-string v6, "Events db insert fail"

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_b

    .line 495
    :catch_1a
    move-exception v1

    .line 497
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_12

    .line 506
    .end local v1           #e:Ljava/lang/Exception;
    :cond_23
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #szId:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 508
    .restart local v3       #szId:Ljava/lang/String;
    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 511
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v6, v6, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    if-lez v6, :cond_5f

    .line 513
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 514
    .local v2, event_id:I
    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->getReminderCV(I)Landroid/content/ContentValues;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_b

    .line 520
    :try_start_48
    sget-object v6, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_56

    move-result-object v4

    .line 527
    :goto_4e
    if-nez v4, :cond_5f

    .line 529
    const-string v6, "Reminders db insert fail"

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_b

    .line 522
    :catch_56
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_4e

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #event_id:I
    :cond_5f
    move-object v5, v3

    .line 534
    goto :goto_b
.end method

.method public getReminderCV(I)Landroid/content/ContentValues;
    .registers 5
    .parameter "event_id"

    .prologue
    .line 469
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v0, cv:Landroid/content/ContentValues;
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Reminder:I

    if-gez v1, :cond_b

    .line 472
    const/4 v0, 0x0

    .line 478
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_a
    return-object v0

    .line 474
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_b
    const-string v1, "event_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string v1, "minutes"

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Reminder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a
.end method

.method public replaceCalendar(Landroid/content/ContentResolver;I)Z
    .registers 16
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, cv:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 541
    .local v10, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 543
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->getEventCV()Landroid/content/ContentValues;

    move-result-object v7

    .line 544
    if-nez v7, :cond_d

    move v0, v11

    .line 607
    :goto_c
    return v0

    .line 549
    :cond_d
    :try_start_d
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 551
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v10, v7, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2b

    .line 553
    const-string v0, "Events db update fail"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_23

    move v0, v11

    .line 554
    goto :goto_c

    .line 557
    :catch_23
    move-exception v8

    .line 559
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 562
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2b
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    if-lez v0, :cond_aa

    .line 564
    invoke-virtual {p0, p2}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->getReminderCV(I)Landroid/content/ContentValues;

    move-result-object v7

    .line 565
    if-nez v7, :cond_39

    move v0, v11

    .line 566
    goto :goto_c

    .line 568
    :cond_39
    const/4 v9, 0x0

    .line 570
    .local v9, reminders_id:I
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    .line 571
    .local v2, from:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, where:Ljava/lang/String;
    :try_start_59
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 577
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 579
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_71} :catch_8d

    move-result v9

    .line 588
    :cond_72
    if-eqz v6, :cond_77

    .line 589
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_77
    :goto_77
    :try_start_77
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 596
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v10, v7, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_aa

    .line 598
    const-string v0, "Reminders db update fail"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8b} :catch_a2

    move v0, v11

    .line 599
    goto :goto_c

    .line 582
    :catch_8d
    move-exception v8

    .line 584
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_8e
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_9b

    .line 588
    if-eqz v6, :cond_77

    .line 589
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 588
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_9b
    move-exception v0

    if-eqz v6, :cond_a1

    .line 589
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v0

    .line 602
    :catch_a2
    move-exception v8

    .line 604
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .end local v2           #from:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #reminders_id:I
    :cond_aa
    move v0, v12

    .line 607
    goto/16 :goto_c
.end method
