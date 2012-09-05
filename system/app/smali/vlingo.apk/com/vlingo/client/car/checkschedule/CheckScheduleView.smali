.class public Lcom/vlingo/client/car/checkschedule/CheckScheduleView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "CheckScheduleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# instance fields
.field private descriptionCell:Landroid/view/View;

.field private locationCell:Landroid/view/View;

.field private mDescription:Landroid/widget/TextView;

.field private mEventList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/widget/TextView;

.field private mNext:Landroid/widget/Button;

.field private mTime:Landroid/widget/TextView;

.field private mTitleSchedule:Landroid/widget/TextView;

.field private timeCell:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    .line 52
    return-void
.end method

.method private displaySchedule(Lcom/vlingo/client/samsung/ScheduleEvent;)V
    .registers 9
    .parameter "e"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 277
    if-eqz p1, :cond_7e

    .line 278
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mTitleSchedule:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const-string v0, ""

    .line 280
    .local v0, timeText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getAllDay()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 283
    invoke-virtual {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_21
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8c

    .line 292
    :cond_2e
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->timeCell:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :goto_33
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mLocation:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_92

    .line 297
    :cond_4c
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->locationCell:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :goto_51
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_98

    .line 302
    :cond_6a
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->descriptionCell:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_6f
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_7e

    .line 311
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mNext:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    .end local v0           #timeText:Ljava/lang/String;
    :cond_7e
    return-void

    .line 287
    .restart local v0       #timeText:Ljava/lang/String;
    :cond_7f
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getBegin()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getEnd()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->makeTimeText(JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 294
    :cond_8c
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->timeCell:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    .line 299
    :cond_92
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->locationCell:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51

    .line 304
    :cond_98
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->descriptionCell:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f
.end method

.method private getEvent(ILandroid/database/Cursor;)Lcom/vlingo/client/samsung/ScheduleEvent;
    .registers 15
    .parameter "number"
    .parameter "c"

    .prologue
    .line 242
    if-eqz p2, :cond_b

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_b

    .line 243
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    :cond_b
    if-eqz p2, :cond_92

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_92

    const/4 v9, 0x1

    :goto_14
    invoke-interface {p2, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_96

    .line 246
    const/4 v1, 0x1

    .line 247
    .local v1, getIndicies:Z
    const/4 v8, 0x0

    .local v8, iTitle:I
    const/4 v2, 0x0

    .local v2, iAllDay:I
    const/4 v3, 0x0

    .line 248
    .local v3, iBegin:I
    const/4 v4, 0x0

    .local v4, iDescription:I
    const/4 v7, 0x0

    .line 249
    .local v7, iOrganizer:I
    const/4 v5, 0x0

    .local v5, iEnd:I
    const/4 v6, 0x0

    .line 251
    .local v6, iLocation:I
    if-eqz v1, :cond_50

    .line 252
    const-string v9, "title"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 253
    const-string v9, "allDay"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 254
    const-string v9, "dtstart"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 255
    const-string v9, "eventLocation"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 256
    const-string v9, "description"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 257
    const-string v9, "dtend"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 258
    const-string v9, "organizer"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 259
    const/4 v1, 0x0

    .line 261
    :cond_50
    new-instance v9, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v9

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v9

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v9

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v10

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_94

    const/4 v9, 0x1

    :goto_89
    invoke-virtual {v10, v9}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay(Z)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->build()Lcom/vlingo/client/samsung/ScheduleEvent;

    move-result-object v0

    .line 273
    .end local v1           #getIndicies:Z
    .end local v2           #iAllDay:I
    .end local v3           #iBegin:I
    .end local v4           #iDescription:I
    .end local v5           #iEnd:I
    .end local v6           #iLocation:I
    .end local v7           #iOrganizer:I
    .end local v8           #iTitle:I
    :goto_91
    return-object v0

    .line 245
    :cond_92
    const/4 v9, 0x0

    goto :goto_14

    .line 261
    .restart local v1       #getIndicies:Z
    .restart local v2       #iAllDay:I
    .restart local v3       #iBegin:I
    .restart local v4       #iDescription:I
    .restart local v5       #iEnd:I
    .restart local v6       #iLocation:I
    .restart local v7       #iOrganizer:I
    .restart local v8       #iTitle:I
    :cond_94
    const/4 v9, 0x0

    goto :goto_89

    .line 273
    .end local v1           #getIndicies:Z
    .end local v2           #iAllDay:I
    .end local v3           #iBegin:I
    .end local v4           #iDescription:I
    .end local v5           #iEnd:I
    .end local v6           #iLocation:I
    .end local v7           #iOrganizer:I
    .end local v8           #iTitle:I
    :cond_96
    const/4 v0, 0x0

    goto :goto_91
.end method

.method private getEventCursor()Landroid/database/Cursor;
    .registers 20

    .prologue
    .line 194
    const-string v6, "allDay DESC, dtstart ASC, title ASC LIMIT 50"

    .line 196
    .local v6, order:Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 197
    .local v12, nowMillis:J
    const-wide/16 v9, 0x0

    .line 199
    .local v9, endMillis:J
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 200
    .local v11, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 203
    invoke-virtual {v11, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 205
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 206
    .local v15, time:Landroid/text/format/Time;
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 207
    const/16 v2, 0x17

    iput v2, v15, Landroid/text/format/Time;->hour:I

    .line 208
    const/16 v2, 0x3b

    iput v2, v15, Landroid/text/format/Time;->minute:I

    .line 209
    const/16 v2, 0x3b

    iput v2, v15, Landroid/text/format/Time;->second:I

    .line 212
    iget-object v2, v11, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v2, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 213
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    .local v1, contentResolver:Landroid/content/ContentResolver;
    :try_start_3b
    const-string v4, "dtstart>=? AND dtstart<=?"

    .line 219
    .local v4, selection:Ljava/lang/String;
    const-string v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/samsung/ScheduleUtil;->SCHEDULE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v16

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 223
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_8e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3b .. :try_end_89} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_89} :catch_90

    .line 237
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :goto_89
    return-object v7

    .line 228
    :catch_8a
    move-exception v14

    .line 231
    .local v14, sqLiteFullException:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 237
    .end local v14           #sqLiteFullException:Landroid/database/sqlite/SQLiteFullException;
    :cond_8e
    :goto_8e
    const/4 v7, 0x0

    goto :goto_89

    .line 232
    :catch_90
    move-exception v8

    .line 235
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8e
.end method

.method private getEventList(Landroid/database/Cursor;)Ljava/util/Vector;
    .registers 18
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/samsung/ScheduleEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p1, :cond_cb

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_cb

    .line 154
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->clear()V

    .line 156
    :cond_12
    :goto_12
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_c8

    .line 158
    const-string v14, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, title:Ljava/lang/String;
    const-string v14, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 160
    .local v1, allDay:I
    const-string v14, "dtstart"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 161
    .local v2, begin:J
    const-string v14, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, location:Ljava/lang/String;
    const-string v14, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, description:Ljava/lang/String;
    const-string v14, "dtend"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 164
    .local v8, end:J
    const-string v14, "organizer"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, organizer:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 168
    if-lez v1, :cond_98

    .line 171
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 172
    .local v12, time:Landroid/text/format/Time;
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 173
    const-string v14, "UTC"

    iput-object v14, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 174
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 175
    .local v4, currentTimeUTC:J
    cmp-long v14, v2, v4

    if-gtz v14, :cond_12

    cmp-long v14, v8, v4

    if-ltz v14, :cond_12

    .line 181
    .end local v4           #currentTimeUTC:J
    .end local v12           #time:Landroid/text/format/Time;
    :cond_98
    new-instance v14, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    invoke-direct {v14, v13}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->location(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->description(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->organizer(Ljava/lang/String;)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->begin(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->end(J)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v15

    const/4 v14, 0x1

    if-ne v1, v14, :cond_c6

    const/4 v14, 0x1

    :goto_b5
    invoke-virtual {v15, v14}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->allDay(Z)Lcom/vlingo/client/samsung/ScheduleEvent$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vlingo/client/samsung/ScheduleEvent$Builder;->build()Lcom/vlingo/client/samsung/ScheduleEvent;

    move-result-object v7

    .line 184
    .local v7, e:Lcom/vlingo/client/samsung/ScheduleEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v14, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 181
    .end local v7           #e:Lcom/vlingo/client/samsung/ScheduleEvent;
    :cond_c6
    const/4 v14, 0x0

    goto :goto_b5

    .line 186
    .end local v1           #allDay:I
    .end local v2           #begin:J
    .end local v6           #description:Ljava/lang/String;
    .end local v8           #end:J
    .end local v10           #location:Ljava/lang/String;
    .end local v11           #organizer:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    :cond_c8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_cb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    return-object v14
.end method

.method private getEventText(Lcom/vlingo/client/samsung/ScheduleEvent;)Ljava/lang/String;
    .registers 8
    .parameter "e"

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_27

    .line 393
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getAllDay()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 398
    invoke-virtual {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09035d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, allDayString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    .end local v0           #allDayString:Ljava/lang/String;
    :cond_27
    :goto_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 403
    :cond_2c
    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getBegin()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/vlingo/client/samsung/ScheduleEvent;->getEnd()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->makeTimeText(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27
.end method

.method private makeTimeText(JJ)Ljava/lang/String;
    .registers 13
    .parameter "beginTime"
    .parameter "endTime"

    .prologue
    const/16 v7, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 317
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v1, sb:Ljava/lang/StringBuffer;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 319
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 320
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 321
    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ge v5, v7, :cond_7f

    move v0, v3

    .line 322
    .local v0, am:Z
    :goto_19
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->is12HourClock()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%I:%M"

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_81

    const-string v5, " AM "

    :goto_32
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :goto_3d
    invoke-virtual {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090361

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v2, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 349
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 350
    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ge v5, v7, :cond_8e

    move v0, v3

    .line 351
    :goto_56
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->is12HourClock()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%I:%M"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_90

    const-string v3, " AM "

    :goto_6f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :goto_7a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0           #am:Z
    :cond_7f
    move v0, v4

    .line 321
    goto :goto_19

    .line 323
    .restart local v0       #am:Z
    :cond_81
    const-string v5, " PM "

    goto :goto_32

    .line 325
    :cond_84
    const-string v5, "%H:%M "

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3d

    :cond_8e
    move v0, v4

    .line 350
    goto :goto_56

    .line 352
    :cond_90
    const-string v3, " PM "

    goto :goto_6f

    .line 354
    :cond_93
    const-string v3, "%H:%M "

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7a
.end method

.method private next()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 103
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/samsung/ScheduleEvent;

    .line 104
    .local v0, e:Lcom/vlingo/client/samsung/ScheduleEvent;
    invoke-direct {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->displaySchedule(Lcom/vlingo/client/samsung/ScheduleEvent;)V

    .line 105
    invoke-direct {p0, v0, v2}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->speakTTS(Lcom/vlingo/client/samsung/ScheduleEvent;Z)V

    .line 106
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 113
    .end local v0           #e:Lcom/vlingo/client/samsung/ScheduleEvent;
    :goto_1c
    return-void

    .line 110
    :cond_1d
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_1c
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 423
    return-void
.end method

.method private speakTTS(Lcom/vlingo/client/samsung/ScheduleEvent;Z)V
    .registers 11
    .parameter "e"
    .parameter "isFirstPart"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 377
    if-eqz p2, :cond_41

    .line 378
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 379
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0d

    iget-object v3, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    aput-object v1, v0, v6

    .line 380
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getEventText(Lcom/vlingo/client/samsung/ScheduleEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarCancelable(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    aput-object v1, v0, v7

    .line 381
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 386
    .end local v0           #demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    :goto_40
    return-void

    .line 383
    :cond_41
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getEventText(Lcom/vlingo/client/samsung/ScheduleEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarCancelable(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 384
    .local v0, demands:Lcom/vlingo/client/core/tts/TTSDemand;
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_40
.end method


# virtual methods
.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_cal"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 128
    if-eqz p1, :cond_f

    .line 129
    const-string v0, "safereader:next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    invoke-direct {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->next()V

    .line 131
    const/4 v0, 0x1

    .line 134
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 6
    .parameter "action"

    .prologue
    .line 139
    const-string v1, "CheckScheduleView"

    const-string v2, "handleUpdatePage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "Message"

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, msg:Ljava/lang/String;
    const-string v1, "ChecSchedue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdate!! msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->next()V

    .line 146
    const/4 v1, 0x1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 97
    :goto_7
    return-void

    .line 91
    :pswitch_8
    invoke-direct {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->next()V

    goto :goto_7

    .line 89
    :pswitch_data_c
    .packed-switch 0x7f0f011f
        :pswitch_8
    .end packed-switch
.end method

.method public onDelegateAttached()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 75
    iget-object v2, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 76
    invoke-direct {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getEventCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 77
    .local v1, eventCursor:Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->getEventList(Landroid/database/Cursor;)Ljava/util/Vector;

    .line 78
    iget-object v2, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_30

    .line 79
    iget-object v2, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/samsung/ScheduleEvent;

    .line 80
    .local v0, e:Lcom/vlingo/client/samsung/ScheduleEvent;
    invoke-direct {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->displaySchedule(Lcom/vlingo/client/samsung/ScheduleEvent;)V

    .line 81
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->speakTTS(Lcom/vlingo/client/samsung/ScheduleEvent;Z)V

    .line 82
    iget-object v2, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 84
    .end local v0           #e:Lcom/vlingo/client/samsung/ScheduleEvent;
    :cond_30
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 428
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 7
    .parameter "demand"

    .prologue
    const v4, 0x7f090108

    .line 431
    const-string v0, "CheckSchedule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDemandDidPlay Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v0, v1, :cond_34

    .line 433
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 434
    iget-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 457
    :cond_34
    :goto_34
    return-void

    .line 436
    :cond_35
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-cal-home"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mEventList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 445
    iget-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v1, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v2, "vp_car_main_cal"

    invoke-direct {v1, v2}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_34

    .line 451
    :cond_6b
    iget-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v1, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v2, "vp_car_main_cal"

    invoke-direct {v1, v2}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand;

    iget-object v3, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090229

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 461
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 465
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 57
    const v0, 0x7f0f0115

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mTitleSchedule:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mTime:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mLocation:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0f011e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mDescription:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0f0117

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->timeCell:Landroid/view/View;

    .line 63
    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->locationCell:Landroid/view/View;

    .line 64
    const v0, 0x7f0f011d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->descriptionCell:Landroid/view/View;

    .line 66
    const v0, 0x7f0f011f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mNext:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public onHidden()V
    .registers 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->removeTTSListener()V

    .line 413
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 414
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;->removeTTSListener()V

    .line 418
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 419
    return-void
.end method
