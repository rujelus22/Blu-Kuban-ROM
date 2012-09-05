.class public Lcom/vlingo/client/samsung/ScheduleUtil;
.super Ljava/lang/Object;
.source "ScheduleUtil.java"


# static fields
.field public static final SCHEDULE_PROJECTION:[Ljava/lang/String; = null

.field public static final SCHEDULE_SORT_ORDER:Ljava/lang/String; = "allDay DESC, dtstart ASC, title ASC"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/samsung/ScheduleUtil;->SCHEDULE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFiredCalendarAlerts(Landroid/content/Context;Ljava/util/Vector;I)I
    .registers 25
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, events:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    const/4 v9, 0x0

    .line 209
    .local v9, count:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 210
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 211
    .local v8, c:Landroid/database/Cursor;
    const-string v5, "state=1"

    .line 212
    .local v5, selection:Ljava/lang/String;
    const-string v7, "allDay DESC, dtstart ASC, title ASC LIMIT 50"

    .line 214
    .local v7, order:Ljava/lang/String;
    :try_start_a
    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/vlingo/client/samsung/ScheduleUtil;->SCHEDULE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 216
    if-eqz v8, :cond_19

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 219
    :cond_19
    if-eqz v8, :cond_b7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 220
    const/4 v11, 0x1

    .line 221
    .local v11, getIndicies:Z
    const/16 v18, 0x0

    .local v18, iTitle:I
    const/4 v12, 0x0

    .local v12, iAllDay:I
    const/4 v13, 0x0

    .line 222
    .local v13, iBegin:I
    const/4 v14, 0x0

    .local v14, iDescription:I
    const/16 v17, 0x0

    .line 223
    .local v17, iOrganizer:I
    const/4 v15, 0x0

    .local v15, iEnd:I
    const/16 v16, 0x0

    .line 226
    .local v16, iLocation:I
    :cond_2c
    if-eqz v11, :cond_59

    .line 227
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 228
    const-string v3, "allDay"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 229
    const-string v3, "begin"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 230
    const-string v3, "eventLocation"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 231
    const-string v3, "description"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 232
    const-string v3, "end"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 233
    const-string v3, "organizer"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 234
    const/4 v11, 0x0

    .line 236
    :cond_59
    new-instance v3, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v3

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v3

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v3

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v3

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v4

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b8

    const/4 v3, 0x1

    :goto_9c
    invoke-virtual {v4, v3}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay(Z)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->build()Lcom/vlingo/client/samsung/ScheduleEvent;

    move-result-object v10

    .line 241
    .local v10, e:Lcom/vlingo/client/samsung/ScheduleEvent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v3, v0, :cond_b7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_b4} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b4} :catch_bf

    move-result v3

    if-nez v3, :cond_2c

    .line 261
    .end local v10           #e:Lcom/vlingo/client/samsung/ScheduleEvent;
    .end local v11           #getIndicies:Z
    .end local v12           #iAllDay:I
    .end local v13           #iBegin:I
    .end local v14           #iDescription:I
    .end local v15           #iEnd:I
    .end local v16           #iLocation:I
    .end local v17           #iOrganizer:I
    .end local v18           #iTitle:I
    :cond_b7
    :goto_b7
    return v9

    .line 236
    .restart local v11       #getIndicies:Z
    .restart local v12       #iAllDay:I
    .restart local v13       #iBegin:I
    .restart local v14       #iDescription:I
    .restart local v15       #iEnd:I
    .restart local v16       #iLocation:I
    .restart local v17       #iOrganizer:I
    .restart local v18       #iTitle:I
    :cond_b8
    const/4 v3, 0x0

    goto :goto_9c

    .line 252
    .end local v11           #getIndicies:Z
    .end local v12           #iAllDay:I
    .end local v13           #iBegin:I
    .end local v14           #iDescription:I
    .end local v15           #iEnd:I
    .end local v16           #iLocation:I
    .end local v17           #iOrganizer:I
    .end local v18           #iTitle:I
    :catch_ba
    move-exception v19

    .line 255
    .local v19, sqLiteFullException:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_b7

    .line 256
    .end local v19           #sqLiteFullException:Landroid/database/sqlite/SQLiteFullException;
    :catch_bf
    move-exception v10

    .line 259
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b7
.end method

.method public static getNextScheduleItems(Landroid/content/Context;Ljava/util/Vector;I)I
    .registers 13
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, events:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    const/4 v0, 0x0

    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .local v3, nowMillis:J
    const-wide/16 v5, 0x0

    .line 136
    .local v5, endMillis:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 137
    .local v8, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 140
    invoke-virtual {v8, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 142
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 143
    .local v9, time:Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 144
    iput v0, v9, Landroid/text/format/Time;->hour:I

    .line 145
    iput v0, v9, Landroid/text/format/Time;->minute:I

    .line 146
    iput v0, v9, Landroid/text/format/Time;->second:I

    .line 147
    const-string v0, "UTC"

    iput-object v0, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 148
    iget v0, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Landroid/text/format/Time;->monthDay:I

    .line 149
    iget-object v0, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 156
    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/samsung/ScheduleUtil;->getTimeBoxedScheduleItems(Landroid/content/Context;Ljava/util/Vector;IJJ)I

    move-result v7

    .line 158
    .local v7, count:I
    return v7
.end method

.method public static getPrevScheduleItems(Landroid/content/Context;Ljava/util/Vector;I)I
    .registers 13
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, events:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    const/4 v0, 0x0

    .line 171
    const-wide/16 v5, 0x0

    .line 172
    .local v5, nowMillis:J
    const-wide/16 v3, 0x0

    .line 174
    .local v3, beginMillis:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 175
    .local v8, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 178
    invoke-virtual {v8, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 180
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 181
    .local v9, time:Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 182
    iput v0, v9, Landroid/text/format/Time;->hour:I

    .line 183
    iput v0, v9, Landroid/text/format/Time;->minute:I

    .line 184
    iput v0, v9, Landroid/text/format/Time;->second:I

    .line 185
    const-string v0, "UTC"

    iput-object v0, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 186
    iget-object v0, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 193
    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/samsung/ScheduleUtil;->getTimeBoxedScheduleItems(Landroid/content/Context;Ljava/util/Vector;IJJ)I

    move-result v7

    .line 195
    .local v7, count:I
    return v7
.end method

.method private static getTimeBoxedScheduleItems(Landroid/content/Context;Ljava/util/Vector;IJJ)I
    .registers 31
    .parameter "context"
    .parameter
    .parameter "limit"
    .parameter "beginMS"
    .parameter "endMS"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;IJJ)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, events:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    const-string v8, "allDay DESC, dtstart ASC, title ASC LIMIT 50"

    .line 73
    .local v8, order:Ljava/lang/String;
    const/4 v10, 0x0

    .line 75
    .local v10, count:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 76
    .local v3, contentResolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 78
    .local v9, c:Landroid/database/Cursor;
    :try_start_8
    const-string v6, "dtstart>=? AND dtstart<=?"

    .line 79
    .local v6, selection:Ljava/lang/String;
    const-string v4, "content://com.android.calendar/events"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/samsung/ScheduleUtil;->SCHEDULE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v7, v21

    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v7, v21

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 83
    if-eqz v9, :cond_55

    .line 84
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 86
    :cond_55
    if-eqz v9, :cond_f6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 87
    const/4 v12, 0x1

    .line 88
    .local v12, getIndicies:Z
    const/16 v19, 0x0

    .local v19, iTitle:I
    const/4 v13, 0x0

    .local v13, iAllDay:I
    const/4 v14, 0x0

    .line 89
    .local v14, iBegin:I
    const/4 v15, 0x0

    .local v15, iDescription:I
    const/16 v18, 0x0

    .line 90
    .local v18, iOrganizer:I
    const/16 v16, 0x0

    .local v16, iEnd:I
    const/16 v17, 0x0

    .line 93
    .local v17, iLocation:I
    :cond_69
    if-eqz v12, :cond_96

    .line 94
    const-string v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 95
    const-string v4, "allDay"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 96
    const-string v4, "dtstart"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 97
    const-string v4, "eventLocation"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 98
    const-string v4, "description"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 99
    const-string v4, "dtend"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 100
    const-string v4, "organizer"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 101
    const/4 v12, 0x0

    .line 103
    :cond_96
    new-instance v4, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v4

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v4

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v4

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v5

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_f7

    const/4 v4, 0x1

    :goto_db
    invoke-virtual {v5, v4}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay(Z)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->build()Lcom/vlingo/client/samsung/ScheduleEvent;

    move-result-object v11

    .line 108
    .local v11, e:Lcom/vlingo/client/samsung/ScheduleEvent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_f6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_f3} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f3} :catch_fe

    move-result v4

    if-nez v4, :cond_69

    .line 129
    .end local v6           #selection:Ljava/lang/String;
    .end local v11           #e:Lcom/vlingo/client/samsung/ScheduleEvent;
    .end local v12           #getIndicies:Z
    .end local v13           #iAllDay:I
    .end local v14           #iBegin:I
    .end local v15           #iDescription:I
    .end local v16           #iEnd:I
    .end local v17           #iLocation:I
    .end local v18           #iOrganizer:I
    .end local v19           #iTitle:I
    :cond_f6
    :goto_f6
    return v10

    .line 103
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v12       #getIndicies:Z
    .restart local v13       #iAllDay:I
    .restart local v14       #iBegin:I
    .restart local v15       #iDescription:I
    .restart local v16       #iEnd:I
    .restart local v17       #iLocation:I
    .restart local v18       #iOrganizer:I
    .restart local v19       #iTitle:I
    :cond_f7
    const/4 v4, 0x0

    goto :goto_db

    .line 119
    .end local v6           #selection:Ljava/lang/String;
    .end local v12           #getIndicies:Z
    .end local v13           #iAllDay:I
    .end local v14           #iBegin:I
    .end local v15           #iDescription:I
    .end local v16           #iEnd:I
    .end local v17           #iLocation:I
    .end local v18           #iOrganizer:I
    .end local v19           #iTitle:I
    :catch_f9
    move-exception v20

    .line 122
    .local v20, sqLiteFullException:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_f6

    .line 123
    .end local v20           #sqLiteFullException:Landroid/database/sqlite/SQLiteFullException;
    :catch_fe
    move-exception v11

    .line 126
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f6
.end method

.method public static handleRequestFutureSchedule(Landroid/content/Context;ILcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 7
    .parameter "context"
    .parameter "limit"
    .parameter "delegate"

    .prologue
    .line 47
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 48
    .local v1, events:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/samsung/ScheduleEvent;>;"
    invoke-static {p0, v1, p1}, Lcom/vlingo/client/samsung/ScheduleUtil;->getNextScheduleItems(Landroid/content/Context;Ljava/util/Vector;I)I

    move-result v2

    .line 49
    .local v2, totalCount:I
    if-nez v2, :cond_11

    .line 50
    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {p2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 69
    :goto_10
    return-void

    .line 66
    :cond_11
    new-instance v0, Lcom/vlingo/client/car/checkschedule/CheckScheduleController;

    invoke-direct {v0, p2}, Lcom/vlingo/client/car/checkschedule/CheckScheduleController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 67
    .local v0, controller:Lcom/vlingo/client/car/checkschedule/CheckScheduleController;
    invoke-virtual {v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleController;->startCheckScheduleFlow()V

    goto :goto_10
.end method
