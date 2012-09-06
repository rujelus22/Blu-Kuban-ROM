.class public Lan/A;
.super Lac/a;
.source "SourceFile"


# static fields
.field private static a:Lan/A;

.field private static j:Ljava/lang/Boolean;


# instance fields
.field private b:I

.field private c:Lat/B;

.field private d:Lat/B;

.field private e:I

.field private f:I

.field private g:[J

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lan/A;->g:[J

    .line 84
    iput v1, p0, Lan/A;->h:I

    .line 85
    iput v1, p0, Lan/A;->i:I

    .line 99
    invoke-virtual {p0}, Lan/A;->m()V

    .line 100
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/j;)Lcom/google/googlenav/common/io/m;
    .registers 2
    .parameter

    .prologue
    .line 135
    instance-of v0, p0, Lcom/google/googlenav/common/io/n;

    if-eqz v0, :cond_d

    .line 136
    check-cast p0, Lcom/google/googlenav/common/io/n;

    const-string v0, "savedLocationShiftCoefficients_lock"

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/io/n;->a(Ljava/lang/String;)Lcom/google/googlenav/common/io/m;

    move-result-object v0

    .line 138
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
    .line 142
    if-eqz p0, :cond_5

    .line 143
    invoke-interface {p0}, Lcom/google/googlenav/common/io/m;->a()Z

    .line 145
    :cond_5
    return-void
.end method

.method private a(Lat/B;I)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x15752a00

    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lan/A;->c:Lat/B;

    if-nez v1, :cond_9

    .line 280
    :cond_8
    :goto_8
    return v0

    .line 271
    :cond_9
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v1

    iget-object v2, p0, Lan/A;->c:Lat/B;

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p2, :cond_8

    .line 275
    invoke-virtual {p1}, Lat/B;->e()I

    move-result v1

    iget-object v2, p0, Lan/A;->c:Lat/B;

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    sub-int/2addr v1, v2

    .line 276
    :goto_25
    if-gez v1, :cond_2b

    .line 277
    int-to-long v1, v1

    add-long/2addr v1, v4

    long-to-int v1, v1

    goto :goto_25

    .line 279
    :cond_2b
    int-to-long v2, v1

    sub-long v2, v4, v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 280
    if-ge v1, p2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public static e(Lat/B;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 375
    sget-object v2, Lan/A;->j:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 376
    sget-object v0, Lan/A;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 395
    :cond_c
    :goto_c
    return v0

    .line 379
    :cond_d
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v2

    const v3, 0x2dc6c0

    if-lt v2, v3, :cond_c

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v2

    const v3, 0x337f980

    if-gt v2, v3, :cond_c

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    const v3, 0x44aa200

    if-lt v2, v3, :cond_c

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    const v3, 0x81b3200

    if-gt v2, v3, :cond_c

    .line 390
    invoke-static {}, Lao/b;->c()I

    move-result v2

    .line 391
    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    .line 392
    const/16 v3, 0x1cc

    if-eq v2, v3, :cond_42

    const/16 v3, 0x460

    if-ne v2, v3, :cond_c

    :cond_42
    move v0, v1

    goto :goto_c

    :cond_44
    move v0, v1

    .line 395
    goto :goto_c
.end method

.method public static k()Lan/A;
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lan/A;->a:Lan/A;

    if-nez v0, :cond_7

    .line 109
    invoke-static {}, Lan/A;->p()V

    .line 111
    :cond_7
    sget-object v0, Lan/A;->a:Lan/A;

    return-object v0
.end method

.method private static declared-synchronized p()V
    .registers 2

    .prologue
    .line 103
    const-class v1, Lan/A;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lan/A;

    invoke-direct {v0}, Lan/A;-><init>()V

    sput-object v0, Lan/A;->a:Lan/A;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 104
    monitor-exit v1

    return-void

    .line 103
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 212
    const/16 v0, 0x35

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 222
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/en;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 224
    const/4 v1, 0x2

    iget-object v2, p0, Lan/A;->d:Lat/B;

    invoke-virtual {v2}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 226
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 229
    return-void
.end method

.method public a(Lat/B;)Z
    .registers 3
    .parameter

    .prologue
    .line 289
    iget v0, p0, Lan/A;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lan/A;->a(Lat/B;I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_5

    .line 260
    :cond_4
    :goto_4
    return v1

    .line 236
    :cond_5
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/en;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_4

    .line 241
    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lan/A;->b:I

    .line 242
    iget v2, p0, Lan/A;->b:I

    if-nez v2, :cond_4

    move v2, v1

    .line 245
    :goto_18
    const/4 v4, 0x6

    if-ge v2, v4, :cond_27

    .line 246
    iget-object v4, p0, Lan/A;->g:[J

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 249
    :cond_27
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lan/A;->f:I

    .line 251
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lan/A;->e:I

    .line 253
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lat/B;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v2

    iput-object v2, p0, Lan/A;->c:Lat/B;

    .line 255
    iget v2, p0, Lan/A;->b:I

    if-nez v2, :cond_47

    .line 256
    invoke-virtual {p0}, Lan/A;->o()V

    .line 260
    :cond_47
    iget v2, p0, Lan/A;->b:I

    if-nez v2, :cond_4d

    :goto_4b
    move v1, v0

    goto :goto_4

    :cond_4d
    move v0, v1

    goto :goto_4b
.end method

.method public b(Lat/B;)Z
    .registers 3
    .parameter

    .prologue
    .line 298
    iget v0, p0, Lan/A;->f:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lan/A;->a(Lat/B;I)Z

    move-result v0

    return v0
.end method

.method public c(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 306
    if-nez p1, :cond_3

    .line 320
    :cond_2
    :goto_2
    return-void

    .line 310
    :cond_3
    iget-object v0, p0, Lan/A;->c:Lat/B;

    invoke-virtual {p1, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lan/A;->d:Lat/B;

    invoke-virtual {p1, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    iput-object p1, p0, Lan/A;->d:Lat/B;

    .line 313
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0, p0}, Lac/h;->c(Lac/g;)V

    goto :goto_2
.end method

.method public d(Lat/B;)Lat/B;
    .registers 12
    .parameter

    .prologue
    const-wide/32 v8, 0xf4240

    .line 343
    iget-object v0, p0, Lan/A;->g:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lan/A;->g:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lan/A;->g:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    div-long/2addr v0, v8

    .line 345
    iget-object v2, p0, Lan/A;->g:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-object v4, p0, Lan/A;->g:[J

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lan/A;->g:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    div-long/2addr v2, v8

    .line 347
    invoke-virtual {p0, p1}, Lan/A;->a(Lat/B;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 348
    invoke-virtual {p0, p1}, Lan/A;->c(Lat/B;)V

    .line 350
    :cond_48
    long-to-int v4, v0

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lan/A;->h:I

    .line 351
    long-to-int v4, v2

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lan/A;->i:I

    .line 352
    new-instance v4, Lat/B;

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-direct {v4, v0, v1}, Lat/B;-><init>(II)V

    return-object v4
.end method

.method public l()V
    .registers 9

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lan/A;->g:[J

    aput-wide v3, v0, v2

    .line 120
    iget-object v0, p0, Lan/A;->g:[J

    aput-wide v6, v0, v5

    .line 121
    iget-object v0, p0, Lan/A;->g:[J

    const/4 v1, 0x2

    aput-wide v3, v0, v1

    .line 122
    iget-object v0, p0, Lan/A;->g:[J

    const/4 v1, 0x3

    aput-wide v3, v0, v1

    .line 123
    iget-object v0, p0, Lan/A;->g:[J

    const/4 v1, 0x4

    aput-wide v3, v0, v1

    .line 124
    iget-object v0, p0, Lan/A;->g:[J

    const/4 v1, 0x5

    aput-wide v6, v0, v1

    .line 125
    iput v2, p0, Lan/A;->e:I

    .line 126
    iput v2, p0, Lan/A;->f:I

    .line 127
    iput v2, p0, Lan/A;->h:I

    .line 128
    iput v2, p0, Lan/A;->i:I

    .line 129
    iput v5, p0, Lan/A;->b:I

    .line 130
    return-void
.end method

.method public declared-synchronized m()V
    .registers 5

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lan/A;->a(Lcom/google/googlenav/common/io/j;)Lcom/google/googlenav/common/io/m;

    move-result-object v2

    .line 154
    const-string v0, "savedLocationShiftCoefficients"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2c

    move-result-object v0

    .line 158
    :try_start_13
    invoke-virtual {p0, v0}, Lan/A;->a(Ljava/io/DataInput;)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    move-result v0

    .line 165
    :try_start_17
    invoke-static {v2}, Lan/A;->a(Lcom/google/googlenav/common/io/m;)V

    .line 167
    :goto_1a
    if-nez v0, :cond_1f

    .line 168
    invoke-virtual {p0}, Lan/A;->l()V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_2c

    .line 170
    :cond_1f
    monitor-exit p0

    return-void

    .line 159
    :catch_21
    move-exception v0

    .line 160
    const/4 v0, 0x0

    .line 163
    :try_start_23
    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v3}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2f

    .line 165
    :try_start_28
    invoke-static {v2}, Lan/A;->a(Lcom/google/googlenav/common/io/m;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1a

    .line 152
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-static {v2}, Lan/A;->a(Lcom/google/googlenav/common/io/m;)V

    throw v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2c
.end method

.method public n()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    .line 176
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/en;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 178
    const/4 v0, 0x1

    iget v2, p0, Lan/A;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 179
    const/4 v0, 0x0

    :goto_e
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1c

    .line 180
    const/4 v2, 0x2

    iget-object v3, p0, Lan/A;->g:[J

    aget-wide v3, v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 182
    :cond_1c
    const/4 v0, 0x3

    iget-object v2, p0, Lan/A;->c:Lat/B;

    invoke-virtual {v2}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 184
    const/4 v0, 0x4

    iget v2, p0, Lan/A;->f:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 186
    const/4 v0, 0x5

    iget v2, p0, Lan/A;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 188
    return-object v1
.end method

.method public declared-synchronized o()V
    .registers 6

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 194
    invoke-static {v1}, Lan/A;->a(Lcom/google/googlenav/common/io/j;)Lcom/google/googlenav/common/io/m;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_38

    .line 198
    :try_start_17
    invoke-virtual {p0}, Lan/A;->n()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 199
    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 200
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0, v3}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2e

    .line 206
    :try_start_29
    invoke-static {v2}, Lan/A;->a(Lcom/google/googlenav/common/io/m;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_38

    .line 208
    :goto_2c
    monitor-exit p0

    return-void

    .line 201
    :catch_2e
    move-exception v0

    .line 204
    :try_start_2f
    const-string v0, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3b

    .line 206
    :try_start_34
    invoke-static {v2}, Lan/A;->a(Lcom/google/googlenav/common/io/m;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_2c

    .line 193
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-static {v2}, Lan/A;->a(Lcom/google/googlenav/common/io/m;)V

    throw v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_38
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method
