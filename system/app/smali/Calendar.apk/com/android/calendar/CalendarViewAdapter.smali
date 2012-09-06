.class public Lcom/android/calendar/CalendarViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewAdapter.java"


# instance fields
.field private mButtonNames:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurrentMainView:I

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMidnightHandler:Landroid/os/Handler;

.field mMilliTime:J

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTimeUpdater:Ljava/lang/Runnable;

.field mTimeZone:Ljava/lang/String;

.field mTodayJulianDay:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "viewType"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/calendar/CalendarViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarViewAdapter$1;-><init>(Lcom/android/calendar/CalendarViewAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    .line 89
    iput p2, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    .line 90
    iput-object p1, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    .line 94
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 96
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method private buildDayOfWeek()Ljava/lang/String;
    .registers 18

    .prologue
    .line 270
    new-instance v12, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v12, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 271
    .local v12, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v12, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 272
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v3, v12, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    int-to-long v10, v1

    .line 273
    .local v10, julianDay:J
    const/4 v9, 0x0

    .line 274
    .local v9, dayOfWeek:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    cmp-long v1, v10, v1

    if-nez v1, :cond_60

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0042

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 292
    :goto_5b
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 280
    :cond_60
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    cmp-long v1, v10, v1

    if-nez v1, :cond_9b

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0043

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5b

    .line 284
    :cond_9b
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    cmp-long v1, v10, v1

    if-nez v1, :cond_d6

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0c0044

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5b

    .line 289
    :cond_d6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5b
.end method

.method private buildFullDate()Ljava/lang/String;
    .registers 10

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 303
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthDate()Ljava/lang/String;
    .registers 10

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 329
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x38

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthDayDate()Ljava/lang/String;
    .registers 10

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthYearDate()Ljava/lang/String;
    .registers 10

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x34

    iget-object v7, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, date:Ljava/lang/String;
    return-object v8
.end method

.method private buildWeekDate()Ljava/lang/String;
    .registers 18

    .prologue
    .line 344
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v13, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 345
    .local v13, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v13, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v12

    .line 347
    .local v12, firstDayOfWeek:I
    iget v10, v13, Landroid/text/format/Time;->weekDay:I

    .line 348
    .local v10, dayOfWeek:I
    sub-int v11, v10, v12

    .line 349
    .local v11, diff:I
    if-eqz v11, :cond_2b

    .line 350
    if-gez v11, :cond_22

    .line 351
    add-int/lit8 v11, v11, 0x7

    .line 353
    :cond_22
    iget v1, v13, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v1, v11

    iput v1, v13, Landroid/text/format/Time;->monthDay:I

    .line 354
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 357
    :cond_2b
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 359
    .local v3, weekStartTime:J
    const-wide/32 v1, 0x240c8400

    add-long/2addr v1, v3

    const-wide/32 v15, 0x5265c00

    sub-long v5, v1, v15

    .line 362
    .local v5, weekEndTime:J
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v14, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 363
    .local v14, t1:Landroid/text/format/Time;
    invoke-virtual {v13, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 364
    const/16 v7, 0x18

    .line 365
    .local v7, flags:I
    iget v1, v13, Landroid/text/format/Time;->month:I

    iget v2, v14, Landroid/text/format/Time;->month:I

    if-eq v1, v2, :cond_50

    .line 366
    const/high16 v1, 0x1

    or-int/2addr v7, v1

    .line 369
    :cond_50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, date:Ljava/lang/String;
    return-object v9
.end method

.method private buildWeekNum()Ljava/lang/String;
    .registers 7

    .prologue
    .line 376
    iget-wide v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(JLandroid/content/Context;)I

    move-result v0

    .line 377
    .local v0, week:I
    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setMidnightHandler()V
    .registers 8

    .prologue
    .line 118
    iget-object v5, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, now:J
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 122
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 123
    const v5, 0x15180

    iget v6, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v6, v6, 0xe10

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    .line 125
    .local v2, runInMillis:J
    iget-object v5, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040002

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, v:Landroid/view/View;
    const v3, 0x7f100006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 227
    .local v2, viewType:Landroid/widget/TextView;
    const v3, 0x7f100007

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, date:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_60

    .line 246
    move-object v1, p2

    .line 249
    :goto_20
    return-object v1

    .line 230
    :pswitch_21
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 234
    :pswitch_30
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildWeekDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 238
    :pswitch_40
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 242
    :pswitch_50
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 228
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_21
        :pswitch_30
        :pswitch_40
        :pswitch_50
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 143
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 145
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const v5, 0x7f040003

    const/4 v4, 0x0

    .line 164
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_3b

    .line 167
    :cond_14
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, v:Landroid/view/View;
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_22
    const v3, 0x7f100008

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    .local v2, weekDay:Landroid/widget/TextView;
    const v3, 0x7f100009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, date:Landroid/widget/TextView;
    iget v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    packed-switch v3, :pswitch_data_8a

    .line 201
    const/4 v1, 0x0

    .line 204
    :goto_3a
    return-object v1

    .line 171
    .end local v0           #date:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    .end local v2           #weekDay:Landroid/widget/TextView;
    :cond_3b
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_22

    .line 178
    .restart local v0       #date:Landroid/widget/TextView;
    .restart local v2       #weekDay:Landroid/widget/TextView;
    :pswitch_3d
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildDayOfWeek()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 183
    :pswitch_4f
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 184
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildWeekNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_61
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 187
    :cond_69
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_61

    .line 192
    :pswitch_6d
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 196
    :pswitch_78
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildDayOfWeek()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 176
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_78
        :pswitch_3d
        :pswitch_4f
        :pswitch_6d
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public refresh(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    .line 107
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    .local v0, now:J
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 110
    iget-wide v3, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/CalendarViewAdapter;->notifyDataSetChanged()V

    .line 112
    invoke-direct {p0}, Lcom/android/calendar/CalendarViewAdapter;->setMidnightHandler()V

    .line 113
    return-void
.end method

.method public setMainView(I)V
    .registers 2
    .parameter "viewType"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/calendar/CalendarViewAdapter;->mCurrentMainView:I

    .line 256
    invoke-virtual {p0}, Lcom/android/calendar/CalendarViewAdapter;->notifyDataSetChanged()V

    .line 257
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/android/calendar/CalendarViewAdapter;->mMilliTime:J

    .line 263
    invoke-virtual {p0}, Lcom/android/calendar/CalendarViewAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method
