.class public Lcom/google/android/youtube/core/utils/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLiveEventStatusText(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "liveEvent"

    .prologue
    .line 60
    const-string v0, "liveEvent can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "context can\'t be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/TimeUtil;->getStartTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_16
    return-object v0

    .line 64
    :cond_17
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v1, :cond_25

    .line 65
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 67
    :cond_25
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private static getStartTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "startTime"

    .prologue
    const/16 v7, 0xa01

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 80
    const-string v2, "startTime can\'t be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "context can\'t be null"

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 84
    const v2, 0x7f0b006c

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/youtube/core/utils/TimeUtil;->getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_2d
    return-object v2

    .line 86
    :cond_2e
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 87
    const v2, 0x7f0b006d

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {p0, v4, v5, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 91
    :cond_4c
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, weekday:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, time:Ljava/lang/String;
    const v2, 0x7f0b006e

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d
.end method

.method public static getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 18
    .parameter "date"
    .parameter "resources"

    .prologue
    .line 22
    if-nez p0, :cond_4

    .line 23
    const/4 v12, 0x0

    .line 56
    :goto_3
    return-object v12

    .line 25
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 26
    .local v10, timestampMillis:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 27
    .local v8, nowMillis:J
    cmp-long v12, v8, v10

    if-gtz v12, :cond_12

    .line 29
    const/4 v12, 0x0

    goto :goto_3

    .line 32
    :cond_12
    sub-long v12, v8, v10

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v5, v12

    .line 33
    .local v5, agoSecs:I
    div-int/lit8 v3, v5, 0x3c

    .line 34
    .local v3, agoMins:I
    div-int/lit8 v2, v3, 0x3c

    .line 35
    .local v2, agoHours:I
    div-int/lit8 v1, v2, 0x18

    .line 36
    .local v1, agoDays:I
    div-int/lit8 v6, v1, 0x7

    .line 37
    .local v6, agoWeeks:I
    div-int/lit8 v4, v1, 0x1e

    .line 38
    .local v4, agoMonths:I
    div-int/lit8 v7, v4, 0xc

    .line 40
    .local v7, agoYears:I
    if-lez v7, :cond_39

    .line 41
    const/high16 v12, 0x7f0f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 42
    :cond_39
    if-lez v4, :cond_4f

    .line 43
    const v12, 0x7f0f0001

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 44
    :cond_4f
    if-lez v6, :cond_65

    .line 45
    const v12, 0x7f0f0002

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 46
    :cond_65
    if-lez v1, :cond_7b

    .line 47
    const v12, 0x7f0f0003

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 48
    :cond_7b
    if-lez v2, :cond_92

    .line 49
    const v12, 0x7f0f0004

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 50
    :cond_92
    if-lez v3, :cond_a9

    .line 51
    const v12, 0x7f0f0005

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 52
    :cond_a9
    if-lez v5, :cond_c0

    .line 53
    const v12, 0x7f0f0006

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 56
    :cond_c0
    const/4 v12, 0x0

    goto/16 :goto_3
.end method
