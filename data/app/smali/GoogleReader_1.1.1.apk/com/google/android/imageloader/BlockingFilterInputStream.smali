.class Lcom/google/android/imageloader/BlockingFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "BlockingFilterInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public read([B)I
    .registers 8
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, total:I
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_17

    .line 54
    move v1, v3

    .line 55
    .local v1, offset:I
    array-length v4, p1

    sub-int v0, v4, v3

    .line 56
    .local v0, count:I
    invoke-super {p0, p1, v1, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 57
    .local v2, read:I
    if-ne v2, v5, :cond_15

    .line 58
    if-eqz v3, :cond_13

    move v4, v3

    .line 62
    .end local v0           #count:I
    .end local v1           #offset:I
    .end local v2           #read:I
    :goto_12
    return v4

    .restart local v0       #count:I
    .restart local v1       #offset:I
    .restart local v2       #read:I
    :cond_13
    move v4, v5

    .line 58
    goto :goto_12

    .line 60
    :cond_15
    add-int/2addr v3, v2

    .line 61
    goto :goto_2

    .end local v0           #count:I
    .end local v1           #offset:I
    .end local v2           #read:I
    :cond_17
    move v4, v3

    .line 62
    goto :goto_12
.end method

.method public read([BII)I
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, total:I
    :goto_2
    if-ge v1, p3, :cond_16

    .line 41
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-super {p0, p1, v2, v3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 42
    .local v0, read:I
    if-ne v0, v4, :cond_14

    .line 43
    if-eqz v1, :cond_12

    move v2, v1

    .line 47
    .end local v0           #read:I
    :goto_11
    return v2

    .restart local v0       #read:I
    :cond_12
    move v2, v4

    .line 43
    goto :goto_11

    .line 45
    :cond_14
    add-int/2addr v1, v0

    .line 46
    goto :goto_2

    .end local v0           #read:I
    :cond_16
    move v2, v1

    .line 47
    goto :goto_11
.end method

.method public skip(J)J
    .registers 10
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .local v3, total:J
    :goto_2
    cmp-long v5, v3, p1

    if-gez v5, :cond_18

    .line 69
    sub-long v5, p1, v3

    invoke-super {p0, v5, v6}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v1

    .line 70
    .local v1, skipped:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1c

    .line 71
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 72
    .local v0, b:I
    if-gez v0, :cond_19

    .line 80
    .end local v0           #b:I
    .end local v1           #skipped:J
    :cond_18
    return-wide v3

    .line 75
    .restart local v0       #b:I
    .restart local v1       #skipped:J
    :cond_19
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 78
    .end local v0           #b:I
    :cond_1c
    add-long/2addr v3, v1

    .line 79
    goto :goto_2
.end method
