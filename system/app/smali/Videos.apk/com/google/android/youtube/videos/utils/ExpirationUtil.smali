.class public Lcom/google/android/youtube/videos/utils/ExpirationUtil;
.super Ljava/lang/Object;
.source "ExpirationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemainingDays(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8
    .parameter "expirationDate"
    .parameter "now"

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 39
    .local v0, remainingMillis:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    const/4 v2, -0x1

    :goto_11
    return v2

    :cond_12
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    goto :goto_11
.end method

.method public static getTimeToExpirationString(Ljava/util/Date;Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 14
    .parameter "expirationDate"
    .parameter "now"
    .parameter "resources"

    .prologue
    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v7, 0x0

    .line 74
    :goto_3
    return-object v7

    .line 50
    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 51
    .local v5, timestampMillis:J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 53
    .local v0, nowMillis:J
    cmp-long v7, v0, v5

    if-ltz v7, :cond_18

    .line 54
    const v7, 0x7f0b00b8

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 57
    :cond_18
    sub-long v7, v5, v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    long-to-int v4, v7

    .line 58
    .local v4, remainingMinutes:I
    div-int/lit8 v3, v4, 0x3c

    .line 61
    .local v3, remainingHours:I
    if-lez v3, :cond_4b

    rem-int/lit8 v7, v4, 0x3c

    if-lez v7, :cond_49

    const/4 v7, 0x1

    :goto_2a
    add-int/2addr v3, v7

    .line 62
    div-int/lit8 v2, v3, 0x18

    .line 65
    .local v2, remainingDays:I
    if-lez v2, :cond_4f

    rem-int/lit8 v7, v3, 0x18

    if-lez v7, :cond_4d

    const/4 v7, 0x1

    :goto_34
    add-int/2addr v2, v7

    .line 67
    if-lez v2, :cond_51

    .line 68
    const v7, 0x7f0f0007

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 61
    .end local v2           #remainingDays:I
    :cond_49
    const/4 v7, 0x0

    goto :goto_2a

    :cond_4b
    const/4 v7, 0x0

    goto :goto_2a

    .line 65
    .restart local v2       #remainingDays:I
    :cond_4d
    const/4 v7, 0x0

    goto :goto_34

    :cond_4f
    const/4 v7, 0x0

    goto :goto_34

    .line 69
    :cond_51
    if-lez v3, :cond_65

    .line 70
    const v7, 0x7f0f0008

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 71
    :cond_65
    const/16 v7, 0xa

    if-le v4, v7, :cond_71

    .line 72
    const v7, 0x7f0b00b6

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 74
    :cond_71
    const v7, 0x7f0b00b7

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method
