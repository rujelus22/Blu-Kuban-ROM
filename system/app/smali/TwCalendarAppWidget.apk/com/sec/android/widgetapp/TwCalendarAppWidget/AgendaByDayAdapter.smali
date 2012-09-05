.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAgendaActivity:Landroid/app/Activity;

.field private final mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNotificationMoment:Z

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTmpTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mNotificationMoment:Z

    .line 84
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    .line 85
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    const v1, 0x7f030002

    invoke-direct {v0, p1, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    .line 87
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 89
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 90
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)V
    .registers 26
    .parameter "dayAdapterInfo"

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 281
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v18, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;>;"
    const/16 v17, -0x1

    .line 283
    .local v17, prevStartDay:I
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 284
    .local v20, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 285
    .local v14, now:J
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 286
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v14, v15, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 287
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 290
    .local v13, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;>;"
    if-nez v7, :cond_41

    .line 401
    :goto_40
    return-void

    .line 294
    :cond_41
    const/4 v10, 0x0

    .line 296
    .local v10, eventCount:I
    const/16 v16, 0x0

    .local v16, position:I
    :goto_44
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_14b

    .line 297
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_d4

    const/4 v5, 0x1

    .line 300
    .local v5, allDay:Z
    :goto_55
    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 302
    .local v19, startDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 304
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_94

    .line 306
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_d6

    .line 308
    const/4 v10, 0x0

    .line 309
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_92
    :goto_92
    move/from16 v17, v19

    .line 354
    :cond_94
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v10, v10, 0x1

    .line 358
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 361
    .local v9, endDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 362
    move/from16 v0, v19

    if-le v9, v0, :cond_d0

    .line 364
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-direct {v0, v1, v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_d0
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_44

    .line 297
    .end local v5           #allDay:Z
    .end local v9           #endDay:I
    .end local v19           #startDay:I
    :cond_d4
    const/4 v5, 0x0

    goto :goto_55

    .line 314
    .restart local v5       #allDay:Z
    .restart local v19       #startDay:I
    :cond_d6
    const/4 v8, 0x0

    .line 315
    .local v8, dayHeaderAdded:Z
    add-int/lit8 v6, v17, 0x1

    .local v6, currentDay:I
    :goto_d9
    move/from16 v0, v19

    if-gt v6, v0, :cond_132

    .line 316
    const/4 v8, 0x0

    .line 317
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 318
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_e2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12f

    .line 319
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;

    .line 322
    .local v11, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;
    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_fa

    .line 323
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_e2

    .line 329
    :cond_fa
    if-nez v8, :cond_114

    .line 331
    const/4 v10, 0x0

    .line 332
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const/4 v8, 0x1

    .line 336
    :cond_114
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x1

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v10, v10, 0x1

    .line 338
    goto :goto_e2

    .line 315
    .end local v11           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;
    :cond_12f
    add-int/lit8 v6, v6, 0x1

    goto :goto_d9

    .line 343
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_132
    if-nez v8, :cond_92

    .line 345
    const/4 v10, 0x0

    .line 346
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_92

    .line 371
    .end local v5           #allDay:Z
    .end local v6           #currentDay:I
    .end local v8           #dayHeaderAdded:Z
    .end local v19           #startDay:I
    :cond_14b
    if-lez v17, :cond_1aa

    .line 372
    add-int/lit8 v6, v17, 0x1

    .restart local v6       #currentDay:I
    :goto_14f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v6, v0, :cond_1aa

    .line 374
    const/4 v8, 0x0

    .line 375
    .restart local v8       #dayHeaderAdded:Z
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 376
    .restart local v12       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_15e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1a7

    .line 377
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;

    .line 380
    .restart local v11       #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;
    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_176

    .line 382
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_15e

    .line 388
    :cond_176
    if-nez v8, :cond_18c

    .line 390
    const/4 v10, 0x0

    .line 391
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v6, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v8, 0x1

    .line 395
    :cond_18c
    new-instance v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x1

    iget v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v10, v10, 0x1

    .line 397
    goto :goto_15e

    .line 373
    .end local v11           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;
    :cond_1a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_14f

    .line 400
    .end local v6           #currentDay:I
    .end local v8           #dayHeaderAdded:Z
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_1aa
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_40
.end method

.method public changeCursor(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->calculateDays(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    iget-object v1, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 275
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .registers 13
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v9, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    .line 467
    :cond_5
    :goto_5
    return v1

    .line 446
    :cond_6
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 447
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 448
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 449
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 450
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 451
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1a
    if-ge v1, v3, :cond_39

    .line 452
    iget-object v9, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    .line 453
    .local v8, row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    iget v9, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_36

    .line 454
    iget v9, v8, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 455
    .local v0, distance:I
    if-eqz v0, :cond_5

    .line 458
    if-ge v0, v6, :cond_36

    .line 459
    move v6, v0

    .line 460
    move v7, v1

    .line 451
    .end local v0           #distance:I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .end local v8           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_39
    move v1, v7

    .line 467
    goto :goto_5
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 105
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_a
.end method

.method public getCursorPosition(I)I
    .registers 6
    .parameter "listPos"

    .prologue
    .line 501
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    if-ltz p1, :cond_28

    .line 502
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    .line 503
    .local v1, row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 504
    iget v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    .line 515
    .end local v1           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :goto_15
    return v2

    .line 506
    .restart local v1       #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_16
    add-int/lit8 v0, p1, 0x1

    .line 507
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 508
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 509
    if-ltz v0, :cond_28

    .line 510
    neg-int v2, v0

    goto :goto_15

    .line 515
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_28
    const/high16 v2, -0x8000

    goto :goto_15
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 110
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    .line 111
    .local v0, row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_11

    .line 117
    .end local v0           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :goto_10
    return-object v0

    .line 114
    .restart local v0       #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_11
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 117
    .end local v0           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 122
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    .line 123
    .local v0, row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_13

    .line 124
    neg-int v1, p1

    int-to-long v1, v1

    .line 129
    .end local v0           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :goto_12
    return-wide v1

    .line 126
    .restart local v0       #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_13
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_12

    .line 129
    .end local v0           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_12
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_17

    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 28
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_2b

    .line 146
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 240
    :goto_2a
    return-object v4

    .line 149
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    .line 150
    .local v16, row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v21, v0

    if-nez v21, :cond_172

    .line 152
    const/4 v11, 0x0

    .line 153
    .local v11, holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;
    const/4 v4, 0x0

    .line 154
    .local v4, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_5f

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_5f

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 158
    .local v17, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;

    move/from16 v21, v0

    if-eqz v21, :cond_5f

    .line 159
    move-object/from16 v4, p2

    move-object/from16 v11, v17

    .line 160
    check-cast v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;

    .line 164
    .end local v17           #tag:Ljava/lang/Object;
    :cond_5f
    if-nez v11, :cond_a9

    .line 167
    new-instance v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;

    .end local v11           #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;
    invoke-direct {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 168
    .restart local v11       #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const/high16 v22, 0x7f03

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 169
    const v21, 0x7f0b0001

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 170
    const v21, 0x7f0b0002

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;->today:Landroid/widget/TextView;

    .line 171
    const/high16 v21, 0x7f0b

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;->container:Landroid/view/View;

    .line 172
    invoke-virtual {v4, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    :cond_a9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 177
    .local v5, date:Landroid/text/format/Time;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    move-result-wide v12

    .line 178
    .local v12, millis:J
    const/4 v9, 0x4

    .line 183
    .local v9, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "date_format"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, dateFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080022

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, format:Ljava/lang/String;
    if-eqz v6, :cond_f8

    .line 186
    const-string v21, "MM-dd-yyyy"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14c

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080023

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 200
    :cond_f8
    :goto_f8
    invoke-static {v10, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 205
    .local v7, dateViewText:Ljava/lang/String;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 206
    .local v18, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 207
    .local v14, now:J
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 208
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v14, v15, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 209
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mTodayJulianDay:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_168

    .line 212
    iget-object v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;->today:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_139
    iget-object v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mCount:I

    goto/16 :goto_2a

    .line 188
    .end local v7           #dateViewText:Ljava/lang/String;
    .end local v14           #now:J
    .end local v18           #time:Landroid/text/format/Time;
    :cond_14c
    const-string v21, "yyyy-MM-dd"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f8

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080024

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f8

    .line 216
    .restart local v7       #dateViewText:Ljava/lang/String;
    .restart local v14       #now:J
    .restart local v18       #time:Landroid/text/format/Time;
    :cond_168
    iget-object v0, v11, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;->today:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_139

    .line 224
    .end local v4           #agendaDayView:Landroid/view/View;
    .end local v5           #date:Landroid/text/format/Time;
    .end local v6           #dateFormat:Ljava/lang/String;
    .end local v7           #dateViewText:Ljava/lang/String;
    .end local v9           #flags:I
    .end local v10           #format:Ljava/lang/String;
    .end local v11           #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$ViewHolder;
    .end local v12           #millis:J
    .end local v14           #now:J
    .end local v18           #time:Landroid/text/format/Time;
    :cond_172
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1de

    .line 226
    const/16 v19, 0x0

    .line 228
    .local v19, x:Landroid/view/View;
    :try_start_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->setCount(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mCount:I
    :try_end_1b7
    .catch Ljava/lang/IllegalStateException; {:try_start_182 .. :try_end_1b7} :catch_1ce

    .line 234
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 238
    .local v20, y:Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    .line 240
    goto/16 :goto_2a

    .line 231
    .end local v20           #y:Landroid/widget/TextView;
    :catch_1ce
    move-exception v8

    .line 232
    .local v8, e:Ljava/lang/IllegalStateException;
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2a

    .line 243
    .end local v8           #e:Ljava/lang/IllegalStateException;
    .end local v19           #x:Landroid/view/View;
    :cond_1de
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown event type:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 525
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_19

    .line 526
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;

    .line 527
    .local v0, row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1a

    .line 529
    .end local v0           #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_19
    :goto_19
    return v1

    .line 527
    .restart local v0       #row:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public setNotificationMoment(Z)V
    .registers 3
    .parameter "notificationMoment"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mNotificationMoment:Z

    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->setNotificationMoment(Z)V

    .line 95
    return-void
.end method

.method public stopImageLoaderThread()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->mAgendaAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mImageLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->stopThread()V

    .line 99
    return-void
.end method
