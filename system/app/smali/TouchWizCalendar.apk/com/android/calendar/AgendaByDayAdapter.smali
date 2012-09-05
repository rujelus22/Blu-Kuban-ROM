.class public Lcom/android/calendar/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAgendaActivity:Landroid/app/Activity;

.field private final mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTodayJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    .line 87
    iput-object p1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/calendar/AgendaAdapter;

    const v1, 0x7f030020

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    .line 89
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 91
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 92
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .registers 31
    .parameter "dayAdapterInfo"

    .prologue
    .line 322
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 323
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v20, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/AgendaByDayAdapter$RowInfo;>;"
    const/16 v19, -0x1

    .line 325
    .local v19, prevStartDay:I
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 326
    .local v24, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 327
    .local v16, now:J
    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 328
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 329
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 332
    .local v15, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    if-nez v8, :cond_47

    .line 461
    :goto_46
    return-void

    .line 336
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendar/AgendaDeleteActivity;->getDeleteType()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1ae

    :cond_69
    const/4 v4, 0x1

    .line 339
    .local v4, addDayRow:Z
    :goto_6a
    const/16 v18, 0x0

    .local v18, position:I
    :goto_6c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_264

    .line 340
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_1b1

    const/4 v5, 0x1

    .line 342
    .local v5, allDay:Z
    :goto_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v26, v0

    if-nez v26, :cond_b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v26

    if-nez v26, :cond_b5

    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/SearchResult;

    move/from16 v26, v0

    if-eqz v26, :cond_1ef

    .line 345
    :cond_b5
    const/16 v26, 0x7

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 346
    .local v22, startMillis:J
    const-string v26, "facebook_schedule_id"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, fbEventId:Ljava/lang/String;
    if-nez v5, :cond_cf

    if-eqz v12, :cond_1b4

    .line 349
    :cond_cf
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 350
    .local v6, begin:Landroid/text/format/Time;
    iget-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 351
    .local v25, tz:Ljava/lang/String;
    const-string v26, "UTC"

    move-object/from16 v0, v26

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 352
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 353
    move-object/from16 v0, v25

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 354
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 355
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .line 368
    .end local v6           #begin:Landroid/text/format/Time;
    .end local v25           #tz:Ljava/lang/String;
    :cond_f6
    :goto_f6
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v22

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v21

    .line 373
    .end local v12           #fbEventId:Ljava/lang/String;
    .end local v22           #startMillis:J
    .local v21, startDay:I
    :goto_104
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v26, v0

    move/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 375
    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_138

    .line 377
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f9

    .line 378
    if-eqz v4, :cond_136

    .line 379
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_136
    :goto_136
    move/from16 v19, v21

    .line 417
    :cond_138
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v26, v0

    if-nez v26, :cond_1aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/AgendaActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_176

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v26

    if-nez v26, :cond_1aa

    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/calendar/SearchResult;

    move/from16 v26, v0

    if-nez v26, :cond_1aa

    .line 424
    const/16 v26, 0xe

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 427
    .local v10, endDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 428
    move/from16 v0, v21

    if-le v10, v0, :cond_1aa

    .line 429
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v10           #endDay:I
    :cond_1aa
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6c

    .line 336
    .end local v4           #addDayRow:Z
    .end local v5           #allDay:Z
    .end local v18           #position:I
    .end local v21           #startDay:I
    :cond_1ae
    const/4 v4, 0x0

    goto/16 :goto_6a

    .line 340
    .restart local v4       #addDayRow:Z
    .restart local v18       #position:I
    :cond_1b1
    const/4 v5, 0x0

    goto/16 :goto_7d

    .line 357
    .restart local v5       #allDay:Z
    .restart local v12       #fbEventId:Ljava/lang/String;
    .restart local v22       #startMillis:J
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    .line 358
    .local v11, eventTimezone:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_f6

    .line 359
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 360
    .restart local v6       #begin:Landroid/text/format/Time;
    iget-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 361
    .restart local v25       #tz:Ljava/lang/String;
    iput-object v11, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 362
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 363
    move-object/from16 v0, v25

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 364
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 365
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    goto/16 :goto_f6

    .line 370
    .end local v6           #begin:Landroid/text/format/Time;
    .end local v11           #eventTimezone:Ljava/lang/String;
    .end local v12           #fbEventId:Ljava/lang/String;
    .end local v22           #startMillis:J
    .end local v25           #tz:Ljava/lang/String;
    :cond_1ef
    const/16 v26, 0xd

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .restart local v21       #startDay:I
    goto/16 :goto_104

    .line 384
    :cond_1f9
    const/4 v9, 0x0

    .line 385
    .local v9, dayHeaderAdded:Z
    add-int/lit8 v7, v19, 0x1

    .local v7, currentDay:I
    :goto_1fc
    move/from16 v0, v21

    if-gt v7, v0, :cond_24a

    .line 386
    const/4 v9, 0x0

    .line 387
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 388
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_205
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_247

    .line 389
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 392
    .local v13, info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v7, :cond_21d

    .line 393
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_205

    .line 399
    :cond_21d
    if-nez v9, :cond_234

    if-eqz v4, :cond_234

    .line 400
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const/4 v9, 0x1

    .line 403
    :cond_234
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_205

    .line 385
    .end local v13           #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_247
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fc

    .line 409
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_24a
    if-nez v9, :cond_136

    if-eqz v4, :cond_136

    .line 410
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    .line 437
    .end local v5           #allDay:Z
    .end local v7           #currentDay:I
    .end local v9           #dayHeaderAdded:Z
    .end local v21           #startDay:I
    :cond_264
    if-lez v19, :cond_2bc

    .line 438
    add-int/lit8 v7, v19, 0x1

    .restart local v7       #currentDay:I
    :goto_268
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v7, v0, :cond_2bc

    .line 439
    const/4 v9, 0x0

    .line 440
    .restart local v9       #dayHeaderAdded:Z
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 441
    .restart local v14       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_277
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2b9

    .line 442
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 445
    .restart local v13       #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v7, :cond_28f

    .line 446
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_277

    .line 452
    :cond_28f
    if-nez v9, :cond_2a6

    if-eqz v4, :cond_2a6

    .line 453
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    const/4 v9, 0x1

    .line 456
    :cond_2a6
    new-instance v26, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    iget v0, v13, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_277

    .line 438
    .end local v13           #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_2b9
    add-int/lit8 v7, v7, 0x1

    goto :goto_268

    .line 460
    .end local v7           #currentDay:I
    .end local v9           #dayHeaderAdded:Z
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_2bc
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_46
.end method

.method public changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 316
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 317
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .registers 13
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 625
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    .line 649
    :cond_5
    :goto_5
    return v1

    .line 628
    :cond_6
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 629
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 630
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 631
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 632
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 633
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1a
    if-ge v1, v3, :cond_39

    .line 634
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 635
    .local v8, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_36

    .line 636
    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 637
    .local v0, distance:I
    if-eqz v0, :cond_5

    .line 640
    if-ge v0, v6, :cond_36

    .line 641
    move v6, v0

    .line 642
    move v7, v1

    .line 633
    .end local v0           #distance:I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .end local v8           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_39
    move v1, v7

    .line 649
    goto :goto_5
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 96
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_a
.end method

.method public getCursorPosition(I)I
    .registers 6
    .parameter "listPos"

    .prologue
    .line 684
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    if-ltz p1, :cond_28

    .line 685
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 686
    .local v1, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 687
    iget v2, v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 698
    .end local v1           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_15
    return v2

    .line 689
    .restart local v1       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_16
    add-int/lit8 v0, p1, 0x1

    .line 690
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 692
    if-ltz v0, :cond_28

    .line 693
    neg-int v2, v0

    goto :goto_15

    .line 698
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_28
    const/high16 v2, -0x8000

    goto :goto_15
.end method

.method public getDayCount()I
    .registers 5

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, count:I
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 722
    .local v2, rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_7

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 725
    .end local v2           #rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1a
    return v0
.end method

.method public getDayPosition(I)I
    .registers 6
    .parameter "dayIndex"

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 747
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 748
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 749
    .local v2, rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_1b

    .line 750
    add-int/lit8 v0, v0, 0x1

    .line 751
    if-le v0, p1, :cond_1b

    .line 756
    .end local v1           #i:I
    .end local v2           #rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_1a
    return v1

    .line 747
    .restart local v1       #i:I
    .restart local v2       #rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 756
    .end local v2           #rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1e
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 103
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 104
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_11

    .line 110
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_10
    return-object v0

    .line 107
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_11
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 110
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1a
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 115
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 116
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_13

    .line 117
    neg-int v1, p1

    int-to-long v1, v1

    .line 122
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_12
    return-wide v1

    .line 119
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_13
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_12

    .line 122
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1c
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_12
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_17

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getMeetingCountPerOneDay(I)I
    .registers 9
    .parameter "dayIndex"

    .prologue
    .line 729
    iget-object v5, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 730
    .local v4, total:I
    const/4 v0, 0x0

    .line 732
    .local v0, count:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v2

    .line 733
    .local v2, index:I
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_d
    if-ge v1, v4, :cond_21

    .line 734
    iget-object v5, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 735
    .local v3, rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v5, v3, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 736
    add-int/lit8 v0, v0, 0x1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 741
    .end local v3           #rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_21
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, p1

    move/from16 v1, v24

    if-le v0, v1, :cond_2b

    .line 139
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 265
    :goto_2a
    return-object v6

    .line 142
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 143
    .local v19, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v24, v0

    if-nez v24, :cond_175

    .line 144
    const/16 v16, 0x0

    .line 145
    .local v16, holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    const/4 v6, 0x0

    .line 146
    .local v6, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_60

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_60

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    .line 150
    .local v20, tag:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    move/from16 v24, v0

    if-eqz v24, :cond_60

    .line 151
    move-object/from16 v6, p2

    move-object/from16 v16, v20

    .line 152
    check-cast v16, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    .line 156
    .end local v20           #tag:Ljava/lang/Object;
    :cond_60
    if-nez v16, :cond_94

    .line 159
    new-instance v16, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    .end local v16           #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    invoke-direct/range {v16 .. v16}, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 160
    .restart local v16       #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030001

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 161
    const v24, 0x7f0f000a

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 162
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    :cond_94
    new-instance v10, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 166
    .local v10, date:Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v10, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    move-result-wide v17

    .line 172
    .local v17, millis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "date_format"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, dateFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00e2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, format:Ljava/lang/String;
    if-eqz v11, :cond_f5

    .line 176
    const-string v24, "MM-dd-yyyy"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14a

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00e3

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 183
    :cond_f5
    :goto_f5
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_166

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a002d

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 192
    .local v21, todayString:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-static {v0, v15, v1, v2}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 197
    .end local v21           #todayString:Ljava/lang/String;
    .local v12, dateViewText:Ljava/lang/String;
    :goto_13d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 178
    .end local v12           #dateViewText:Ljava/lang/String;
    :cond_14a
    const-string v24, "yyyy-MM-dd"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f5

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00e4

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_f5

    .line 194
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-static {v0, v15, v1, v2}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #dateViewText:Ljava/lang/String;
    goto :goto_13d

    .line 200
    .end local v6           #agendaDayView:Landroid/view/View;
    .end local v10           #date:Landroid/text/format/Time;
    .end local v11           #dateFormat:Ljava/lang/String;
    .end local v12           #dateViewText:Ljava/lang/String;
    .end local v15           #format:Ljava/lang/String;
    .end local v16           #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    .end local v17           #millis:J
    :cond_175
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_28f

    .line 201
    const/16 v22, 0x0

    .line 203
    .local v22, x:Landroid/view/View;
    :try_start_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_19c
    .catch Ljava/lang/IllegalStateException; {:try_start_185 .. :try_end_19c} :catch_238

    move-result-object v22

    .line 207
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 210
    .local v23, y:Landroid/widget/TextView;
    if-eqz v23, :cond_1b2

    .line 216
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, action:Ljava/lang/String;
    if-eqz v4, :cond_1cc

    const-string v24, "android.intent.action.PICK"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1da

    :cond_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_234

    .line 226
    :cond_1da
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 227
    .local v8, checkbox:Landroid/widget/CheckBox;
    const/4 v5, 0x0

    .line 228
    .local v5, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    const/4 v7, 0x0

    .line 229
    .local v7, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/4 v14, 0x0

    .line 231
    .local v14, eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v4, :cond_248

    const-string v24, "android.intent.action.PICK"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_248

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/calendar/AgendaActivity;

    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/AgendaActivity;->getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v5

    .line 240
    :cond_1ff
    :goto_1ff
    if-eqz v5, :cond_20b

    .line 241
    invoke-virtual {v5}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v7

    .line 242
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v14

    .line 245
    :cond_20b
    if-eqz v7, :cond_234

    if-eqz v14, :cond_234

    .line 246
    iget-wide v0, v14, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 247
    .local v9, checked:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v17

    .line 248
    .restart local v17       #millis:J
    if-eqz v9, :cond_263

    .line 249
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .end local v5           #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .end local v7           #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v8           #checkbox:Landroid/widget/CheckBox;
    .end local v9           #checked:Ljava/lang/Boolean;
    .end local v14           #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v17           #millis:J
    :cond_234
    :goto_234
    move-object/from16 v6, v22

    .line 265
    goto/16 :goto_2a

    .line 204
    .end local v4           #action:Ljava/lang/String;
    .end local v23           #y:Landroid/widget/TextView;
    :catch_238
    move-exception v13

    .line 205
    .local v13, e:Ljava/lang/IllegalStateException;
    new-instance v6, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2a

    .line 236
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v4       #action:Ljava/lang/String;
    .restart local v5       #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .restart local v7       #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v8       #checkbox:Landroid/widget/CheckBox;
    .restart local v14       #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .restart local v23       #y:Landroid/widget/TextView;
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/calendar/AgendaDeleteActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_1ff

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/AgendaDeleteActivity;->getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v5

    goto :goto_1ff

    .line 251
    .restart local v9       #checked:Ljava/lang/Boolean;
    .restart local v17       #millis:J
    :cond_263
    invoke-virtual {v5}, Lcom/android/calendar/AgendaWindowAdapter;->getAllChecked()Z

    move-result v24

    if-eqz v24, :cond_271

    .line 252
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_234

    .line 254
    :cond_271
    invoke-virtual {v5}, Lcom/android/calendar/AgendaWindowAdapter;->getBeforeTodayChecked()Z

    move-result v24

    if-eqz v24, :cond_287

    iget-wide v0, v14, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, v17

    if-gez v24, :cond_287

    .line 255
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_234

    .line 257
    :cond_287
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_234

    .line 268
    .end local v4           #action:Ljava/lang/String;
    .end local v5           #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .end local v7           #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v8           #checkbox:Landroid/widget/CheckBox;
    .end local v9           #checked:Ljava/lang/Boolean;
    .end local v14           #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v17           #millis:J
    .end local v22           #x:Landroid/view/View;
    .end local v23           #y:Landroid/widget/TextView;
    :cond_28f
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown event type:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 708
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_19

    .line 709
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 710
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1a

    .line 712
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_19
    :goto_19
    return v1

    .line 710
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public setChecked(IZ)V
    .registers 5
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_d

    .line 303
    :cond_c
    :goto_c
    return-void

    .line 301
    :cond_d
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 302
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iput-boolean p2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mChecked:Z

    goto :goto_c
.end method

.method public stopImageLoaderThread()V
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    invoke-virtual {v0}, Lcom/android/calendar/ImageLoader;->stopThread()V

    .line 717
    return-void
.end method
