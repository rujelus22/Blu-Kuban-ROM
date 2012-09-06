.class public final Lcom/google/android/youtube/core/utils/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xa01

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    const-string v0, "liveEvent can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "context can\'t be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 64
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    const-string v1, "startTime can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context can\'t be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_40

    const v1, 0x7f0b006e

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/ac;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_3f
    return-object v0

    .line 64
    :cond_40
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_5e

    const v1, 0x7f0b006f

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p0, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_5e
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0b0070

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 65
    :cond_7c
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v1, :cond_8a

    .line 66
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 68
    :cond_8a
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 23
    if-nez p0, :cond_6

    .line 57
    :cond_5
    :goto_5
    return-object v0

    .line 26
    :cond_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 28
    cmp-long v5, v3, v1

    if-lez v5, :cond_5

    .line 33
    sub-long v1, v3, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 34
    div-int/lit8 v2, v1, 0x3c

    .line 35
    div-int/lit8 v3, v2, 0x3c

    .line 36
    div-int/lit8 v4, v3, 0x18

    .line 37
    div-int/lit8 v5, v4, 0x7

    .line 38
    div-int/lit8 v6, v4, 0x1e

    .line 39
    div-int/lit8 v7, v6, 0xc

    .line 41
    if-lez v7, :cond_35

    .line 42
    const/high16 v0, 0x7f0e

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 43
    :cond_35
    if-lez v6, :cond_47

    .line 44
    const v0, 0x7f0e0001

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 45
    :cond_47
    if-lez v5, :cond_59

    .line 46
    const v0, 0x7f0e0002

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 47
    :cond_59
    if-lez v4, :cond_6b

    .line 48
    const v0, 0x7f0e0003

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 49
    :cond_6b
    if-lez v3, :cond_7d

    .line 50
    const v0, 0x7f0e0004

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 51
    :cond_7d
    if-lez v2, :cond_90

    .line 52
    const v0, 0x7f0e0005

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 53
    :cond_90
    if-lez v1, :cond_5

    .line 54
    const v0, 0x7f0e0006

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method
