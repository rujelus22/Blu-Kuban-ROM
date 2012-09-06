.class public Lcom/google/googlenav/friend/aN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/google/googlenav/friend/aN;->c:I

    .line 67
    iput-wide p4, p0, Lcom/google/googlenav/friend/aN;->d:J

    .line 68
    if-nez p1, :cond_12

    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 80
    :goto_11
    return-void

    .line 78
    :cond_12
    iput-object p1, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_11
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/aN;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;IJ)V

    .line 61
    return-void
.end method

.method private e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 5
    .parameter

    .prologue
    .line 225
    new-instance v0, Lat/B;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6} :catch_18

    move-result-object v0

    .line 102
    :goto_7
    monitor-exit p0

    return-object v0

    .line 91
    :catch_9
    move-exception v0

    .line 95
    :try_start_a
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V

    .line 102
    :goto_d
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    goto :goto_7

    .line 90
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :catch_18
    move-exception v0

    .line 100
    :try_start_19
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_15

    goto :goto_d
.end method

.method public declared-synchronized a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/aN;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_2a

    move-result v0

    if-nez v0, :cond_9

    .line 135
    :goto_7
    monitor-exit p0

    return-void

    .line 120
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 121
    :goto_10
    iget v1, p0, Lcom/google/googlenav/friend/aN;->c:I

    if-lt v0, v1, :cond_23

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    goto :goto_10

    .line 127
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_7

    .line 128
    :catch_2a
    move-exception v0

    .line 132
    :try_start_2b
    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_34

    goto :goto_7

    .line 113
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 162
    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v1

    .line 164
    invoke-static {p2, v3}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    .line 168
    cmp-long v5, v1, v6

    if-eqz v5, :cond_14

    cmp-long v5, v3, v6

    if-nez v5, :cond_15

    .line 171
    :cond_14
    :goto_14
    return v0

    :cond_15
    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/friend/aN;->d:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    const/4 v0, 0x1

    goto :goto_14
.end method

.method b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 236
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 237
    if-eqz v0, :cond_13

    array-length v1, v0

    if-nez v1, :cond_1b

    .line 238
    :cond_13
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 264
    :cond_1a
    :goto_1a
    return-object v0

    .line 242
    :cond_1b
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 243
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    :try_start_25
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 246
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 247
    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result v1

    if-eqz v1, :cond_1a

    .line 250
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing the location history for store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_51} :catch_51

    .line 255
    :catch_51
    move-exception v0

    .line 259
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V

    .line 262
    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    goto :goto_1a
.end method

.method b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    if-nez p1, :cond_5

    .line 156
    :cond_4
    :goto_4
    return v0

    .line 149
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/aN;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/aN;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    goto :goto_4

    :cond_17
    move v0, v1

    .line 156
    goto :goto_4
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 217
    if-nez p1, :cond_4

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/aN;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/aN;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/friend/J;->a(Lat/B;JLat/B;)Z

    move-result v0

    goto :goto_3
.end method

.method public declared-synchronized c()V
    .registers 4

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 272
    if-nez v0, :cond_19

    .line 275
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_44

    .line 301
    :goto_17
    monitor-exit p0

    return-void

    .line 279
    :cond_19
    :try_start_19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_44

    .line 284
    :try_start_23
    iget-object v2, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 287
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_44
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_3a

    goto :goto_17

    .line 291
    :catch_3a
    move-exception v0

    .line 295
    :try_start_3b
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V

    .line 298
    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_44

    goto :goto_17

    .line 271
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 177
    iget-object v2, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v2, v0

    .line 178
    :goto_9
    if-ge v2, v3, :cond_5c

    .line 180
    :try_start_b
    iget-object v4, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 184
    invoke-virtual {p0, p1, v4}, Lcom/google/googlenav/friend/aN;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {p0, p1, v4}, Lcom/google/googlenav/friend/aN;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_1b} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_3c

    move-result v4

    if-nez v4, :cond_59

    .line 203
    :goto_1e
    return v0

    .line 187
    :catch_1f
    move-exception v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentLocationHistory upgrade for store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V

    goto :goto_1e

    .line 194
    :catch_3c
    move-exception v1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentLocationHistory upgrade for store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aN;->d()V

    goto :goto_1e

    .line 178
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_5c
    move v0, v1

    .line 203
    goto :goto_1e
.end method

.method declared-synchronized d()V
    .registers 3

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 306
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aN;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 307
    monitor-exit p0

    return-void

    .line 305
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 3
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
