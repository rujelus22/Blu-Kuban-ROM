.class public Lcom/google/googlenav/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/m;


# instance fields
.field protected final a:[I

.field protected final b:[Lcom/google/googlenav/k;

.field private c:Z

.field private d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/googlenav/j;->a:[I

    .line 167
    new-array v0, v1, [Lcom/google/googlenav/k;

    iput-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    .line 168
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/j;)Lcom/google/googlenav/common/io/m;
    .registers 2
    .parameter

    .prologue
    .line 375
    instance-of v0, p0, Lcom/google/googlenav/common/io/n;

    if-eqz v0, :cond_d

    .line 376
    check-cast p0, Lcom/google/googlenav/common/io/n;

    const-string v0, "Restrictions_lock"

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/io/n;->a(Ljava/lang/String;)Lcom/google/googlenav/common/io/m;

    move-result-object v0

    .line 378
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static a(Lcom/google/googlenav/common/io/m;)V
    .registers 1
    .parameter

    .prologue
    .line 382
    if-eqz p0, :cond_5

    .line 383
    invoke-interface {p0}, Lcom/google/googlenav/common/io/m;->a()Z

    .line 385
    :cond_5
    return-void
.end method

.method private b(Ljava/io/DataInput;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v1, 0x1

    .line 197
    .line 199
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/aS;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    move v2, v0

    .line 203
    :goto_e
    if-ge v2, v4, :cond_3c

    .line 204
    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 207
    if-ltz v6, :cond_39

    if-gt v6, v9, :cond_39

    .line 208
    iget-object v7, p0, Lcom/google/googlenav/j;->a:[I

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    aput v8, v7, v6

    .line 209
    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    if-lez v7, :cond_39

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    new-instance v7, Lcom/google/googlenav/k;

    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/google/googlenav/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v7, v0, v6

    move v0, v1

    .line 203
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 216
    :cond_3c
    return v0
.end method

.method private d()V
    .registers 9

    .prologue
    .line 282
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v2

    .line 283
    const/4 v0, 0x0

    .line 285
    :try_start_9
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aS;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 287
    const/4 v1, 0x0

    :goto_11
    iget-object v4, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    array-length v4, v4

    if-ge v1, v4, :cond_42

    .line 288
    iget-object v4, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3f

    .line 289
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/aS;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 290
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 291
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlenav/j;->a:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 292
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/google/googlenav/k;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 294
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 287
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 297
    :cond_42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    invoke-static {v4, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 300
    invoke-static {v2}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/j;)Lcom/google/googlenav/common/io/m;
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_52} :catch_60

    move-result-object v0

    .line 301
    :try_start_53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "Restrictions"

    invoke-interface {v2, v1, v3}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_72
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_60

    .line 307
    invoke-static {v0}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/m;)V

    .line 309
    :goto_5f
    return-void

    .line 302
    :catch_60
    move-exception v1

    .line 305
    :try_start_61
    const-string v1, "Restrictions"

    invoke-interface {v2, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_72

    .line 307
    invoke-static {v0}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/m;)V

    goto :goto_5f

    :catchall_6a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_6e
    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/m;)V

    throw v0

    :catchall_72
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6e
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/j;->e:Z

    .line 245
    return-void
.end method

.method public a(Ljava/io/DataInput;)V
    .registers 4
    .parameter

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/j;->b(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    invoke-direct {p0}, Lcom/google/googlenav/j;->d()V

    .line 231
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/j;->d:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 236
    :goto_c
    return-void

    .line 232
    :catch_d
    move-exception v0

    .line 234
    const-string v1, "CFR"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public a([I)V
    .registers 7
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/j;->d:Z

    .line 179
    invoke-virtual {p0}, Lcom/google/googlenav/j;->c()Z

    .line 180
    new-instance v1, Lcom/google/googlenav/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/l;-><init>(Lcom/google/googlenav/m;)V

    .line 181
    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/l;->b(J)V

    .line 182
    const-string v0, "6110102"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    invoke-virtual {v1, v0}, Lcom/google/googlenav/l;->a(I)V

    .line 184
    const/4 v0, 0x0

    :goto_1a
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    .line 185
    aget v2, p1, v0

    iget-object v3, p0, Lcom/google/googlenav/j;->a:[I

    aget v4, p1, v0

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/l;->a(II)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 187
    :cond_2b
    invoke-virtual {v1}, Lcom/google/googlenav/l;->y_()V

    .line 188
    return-void
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 346
    const/4 v0, 0x3

    if-gt p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/google/googlenav/j;->d:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v0, v0, p1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(ILat/B;Z)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v0, v0, p1

    if-nez v0, :cond_a

    .line 336
    :cond_9
    :goto_9
    return p3

    .line 324
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/j;->b:[Lcom/google/googlenav/k;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/googlenav/k;->b()[J

    move-result-object v0

    .line 326
    if-eqz v0, :cond_9

    .line 329
    invoke-static {p2}, Lat/O;->a(Lat/B;)J

    move-result-wide v1

    .line 330
    invoke-static {v1, v2}, Lat/O;->a(J)J

    move-result-wide v1

    .line 331
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 336
    if-gtz v0, :cond_26

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_29

    :cond_26
    const/4 v0, 0x1

    :goto_27
    move p3, v0

    goto :goto_9

    :cond_29
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/googlenav/j;->e:Z

    return v0
.end method

.method public c()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-boolean v1, p0, Lcom/google/googlenav/j;->c:Z

    if-eqz v1, :cond_6

    .line 275
    :goto_5
    return v0

    .line 261
    :cond_6
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/j;)Lcom/google/googlenav/common/io/m;

    move-result-object v1

    .line 264
    :try_start_12
    const-string v2, "Restrictions"

    invoke-static {v0, v2}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_20

    .line 266
    invoke-direct {p0, v0}, Lcom/google/googlenav/j;->b(Ljava/io/DataInput;)Z

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/j;->c:Z
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_26

    .line 273
    :cond_20
    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/m;)V

    .line 275
    :goto_23
    iget-boolean v0, p0, Lcom/google/googlenav/j;->c:Z

    goto :goto_5

    .line 269
    :catch_26
    move-exception v0

    .line 271
    :try_start_27
    const-string v2, "CFR"

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_30

    .line 273
    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/m;)V

    goto :goto_23

    :catchall_30
    move-exception v0

    invoke-static {v1}, Lcom/google/googlenav/j;->a(Lcom/google/googlenav/common/io/m;)V

    throw v0
.end method
