.class public Lcom/google/android/apps/plus/util/Dates;
.super Ljava/lang/Object;
.source "Dates.java"


# static fields
.field private static sThenTime:Landroid/text/format/Time;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static declared-synchronized getNumberOfDaysPassed(JJ)J
    .registers 10
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 100
    const-class v3, Lcom/google/android/apps/plus/util/Dates;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/google/android/apps/plus/util/Dates;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_e

    .line 101
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/util/Dates;->sThenTime:Landroid/text/format/Time;

    .line 103
    :cond_e
    sget-object v2, Lcom/google/android/apps/plus/util/Dates;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 104
    sget-object v2, Lcom/google/android/apps/plus/util/Dates;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 105
    .local v0, day1:I
    sget-object v2, Lcom/google/android/apps/plus/util/Dates;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 106
    sget-object v2, Lcom/google/android/apps/plus/util/Dates;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 107
    .local v1, day2:I
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_31

    move-result v2

    int-to-long v4, v2

    monitor-exit v3

    return-wide v4

    .line 100
    .end local v0           #day1:I
    .end local v1           #day2:I
    :catchall_31
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 11
    .parameter "context"
    .parameter "time"

    .prologue
    const-wide/32 v4, 0xea60

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    .local v2, now:J
    sub-long v0, v2, p1

    cmp-long v0, v0, v4

    if-gez v0, :cond_19

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    :goto_18
    return-object v0

    .line 57
    :cond_19
    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    move-wide v0, p1

    :try_start_1f
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_18

    .line 59
    :catch_28
    move-exception v7

    .line 60
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Dates"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 61
    const-string v0, "Dates"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DateUtils.getRelativeTimeSpanString threw an exception! time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", now="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_62
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/util/Dates;->getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_18
.end method

.method public static getShortRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 19
    .parameter "context"
    .parameter "time"

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 70
    .local v13, now:J
    sub-long v2, v13, p1

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 96
    :goto_18
    return-object v2

    .line 75
    :cond_19
    sub-long v2, v13, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 79
    .local v10, duration:J
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v10, v2

    if-gez v2, :cond_46

    .line 80
    const-wide/32 v2, 0xea60

    div-long v8, v10, v2

    .line 81
    .local v8, count:J
    const v15, 0x7f0e001f

    .line 95
    .local v15, resId:I
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    long-to-int v3, v8

    invoke-virtual {v2, v15, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, format:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 82
    .end local v8           #count:J
    .end local v12           #format:Ljava/lang/String;
    .end local v15           #resId:I
    :cond_46
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v10, v2

    if-gez v2, :cond_56

    .line 83
    const-wide/32 v2, 0x36ee80

    div-long v8, v10, v2

    .line 84
    .restart local v8       #count:J
    const v15, 0x7f0e0020

    .restart local v15       #resId:I
    goto :goto_2e

    .line 85
    .end local v8           #count:J
    .end local v15           #resId:I
    :cond_56
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v10, v2

    if-gez v2, :cond_67

    .line 86
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13, v14}, Lcom/google/android/apps/plus/util/Dates;->getNumberOfDaysPassed(JJ)J

    move-result-wide v8

    .line 87
    .restart local v8       #count:J
    const v15, 0x7f0e0021

    .restart local v15       #resId:I
    goto :goto_2e

    .line 92
    .end local v8           #count:J
    .end local v15           #resId:I
    :cond_67
    const/high16 v7, 0x4

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    goto :goto_18
.end method
