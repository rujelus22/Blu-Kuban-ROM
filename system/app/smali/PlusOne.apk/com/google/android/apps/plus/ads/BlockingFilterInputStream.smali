.class Lcom/google/android/apps/plus/ads/BlockingFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "BlockingFilterInputStream.java"


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
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
    const/4 v4, -0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, total:I
    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_11

    .line 42
    move v1, v3

    .line 43
    .local v1, offset:I
    array-length v5, p1

    sub-int v0, v5, v3

    .line 44
    .local v0, count:I
    invoke-super {p0, p1, v1, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 45
    .local v2, read:I
    if-ne v2, v4, :cond_14

    .line 46
    if-eqz v3, :cond_12

    .line 50
    .end local v0           #count:I
    .end local v1           #offset:I
    .end local v2           #read:I
    .end local v3           #total:I
    :cond_11
    :goto_11
    return v3

    .restart local v0       #count:I
    .restart local v1       #offset:I
    .restart local v2       #read:I
    .restart local v3       #total:I
    :cond_12
    move v3, v4

    .line 46
    goto :goto_11

    .line 48
    :cond_14
    add-int/2addr v3, v2

    .line 49
    goto :goto_2
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
    const/4 v2, -0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, total:I
    :goto_2
    if-ge v1, p3, :cond_10

    .line 29
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-super {p0, p1, v3, v4}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 30
    .local v0, read:I
    if-ne v0, v2, :cond_13

    .line 31
    if-eqz v1, :cond_11

    .line 35
    .end local v0           #read:I
    .end local v1           #total:I
    :cond_10
    :goto_10
    return v1

    .restart local v0       #read:I
    .restart local v1       #total:I
    :cond_11
    move v1, v2

    .line 31
    goto :goto_10

    .line 33
    :cond_13
    add-int/2addr v1, v0

    .line 34
    goto :goto_2
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
    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .local v3, total:J
    :goto_2
    cmp-long v5, v3, p1

    if-gez v5, :cond_18

    .line 57
    sub-long v5, p1, v3

    invoke-super {p0, v5, v6}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v1

    .line 58
    .local v1, skipped:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1c

    .line 59
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 60
    .local v0, b:I
    if-gez v0, :cond_19

    .line 68
    .end local v0           #b:I
    .end local v1           #skipped:J
    :cond_18
    return-wide v3

    .line 63
    .restart local v0       #b:I
    .restart local v1       #skipped:J
    :cond_19
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 66
    .end local v0           #b:I
    :cond_1c
    add-long/2addr v3, v1

    .line 67
    goto :goto_2
.end method
