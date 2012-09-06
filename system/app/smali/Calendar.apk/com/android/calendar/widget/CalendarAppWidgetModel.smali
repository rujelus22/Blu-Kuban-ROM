.class Lcom/android/calendar/widget/CalendarAppWidgetModel;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;,
        Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;,
        Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDayInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mEventInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeTZName:Ljava/lang/String;

.field final mMaxJulianDay:I

.field final mNow:J

.field final mRowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTZ:Z

.field final mTodayJulianDay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "timeZone"

    .prologue
    const/16 v5, 0x32

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    .line 253
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 255
    iget-wide v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    .line 256
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    .line 260
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    .line 261
    return-void
.end method

.method private populateDayInfo(ILandroid/text/format/Time;)Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    .registers 14
    .parameter "julianDay"
    .parameter "recycle"

    .prologue
    .line 408
    invoke-virtual {p2, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v1

    .line 409
    .local v1, millis:J
    const v5, 0x80010

    .line 412
    .local v5, flags:I
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2d

    .line 413
    iget-object v7, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0044

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, label:Ljava/lang/String;
    :goto_27
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    invoke-direct {v0, p1, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 416
    .end local v6           #label:Ljava/lang/String;
    :cond_2d
    or-int/lit8 v5, v5, 0x2

    .line 417
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #label:Ljava/lang/String;
    goto :goto_27
.end method

.method private populateEventInfo(JZJJIILjava/lang/String;Ljava/lang/String;II)Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    .registers 25
    .parameter "eventId"
    .parameter "allDay"
    .parameter "start"
    .parameter "end"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "title"
    .parameter "location"
    .parameter "color"
    .parameter "selfStatus"

    .prologue
    .line 356
    new-instance v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    invoke-direct {v8}, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;-><init>()V

    .line 359
    .local v8, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v10, whenString:Ljava/lang/StringBuilder;
    const/high16 v7, 0x8

    .line 362
    .local v7, flags:I
    const/4 v9, 0x0

    .line 363
    .local v9, visibWhen:I
    if-eqz p3, :cond_59

    .line 364
    or-int/lit8 v7, v7, 0x10

    .line 365
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v3, p4

    move-wide/from16 v5, p6

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_1d
    :goto_1d
    iput-wide p1, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    .line 381
    iput-wide p4, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 382
    move-wide/from16 v0, p6

    iput-wide v0, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 383
    iput-boolean p3, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    .line 384
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    .line 385
    iput v9, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    .line 386
    move/from16 v0, p12

    iput v0, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    .line 387
    move/from16 v0, p13

    iput v0, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    .line 390
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 391
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    .line 395
    :goto_48
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    .line 398
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 399
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    .line 400
    move-object/from16 v0, p11

    iput-object v0, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    .line 404
    :goto_58
    return-object v8

    .line 367
    :cond_59
    or-int/lit8 v7, v7, 0x1

    .line 368
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 369
    or-int/lit16 v7, v7, 0x80

    .line 371
    :cond_65
    move/from16 v0, p9

    move/from16 v1, p8

    if-le v0, v1, :cond_6d

    .line 372
    or-int/lit8 v7, v7, 0x10

    .line 374
    :cond_6d
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v3, p4

    move-wide/from16 v5, p6

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-boolean v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mShowTZ:Z

    if-eqz v2, :cond_1d

    .line 377
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mHomeTZName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 393
    :cond_89
    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    goto :goto_48

    .line 402
    :cond_8e
    const/16 v2, 0x8

    iput v2, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    goto :goto_58
.end method


# virtual methods
.method public buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 36
    .parameter "cursor"
    .parameter "timeZone"

    .prologue
    .line 264
    new-instance v26, Landroid/text/format/Time;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 265
    .local v26, recycle:Landroid/text/format/Time;
    new-instance v25, Ljava/util/ArrayList;

    const/4 v3, 0x7

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v25, mBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;>;"
    const/16 v23, 0x0

    .local v23, i:I
    :goto_13
    const/4 v3, 0x7

    move/from16 v0, v23

    if-ge v0, v3, :cond_25

    .line 268
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v23, v23, 0x1

    goto :goto_13

    .line 270
    :cond_25
    invoke-virtual/range {v26 .. v26}, Landroid/text/format/Time;->setToNow()V

    .line 271
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_130

    const/4 v3, 0x1

    :goto_35
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mShowTZ:Z

    .line 272
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mShowTZ:Z

    if-eqz v3, :cond_58

    .line 273
    invoke-static/range {p2 .. p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    move-object/from16 v0, v26

    iget v3, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_133

    const/4 v3, 0x1

    :goto_4a
    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mHomeTZName:Ljava/lang/String;

    .line 277
    :cond_58
    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v30

    .line 279
    .local v30, tz:Ljava/lang/String;
    :cond_6a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_141

    .line 280
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    .line 281
    .local v27, rowId:I
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 282
    .local v4, eventId:J
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_136

    const/4 v6, 0x1

    .line 283
    .local v6, allDay:Z
    :goto_85
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 284
    .local v7, start:J
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 285
    .local v9, end:J
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 286
    .local v13, title:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 290
    .local v14, location:Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 291
    .local v11, startDay:I
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 292
    .local v12, endDay:I
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 293
    .local v15, color:I
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 297
    .local v16, selfStatus:I
    if-eqz v6, :cond_d1

    .line 298
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-static {v0, v7, v8, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v7

    .line 299
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-static {v0, v9, v10, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v9

    .line 309
    :cond_d1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    move-wide/from16 v31, v0

    cmp-long v3, v9, v31

    if-ltz v3, :cond_6a

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v16}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->populateEventInfo(JZJJIILjava/lang/String;Ljava/lang/String;II)Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 318
    .local v22, from:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 319
    .local v29, to:I
    move/from16 v19, v22

    .local v19, day:I
    :goto_106
    move/from16 v0, v19

    move/from16 v1, v29

    if-gt v0, v1, :cond_6a

    .line 320
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    sub-int v3, v19, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/LinkedList;

    .line 321
    .local v17, bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    new-instance v28, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    const/4 v3, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;-><init>(II)V

    .line 322
    .local v28, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    if-eqz v6, :cond_139

    .line 323
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 319
    :goto_12d
    add-int/lit8 v19, v19, 0x1

    goto :goto_106

    .line 271
    .end local v4           #eventId:J
    .end local v6           #allDay:Z
    .end local v7           #start:J
    .end local v9           #end:J
    .end local v11           #startDay:I
    .end local v12           #endDay:I
    .end local v13           #title:Ljava/lang/String;
    .end local v14           #location:Ljava/lang/String;
    .end local v15           #color:I
    .end local v16           #selfStatus:I
    .end local v17           #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    .end local v19           #day:I
    .end local v22           #from:I
    .end local v27           #rowId:I
    .end local v28           #rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    .end local v29           #to:I
    .end local v30           #tz:Ljava/lang/String;
    :cond_130
    const/4 v3, 0x0

    goto/16 :goto_35

    .line 273
    :cond_133
    const/4 v3, 0x0

    goto/16 :goto_4a

    .line 282
    .restart local v4       #eventId:J
    .restart local v27       #rowId:I
    .restart local v30       #tz:Ljava/lang/String;
    :cond_136
    const/4 v6, 0x0

    goto/16 :goto_85

    .line 325
    .restart local v6       #allDay:Z
    .restart local v7       #start:J
    .restart local v9       #end:J
    .restart local v11       #startDay:I
    .restart local v12       #endDay:I
    .restart local v13       #title:Ljava/lang/String;
    .restart local v14       #location:Ljava/lang/String;
    .restart local v15       #color:I
    .restart local v16       #selfStatus:I
    .restart local v17       #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    .restart local v19       #day:I
    .restart local v22       #from:I
    .restart local v28       #rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    .restart local v29       #to:I
    :cond_139
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_12d

    .line 330
    .end local v4           #eventId:J
    .end local v6           #allDay:Z
    .end local v7           #start:J
    .end local v9           #end:J
    .end local v11           #startDay:I
    .end local v12           #endDay:I
    .end local v13           #title:Ljava/lang/String;
    .end local v14           #location:Ljava/lang/String;
    .end local v15           #color:I
    .end local v16           #selfStatus:I
    .end local v17           #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    .end local v19           #day:I
    .end local v22           #from:I
    .end local v27           #rowId:I
    .end local v28           #rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    .end local v29           #to:I
    :cond_141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move/from16 v19, v0

    .line 331
    .restart local v19       #day:I
    const/16 v18, 0x0

    .line 332
    .local v18, count:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_14d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1af

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/LinkedList;

    .line 333
    .restart local v17       #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a7

    .line 335
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_198

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->populateDayInfo(ILandroid/text/format/Time;)Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    move-result-object v21

    .line 338
    .local v21, dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v20

    .line 339
    .local v20, dayIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    new-instance v31, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;-><init>(II)V

    move-object/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v20           #dayIndex:I
    .end local v21           #dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    :cond_198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int v18, v18, v3

    .line 347
    :cond_1a7
    add-int/lit8 v19, v19, 0x1

    .line 348
    const/16 v3, 0x14

    move/from16 v0, v18

    if-lt v0, v3, :cond_14d

    .line 352
    .end local v17           #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    :cond_1af
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "\nCalendarAppWidgetModel [eventInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
