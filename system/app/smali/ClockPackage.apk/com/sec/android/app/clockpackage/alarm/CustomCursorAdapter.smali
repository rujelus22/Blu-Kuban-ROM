.class public Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CustomCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;,
        Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mSetAsUri:Ljava/lang/String;

.field private static pp:Landroid/os/Parcel;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCheckStateBridge:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;

.field private mChiceListItemIndex:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

.field private mHeaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListDayColorActive:I

.field private mListDayColorInactive:I

.field private mMode:I

.field private mToggleLock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    .line 34
    sput-object v1, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->pp:Landroid/os/Parcel;

    .line 44
    sput-object v1, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mSetAsUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mHeaderList:Ljava/util/ArrayList;

    .line 54
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 72
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mListDayColorActive:I

    .line 77
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mListDayColorInactive:I

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;IZI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->setAlarmActive(IZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->startDetailView(Ljava/lang/String;I)V

    return-void
.end method

.method private saveMsg(Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 28
    .parameter "item"

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 373
    .local v21, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 375
    .local v3, c:Ljava/util/Calendar;
    const/16 v22, 0xd

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 376
    const/16 v22, 0xe

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 377
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v22, v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    sub-long v7, v22, v24

    .line 381
    .local v7, delta:J
    const-wide/32 v22, 0x36ee80

    div-long v14, v7, v22

    .line 382
    .local v14, hours:J
    const-wide/32 v22, 0xea60

    div-long v22, v7, v22

    const-wide/16 v24, 0x3c

    rem-long v19, v22, v24

    .line 383
    .local v19, minutes:J
    const-wide/16 v22, 0x18

    div-long v5, v14, v22

    .line 384
    .local v5, days:J
    const-wide/16 v22, 0x18

    rem-long v14, v14, v22

    .line 386
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-nez v22, :cond_ca

    const-string v4, ""

    .line 389
    .local v4, daySeq:Ljava/lang/String;
    :goto_4e
    const-wide/16 v22, 0x0

    cmp-long v22, v19, v22

    if-nez v22, :cond_f2

    const-string v18, ""

    .line 393
    .local v18, minSeq:Ljava/lang/String;
    :goto_56
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-nez v22, :cond_11a

    const-string v13, ""

    .line 397
    .local v13, hourSeq:Ljava/lang/String;
    :goto_5e
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-lez v22, :cond_142

    const/4 v9, 0x1

    .line 398
    .local v9, dispDays:Z
    :goto_65
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-lez v22, :cond_145

    const/4 v10, 0x1

    .line 399
    .local v10, dispHour:Z
    :goto_6c
    const-wide/16 v22, 0x0

    cmp-long v22, v19, v22

    if-lez v22, :cond_148

    const/4 v11, 0x1

    .line 401
    .local v11, dispMinute:Z
    :goto_73
    if-eqz v9, :cond_14b

    const/16 v22, 0x1

    move/from16 v23, v22

    :goto_79
    if-eqz v10, :cond_151

    const/16 v22, 0x2

    :goto_7d
    or-int v23, v23, v22

    if-eqz v11, :cond_155

    const/16 v22, 0x4

    :goto_83
    or-int v16, v23, v22

    .line 404
    .local v16, index:I
    const v22, 0x7f07000f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 405
    .local v12, formats:[Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v22, "com.samsung.sec.android.clockpackage.alarm.ALARM_SAVE_MESSAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v17, intent:Landroid/content/Intent;
    const-string v22, "save_msg"

    aget-object v23, v12, v16

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v4, v24, v25

    const/16 v25, 0x1

    aput-object v13, v24, v25

    const/16 v25, 0x2

    aput-object v18, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    return-void

    .line 386
    .end local v4           #daySeq:Ljava/lang/String;
    .end local v9           #dispDays:Z
    .end local v10           #dispHour:Z
    .end local v11           #dispMinute:Z
    .end local v12           #formats:[Ljava/lang/String;
    .end local v13           #hourSeq:Ljava/lang/String;
    .end local v16           #index:I
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #minSeq:Ljava/lang/String;
    :cond_ca
    const-wide/16 v22, 0x1

    cmp-long v22, v5, v22

    if-nez v22, :cond_d9

    const v22, 0x7f0b0042

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4e

    :cond_d9
    const v22, 0x7f0b0043

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4e

    .line 389
    .restart local v4       #daySeq:Ljava/lang/String;
    :cond_f2
    const-wide/16 v22, 0x1

    cmp-long v22, v19, v22

    if-nez v22, :cond_101

    const v22, 0x7f0b0046

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_56

    :cond_101
    const v22, 0x7f0b0047

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_56

    .line 393
    .restart local v18       #minSeq:Ljava/lang/String;
    :cond_11a
    const-wide/16 v22, 0x1

    cmp-long v22, v14, v22

    if-nez v22, :cond_129

    const v22, 0x7f0b0044

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5e

    :cond_129
    const v22, 0x7f0b0045

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5e

    .line 397
    .restart local v13       #hourSeq:Ljava/lang/String;
    :cond_142
    const/4 v9, 0x0

    goto/16 :goto_65

    .line 398
    .restart local v9       #dispDays:Z
    :cond_145
    const/4 v10, 0x0

    goto/16 :goto_6c

    .line 399
    .restart local v10       #dispHour:Z
    :cond_148
    const/4 v11, 0x0

    goto/16 :goto_73

    .line 401
    .restart local v11       #dispMinute:Z
    :cond_14b
    const/16 v22, 0x0

    move/from16 v23, v22

    goto/16 :goto_79

    :cond_151
    const/16 v22, 0x0

    goto/16 :goto_7d

    :cond_155
    const/16 v22, 0x0

    goto/16 :goto_83
.end method

.method private setAlarmActive(IZI)V
    .registers 16
    .parameter "position"
    .parameter "active"
    .parameter "activeNow"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 412
    sget-boolean v6, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v6, :cond_29

    .line 413
    const-string v6, "CustomCursorAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAlarmActive position["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_29
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 416
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    .line 417
    .local v3, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    iget v1, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 418
    .local v1, current:I
    const/4 v2, 0x1

    .line 419
    .local v2, currentActive:Z
    if-nez v1, :cond_3a

    .line 420
    const/4 v2, 0x0

    .line 422
    :cond_3a
    if-eq v2, p2, :cond_f7

    .line 423
    if-eqz p2, :cond_b3

    .line 424
    iget-boolean v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v6, :cond_b0

    .line 425
    iput v11, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 428
    :goto_44
    iput v9, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 429
    iget-wide v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 430
    .local v4, oldCreationTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 431
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 432
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 433
    iput-wide v4, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 443
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->saveMsg(Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    .line 474
    .end local v4           #oldCreationTime:J
    :goto_5d
    sget-boolean v6, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v6, :cond_79

    .line 475
    const-string v6, "CustomCursorAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAlarmActive to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_79
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 482
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    :goto_af
    return-void

    .line 427
    :cond_b0
    iput v10, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto :goto_44

    .line 445
    :cond_b3
    const/4 v6, 0x2

    if-ne p3, v6, :cond_f3

    .line 446
    iget v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v6, v6, 0xf

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_e0

    .line 447
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v6

    if-ne v6, v10, :cond_c7

    .line 448
    iput v9, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto :goto_5d

    .line 450
    :cond_c7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 451
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 452
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 453
    iput v10, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 454
    iget-boolean v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v6, :cond_d9

    .line 455
    iput v11, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 457
    :cond_d9
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 458
    iput v9, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto/16 :goto_5d

    .line 461
    .end local v0           #c:Ljava/util/Calendar;
    :cond_e0
    iget-boolean v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v6, :cond_f0

    .line 462
    iput v11, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 465
    :goto_e6
    iput v9, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 466
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 467
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    goto/16 :goto_5d

    .line 464
    :cond_f0
    iput v10, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto :goto_e6

    .line 470
    :cond_f3
    iput v9, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto/16 :goto_5d

    .line 484
    :cond_f7
    sget-boolean v6, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v6, :cond_102

    .line 485
    const-string v6, "CustomCursorAdapter"

    const-string v7, "Lock no more needed. Release toggle lock."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_102
    iput-boolean v9, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z

    goto :goto_af
.end method

.method private startDetailView(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 545
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 546
    const-string v0, "CustomCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDetailView type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 550
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mSetAsUri:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 554
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v1, :cond_57

    .line 555
    const-string v1, "CustomCursorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSetAsUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mSetAsUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_57
    const-string v1, "alarm_uri"

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mSetAsUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 561
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ID"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_POSITION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    const-string v1, "alarm_edit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_9f

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->pp:Landroid/os/Parcel;

    .line 569
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->pp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->writeToParcel(Landroid/os/Parcel;)V

    .line 570
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->pp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 574
    :cond_9f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 30
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v23, v0

    if-nez v23, :cond_12

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCalendar:Ljava/util/Calendar;

    .line 112
    :cond_12
    const/16 v23, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 113
    .local v5, alarmTime:I
    div-int/lit8 v12, v5, 0x64

    .line 114
    .local v12, hour:I
    rem-int/lit8 v16, v5, 0x64

    .line 115
    .local v16, minute:I
    const/4 v13, 0x0

    .line 116
    .local v13, hourStr:Ljava/lang/String;
    const/16 v17, 0x0

    .line 117
    .local v17, minuteStr:Ljava/lang/String;
    const-string v6, ""

    .line 118
    .local v6, ampm:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_198

    .line 119
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object v13

    .line 120
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object v17

    .line 137
    :goto_33
    const v23, 0x7f0e003c

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v23, 0x7f0e003d

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/16 v23, 0x14

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, alarmName:Ljava/lang/String;
    if-eqz v4, :cond_1c9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1c9

    .line 143
    const v23, 0x7f0e003b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_96
    const v23, 0x7f0e0046

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    .line 150
    .local v3, activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setEnabled(Z)V

    .line 151
    const/16 v23, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 152
    .local v2, active:I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v2, v0, :cond_1dd

    .line 153
    const v23, 0x7f020179

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setButtonDrawable(I)V

    .line 154
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setChecked(Z)V

    .line 161
    :goto_c9
    move-object/from16 v7, p3

    .line 163
    .local v7, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    move/from16 v23, v0

    if-nez v23, :cond_da

    .line 164
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setFocusable(Z)V

    .line 166
    :cond_da
    new-instance v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Landroid/database/Cursor;I)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    move/from16 v23, v0

    if-nez v23, :cond_1fd

    const/16 v23, 0x0

    :goto_100
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setVisibility(I)V

    .line 220
    const v23, 0x7f0e0045

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 221
    .local v11, dividerView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    move/from16 v23, v0

    if-nez v23, :cond_201

    const/16 v23, 0x0

    :goto_11a
    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const v23, 0x7f0e0038

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 226
    .local v8, checkToDelete:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_205

    const/16 v23, 0x0

    :goto_13c
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 228
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    .line 229
    .local v18, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCheckStateBridge:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;

    move-object/from16 v23, v0

    if-eqz v23, :cond_209

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCheckStateBridge:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;->getListCheckState(I)Z

    move-result v9

    .line 231
    .local v9, checked:Z
    :goto_15b
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v23

    move/from16 v0, v23

    if-eq v0, v9, :cond_166

    .line 232
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    :cond_166
    const/16 v23, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 237
    .local v20, repeatType:I
    shr-int/lit8 v19, v20, 0x4

    .line 238
    .local v19, repeatDays:I
    move/from16 v22, v19

    .line 240
    .local v22, tmpDays:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_175
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ge v14, v0, :cond_293

    .line 241
    and-int/lit8 v10, v22, 0xf

    .line 242
    .local v10, curDay:I
    shr-int/lit8 v22, v22, 0x4

    .line 243
    const/16 v21, 0x0

    .line 245
    .local v21, t:Landroid/widget/TextView;
    packed-switch v14, :pswitch_data_2f0

    .line 272
    :goto_184
    if-eqz v21, :cond_284

    .line 273
    if-lez v10, :cond_275

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mListDayColorActive:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    :cond_195
    :goto_195
    add-int/lit8 v14, v14, 0x1

    goto :goto_175

    .line 122
    .end local v2           #active:I
    .end local v3           #activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;
    .end local v4           #alarmName:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #checkToDelete:Landroid/widget/CheckBox;
    .end local v9           #checked:Z
    .end local v10           #curDay:I
    .end local v11           #dividerView:Landroid/view/View;
    .end local v14           #i:I
    .end local v18           #position:I
    .end local v19           #repeatDays:I
    .end local v20           #repeatType:I
    .end local v21           #t:Landroid/widget/TextView;
    .end local v22           #tmpDays:I
    :cond_198
    rem-int/lit8 v23, v12, 0xc

    if-nez v23, :cond_1b5

    .line 123
    const-string v13, "12"

    .line 131
    :goto_19e
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object v17

    .line 132
    const/16 v23, 0xc

    move/from16 v0, v23

    if-lt v12, v0, :cond_1bc

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b0027

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_33

    .line 126
    :cond_1b5
    rem-int/lit8 v23, v12, 0xc

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->toDigitString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_19e

    .line 135
    :cond_1bc
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b0026

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_33

    .line 146
    .restart local v4       #alarmName:Ljava/lang/String;
    :cond_1c9
    const v23, 0x7f0e003b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    .line 156
    .restart local v2       #active:I
    .restart local v3       #activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;
    :cond_1dd
    const v23, 0x7f020178

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setButtonDrawable(I)V

    .line 157
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_1f1

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v2, v0, :cond_1fa

    :cond_1f1
    const/16 v23, 0x1

    :goto_1f3
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setChecked(Z)V

    goto/16 :goto_c9

    :cond_1fa
    const/16 v23, 0x0

    goto :goto_1f3

    .line 218
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_1fd
    const/16 v23, 0x8

    goto/16 :goto_100

    .line 221
    .restart local v11       #dividerView:Landroid/view/View;
    :cond_201
    const/16 v23, 0x8

    goto/16 :goto_11a

    .line 226
    .restart local v8       #checkToDelete:Landroid/widget/CheckBox;
    :cond_205
    const/16 v23, 0x8

    goto/16 :goto_13c

    .line 229
    .restart local v18       #position:I
    :cond_209
    const/4 v9, 0x0

    goto/16 :goto_15b

    .line 247
    .restart local v9       #checked:Z
    .restart local v10       #curDay:I
    .restart local v14       #i:I
    .restart local v19       #repeatDays:I
    .restart local v20       #repeatType:I
    .restart local v21       #t:Landroid/widget/TextView;
    .restart local v22       #tmpDays:I
    :pswitch_20c
    const v23, 0x7f0e0044

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 248
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 250
    :pswitch_21b
    const v23, 0x7f0e0043

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 251
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 253
    :pswitch_22a
    const v23, 0x7f0e0042

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 254
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 256
    :pswitch_239
    const v23, 0x7f0e0041

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 257
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 259
    :pswitch_248
    const v23, 0x7f0e0040

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 260
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 262
    :pswitch_257
    const v23, 0x7f0e003f

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 263
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 265
    :pswitch_266
    const v23, 0x7f0e003e

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #t:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 266
    .restart local v21       #t:Landroid/widget/TextView;
    goto/16 :goto_184

    .line 276
    :cond_275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mListDayColorInactive:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_195

    .line 278
    :cond_284
    sget-boolean v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v23, :cond_195

    .line 279
    const-string v23, "CustomCursorAdapter"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_195

    .line 284
    .end local v10           #curDay:I
    .end local v21           #t:Landroid/widget/TextView;
    :cond_293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    move/from16 v23, v0

    if-nez v23, :cond_2ee

    .line 286
    const v23, 0x7f0e003a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 288
    .local v15, leftside:Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 289
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 291
    new-instance v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Landroid/database/Cursor;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    new-instance v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 328
    new-instance v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    new-instance v23, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    .end local v15           #leftside:Landroid/widget/LinearLayout;
    :cond_2ee
    return-void

    .line 245
    nop

    :pswitch_data_2f0
    .packed-switch 0x0
        :pswitch_20c
        :pswitch_21b
        :pswitch_22a
        :pswitch_239
        :pswitch_248
        :pswitch_257
        :pswitch_266
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z

    .line 495
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 497
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 498
    const-string v0, "CustomCursorAdapter"

    const-string v1, "notifyDataSetChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    if-eqz v0, :cond_1a

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    invoke-interface {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;->OnCursorChanged()V

    .line 503
    :cond_1a
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z

    .line 509
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 511
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 512
    const-string v0, "CustomCursorAdapter"

    const-string v1, "notifyDataSetInvalidated called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    if-eqz v0, :cond_1a

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    invoke-interface {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;->OnCursorInvalidated()V

    .line 517
    :cond_1a
    return-void
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 521
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 523
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 524
    const-string v0, "CustomCursorAdapter"

    const-string v1, "onContentChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    if-eqz v0, :cond_17

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    invoke-interface {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;->OnCursorChanged()V

    .line 529
    :cond_17
    return-void
.end method

.method setAsUri(Ljava/lang/String;)V
    .registers 2
    .parameter "setAsUri"

    .prologue
    .line 579
    sput-object p1, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mSetAsUri:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setCheckStateBridge(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;)V
    .registers 2
    .parameter "csb"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCheckStateBridge:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;

    .line 540
    return-void
.end method

.method public setMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 81
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 82
    :cond_5
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mMode:I

    .line 83
    :cond_7
    return-void
.end method

.method public setOnCursorChangeListener(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;

    .line 91
    return-void
.end method
