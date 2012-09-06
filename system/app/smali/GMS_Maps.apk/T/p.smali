.class Lt/p;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 305
    iput-object p1, p0, Lt/p;->a:Landroid/content/Context;

    .line 306
    iput-object p2, p0, Lt/p;->b:Ljava/lang/Long;

    .line 307
    iput-object p3, p0, Lt/p;->d:Ljava/lang/String;

    .line 308
    iput-object p4, p0, Lt/p;->c:Ljava/lang/Long;

    .line 309
    iput-object p5, p0, Lt/p;->e:Ljava/lang/String;

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lt/n;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct/range {p0 .. p5}, Lt/p;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 314
    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 363
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 364
    invoke-virtual {v0, v4, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 365
    iget-object v1, p0, Lt/p;->b:Ljava/lang/Long;

    if-eqz v1, :cond_19

    .line 366
    iget-object v1, p0, Lt/p;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 368
    :cond_19
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 369
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 371
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 372
    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 374
    iget-object v2, p0, Lt/p;->c:Ljava/lang/Long;

    if-eqz v2, :cond_3b

    .line 375
    iget-object v2, p0, Lt/p;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 378
    :cond_3b
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 380
    invoke-static {v1}, Lcom/google/googlenav/clientparam/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 382
    invoke-virtual {v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 383
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 384
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 324
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 326
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 327
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_63

    .line 328
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 330
    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_3d

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 334
    iget-object v4, p0, Lt/p;->a:Landroid/content/Context;

    iget-object v5, p0, Lt/p;->d:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lh/a;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    .line 335
    invoke-virtual {v3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 339
    new-instance v4, Lt/k;

    invoke-direct {v4, v3}, Lt/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-static {v4}, Lt/m;->a(Lt/k;)Lt/k;

    .line 327
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 340
    :cond_3d
    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3a

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 344
    iget-object v4, p0, Lt/p;->a:Landroid/content/Context;

    iget-object v5, p0, Lt/p;->e:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lh/a;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    .line 345
    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 349
    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/ei;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/android/maps/driveabout/vector/ei;

    move-result-object v3

    invoke-static {v3}, Lt/m;->a(Lcom/google/android/maps/driveabout/vector/ei;)Lcom/google/android/maps/driveabout/vector/ei;

    goto :goto_3a

    .line 352
    :cond_63
    invoke-static {v6}, Lt/m;->b(Z)Z

    .line 355
    const-class v1, Lt/m;

    monitor-enter v1

    .line 356
    :try_start_69
    const-class v0, Lt/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit v1

    .line 358
    return v6

    .line 357
    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method
