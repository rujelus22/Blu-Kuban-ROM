.class public Lcom/android/exchange/SyncScheduler;
.super Ljava/lang/Object;
.source "SyncScheduler.java"


# static fields
.field private static sCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method public static getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;
    .registers 26
    .parameter "syncScheduleData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/SyncScheduleData;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 31
    .local v2, isPeak:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    sput-object v22, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    .line 32
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 34
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 38
    .local v13, now:J
    const-wide/16 v11, 0x0

    .line 40
    .local v11, nextAlarm:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v19

    .line 42
    .local v19, peakStartMinute:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v15

    .line 46
    .local v15, offPeakStartMinute:I
    move/from16 v0, v19

    invoke-static {v1, v0}, Lcom/android/exchange/SyncScheduler;->getMinuteInMillis(Ljava/util/Date;I)J

    move-result-wide v20

    .line 50
    .local v20, peakTime:J
    invoke-static {v1, v15}, Lcom/android/exchange/SyncScheduler;->getMinuteInMillis(Ljava/util/Date;I)J

    move-result-wide v16

    .line 54
    .local v16, offPeakTime:J
    sub-long v9, v20, v13

    .line 56
    .local v9, millisToPeakTimeStart:J
    sub-long v7, v16, v13

    .line 58
    .local v7, millisToPeakTimeEnd:J
    const-wide/16 v5, 0x0

    .line 66
    .local v5, millisToNextAlarm:J
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/SyncScheduler;->getPeakDays(Lcom/android/emailcommon/utility/SyncScheduleData;)Ljava/util/ArrayList;

    move-result-object v18

    .line 70
    .local v18, peakDaysArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v22, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const/4 v3, 0x1

    .line 74
    .local v3, isPeakDay:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v22

    if-gez v22, :cond_4d

    .line 78
    const/4 v3, 0x0

    .line 84
    :cond_4d
    sget-object v22, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v23, 0x5

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Ljava/util/Calendar;->add(II)V

    .line 86
    const/4 v4, 0x1

    .line 88
    .local v4, isYesterdayPeakDay:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v22

    if-gez v22, :cond_6e

    .line 92
    const/4 v4, 0x0

    .line 100
    :cond_6e
    cmp-long v22, v9, v7

    if-nez v22, :cond_94

    .line 106
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-lez v22, :cond_8b

    .line 112
    if-eqz v4, :cond_7b

    .line 114
    const/4 v2, 0x1

    .line 122
    :cond_7b
    move-wide v5, v7

    .line 228
    :goto_7c
    move-wide v11, v5

    .line 232
    new-instance v22, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v22

    .line 130
    :cond_8b
    if-eqz v3, :cond_8e

    .line 132
    const/4 v2, 0x1

    .line 140
    :cond_8e
    const-wide/32 v22, 0x5265c00

    add-long v5, v9, v22

    goto :goto_7c

    .line 144
    :cond_94
    const-wide/16 v22, 0x0

    cmp-long v22, v9, v22

    if-gtz v22, :cond_b4

    .line 154
    cmp-long v22, v7, v9

    if-gez v22, :cond_a3

    .line 156
    const-wide/32 v22, 0x5265c00

    add-long v7, v7, v22

    .line 162
    :cond_a3
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-lez v22, :cond_ae

    .line 166
    if-eqz v3, :cond_ac

    .line 168
    const/4 v2, 0x1

    .line 176
    :cond_ac
    move-wide v5, v7

    goto :goto_7c

    .line 184
    :cond_ae
    const-wide/32 v22, 0x5265c00

    add-long v5, v9, v22

    goto :goto_7c

    .line 188
    :cond_b4
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-lez v22, :cond_c3

    cmp-long v22, v7, v9

    if-gez v22, :cond_c3

    .line 198
    if-eqz v4, :cond_c1

    .line 200
    const/4 v2, 0x1

    .line 208
    :cond_c1
    move-wide v5, v7

    goto :goto_7c

    .line 222
    :cond_c3
    move-wide v5, v9

    goto :goto_7c
.end method

.method private static getMinuteInMillis(Ljava/util/Date;I)J
    .registers 7
    .parameter "date"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 290
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    div-int/lit8 v0, p1, 0x3c

    .line 294
    .local v0, hr:I
    rem-int/lit8 v1, p1, 0x3c

    .line 296
    .local v1, min:I
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 298
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 300
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 302
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 304
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static getPeakDays(Lcom/android/emailcommon/utility/SyncScheduleData;)Ljava/util/ArrayList;
    .registers 10
    .parameter "syncSchedulerData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/SyncScheduleData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    .line 242
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v5

    .line 244
    .local v5, peakDays:I
    const/4 v3, 0x1

    .line 246
    .local v3, mask:I
    const/4 v4, 0x0

    .line 248
    .local v4, numberOfPeakDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v8, :cond_15

    .line 250
    and-int v7, v5, v3

    if-eqz v7, :cond_10

    .line 252
    add-int/lit8 v4, v4, 0x1

    .line 256
    :cond_10
    shl-int/lit8 v3, v3, 0x1

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 264
    :cond_15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v6, peakDaysArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 268
    const/4 v1, 0x0

    .line 270
    .local v1, j:I
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_1e
    if-ge v0, v8, :cond_35

    .line 272
    and-int v7, v5, v3

    if-eqz v7, :cond_36

    .line 274
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 278
    :goto_2f
    shl-int/lit8 v3, v3, 0x1

    .line 270
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_1e

    .line 282
    :cond_35
    return-object v6

    :cond_36
    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_2f
.end method
