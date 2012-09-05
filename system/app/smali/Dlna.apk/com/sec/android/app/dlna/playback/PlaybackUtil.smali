.class public Lcom/sec/android/app/dlna/playback/PlaybackUtil;
.super Ljava/lang/Object;
.source "PlaybackUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTime(Ljava/lang/String;)I
    .registers 11
    .parameter "time"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 30
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 31
    .local v1, index:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_16

    .line 32
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 34
    :cond_16
    const-string v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, timeArray:[Ljava/lang/String;
    array-length v2, v6

    .line 36
    .local v2, length:I
    const/4 v0, 0x0

    .line 37
    .local v0, hour:I
    const/4 v3, 0x0

    .line 38
    .local v3, minute:I
    const/4 v5, 0x0

    .line 39
    .local v5, second:I
    if-le v2, v9, :cond_60

    .line 40
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 41
    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 48
    :goto_34
    mul-int/lit8 v7, v0, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v8, v3, 0x3c

    add-int/2addr v7, v8

    add-int v4, v7, v5

    .line 49
    .local v4, result:I
    const-string v7, "DLNA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlaybackUtil.formatTime(String to int) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0           #hour:I
    .end local v1           #index:I
    .end local v2           #length:I
    .end local v3           #minute:I
    .end local v4           #result:I
    .end local v5           #second:I
    .end local v6           #timeArray:[Ljava/lang/String;
    :goto_5f
    return v4

    .line 44
    .restart local v0       #hour:I
    .restart local v1       #index:I
    .restart local v2       #length:I
    .restart local v3       #minute:I
    .restart local v5       #second:I
    .restart local v6       #timeArray:[Ljava/lang/String;
    :cond_60
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 45
    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_34

    .line 52
    .end local v0           #hour:I
    .end local v1           #index:I
    .end local v2           #length:I
    .end local v3           #minute:I
    .end local v5           #second:I
    .end local v6           #timeArray:[Ljava/lang/String;
    :cond_6d
    const-string v7, "DLNA"

    const-string v8, "PlaybackUtil.formatTime(String to int) : time is Empty"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method public static formatTime(I)Ljava/lang/String;
    .registers 7
    .parameter "time"

    .prologue
    .line 74
    if-nez p0, :cond_5

    .line 76
    const-string v2, "00:00:00"

    .line 84
    :goto_4
    return-object v2

    .line 79
    :cond_5
    rem-int/lit8 v4, p0, 0x3c

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->toDateString(J)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, seconds:Ljava/lang/String;
    rem-int/lit16 v4, p0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->toDateString(J)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, minutes:Ljava/lang/String;
    div-int/lit16 v4, p0, 0xe10

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->toDateString(J)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, hours:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, result:Ljava/lang/String;
    goto :goto_4
.end method

.method private static toDateString(J)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 88
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_1e

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_1d
    return-object v0

    :cond_1e
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
