.class public Lcom/google/googlenav/common/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field a:[Ljava/io/InputStream;

.field b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/io/InputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    .line 65
    iput-object p1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    .line 66
    return-void
.end method

.method private a()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    iget-object v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    aget-object v0, v0, v1

    .line 75
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    iget-object v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 86
    :try_start_c
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_29

    .line 91
    :goto_15
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    aput-object v3, v0, v1

    .line 93
    iget v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    iget-object v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-lt v0, v1, :cond_28

    .line 94
    iput-object v3, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    .line 97
    :cond_28
    return-void

    .line 87
    :catch_29
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_d

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 125
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 120
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 134
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_20

    if-nez v0, :cond_8

    .line 153
    :cond_6
    monitor-exit p0

    return-void

    .line 138
    :cond_8
    const/4 v0, 0x0

    .line 140
    :goto_9
    :try_start_9
    iget v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    iget-object v3, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    array-length v3, v3
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_20

    if-ge v2, v3, :cond_26

    .line 142
    :try_start_10
    iget-object v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    iget v3, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_23

    .line 140
    :goto_19
    :try_start_19
    iget v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    goto :goto_9

    .line 134
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :catch_23
    move-exception v0

    move v0, v1

    .line 144
    goto :goto_19

    .line 148
    :cond_26
    const/4 v2, 0x0

    :try_start_27
    iput-object v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    .line 150
    if-ne v0, v1, :cond_6

    .line 151
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_20
.end method

.method public declared-synchronized read()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 160
    monitor-enter p0

    .line 163
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->a()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    move-result-object v1

    .line 165
    if-nez v1, :cond_a

    .line 168
    :goto_8
    monitor-exit p0

    return v0

    .line 167
    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v0, :cond_12

    move v0, v1

    .line 168
    goto :goto_8

    .line 170
    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->b()V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_2

    .line 160
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 185
    monitor-enter p0

    .line 189
    if-nez p1, :cond_e

    .line 190
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 185
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_e
    if-nez p3, :cond_12

    .line 220
    :cond_10
    :goto_10
    monitor-exit p0

    return v0

    .line 193
    :cond_12
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    add-int v1, p2, p3

    :try_start_18
    array-length v2, p1

    if-le v1, v2, :cond_21

    .line 194
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 195
    :cond_21
    iget-object v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    iget-object v2, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    array-length v2, v2

    if-lt v1, v2, :cond_2e

    :cond_2c
    move v0, v3

    .line 196
    goto :goto_10

    .line 197
    :cond_2e
    if-eqz p3, :cond_10

    move v1, p3

    move v2, p2

    .line 202
    :goto_32
    if-lez v1, :cond_3a

    .line 203
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->a()Ljava/io/InputStream;

    move-result-object v4

    .line 206
    if-nez v4, :cond_3e

    .line 220
    :cond_3a
    if-nez v0, :cond_10

    move v0, v3

    goto :goto_10

    .line 208
    :cond_3e
    invoke-virtual {v4, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v3, :cond_48

    .line 211
    add-int/2addr v2, v4

    .line 212
    sub-int/2addr v1, v4

    .line 213
    add-int/2addr v0, v4

    goto :goto_32

    .line 215
    :cond_48
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->b()V
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_b

    goto :goto_32
.end method

.method public declared-synchronized skip(J)J
    .registers 15
    .parameter

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v4, 0x0

    .line 231
    monitor-enter p0

    .line 235
    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->b:I

    iget-object v1, p0, Lcom/google/googlenav/common/io/SequenceInputStream;->a:[Ljava/io/InputStream;

    array-length v1, v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_3c

    if-lt v0, v1, :cond_13

    :cond_10
    move-wide v0, v4

    .line 273
    :cond_11
    :goto_11
    monitor-exit p0

    return-wide v0

    .line 237
    :cond_13
    cmp-long v0, p1, v4

    if-gtz v0, :cond_3f

    move-wide v0, v4

    .line 238
    goto :goto_11

    .line 248
    :cond_19
    :try_start_19
    invoke-virtual {v6, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v7

    .line 256
    cmp-long v9, v7, v4

    if-nez v9, :cond_39

    .line 257
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_36

    .line 258
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->b()V

    .line 242
    :goto_2b
    cmp-long v6, v2, v4

    if-lez v6, :cond_11

    .line 243
    invoke-direct {p0}, Lcom/google/googlenav/common/io/SequenceInputStream;->a()Ljava/io/InputStream;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_3c

    move-result-object v6

    .line 245
    if-nez v6, :cond_19

    goto :goto_11

    .line 260
    :cond_36
    sub-long/2addr v2, v10

    .line 261
    add-long/2addr v0, v10

    goto :goto_2b

    .line 264
    :cond_39
    sub-long/2addr v2, v7

    .line 265
    add-long/2addr v0, v7

    goto :goto_2b

    .line 231
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move-wide v0, v4

    move-wide v2, p1

    goto :goto_2b
.end method
