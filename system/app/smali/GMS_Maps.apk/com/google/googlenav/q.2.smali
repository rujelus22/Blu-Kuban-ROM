.class public Lcom/google/googlenav/Q;
.super Lac/a;
.source "SourceFile"


# static fields
.field static a:Z

.field private static final b:Ljava/lang/Object;

.field private static c:I

.field private static d:J

.field private static e:Lcom/google/googlenav/S;

.field private static final f:Ljava/util/Hashtable;


# instance fields
.field private final g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/Q;->a:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/Q;->b:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/googlenav/Q;->f:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 379
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/google/googlenav/Q;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 383
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 384
    sget-object v2, Lcom/google/googlenav/Q;->e:Lcom/google/googlenav/S;

    if-eqz v2, :cond_16

    .line 385
    sget-object v2, Lcom/google/googlenav/Q;->e:Lcom/google/googlenav/S;

    invoke-interface {v2, p0}, Lcom/google/googlenav/S;->a(Lcom/google/googlenav/Q;)V

    .line 389
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/Q;->i()J

    move-result-wide v4

    .line 391
    sget-object v6, Lcom/google/googlenav/Q;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 393
    if-eqz p2, :cond_30

    .line 394
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lcom/google/googlenav/Q;->h:Z

    .line 404
    :goto_22
    sget v0, Lcom/google/googlenav/Q;->c:I

    if-nez v0, :cond_28

    .line 405
    sput-wide v4, Lcom/google/googlenav/Q;->d:J

    .line 407
    :cond_28
    sget v0, Lcom/google/googlenav/Q;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/googlenav/Q;->c:I

    .line 408
    monitor-exit v6

    .line 409
    return-void

    .line 396
    :cond_30
    sget v2, Lcom/google/googlenav/Q;->c:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_51

    move v3, v1

    .line 397
    :goto_37
    sget v2, Lcom/google/googlenav/Q;->c:I

    if-lez v2, :cond_53

    sget-wide v7, Lcom/google/googlenav/Q;->d:J

    sub-long v7, v4, v7

    const-wide/16 v9, 0x7530

    cmp-long v2, v7, v9

    if-ltz v2, :cond_53

    move v2, v1

    .line 399
    :goto_46
    if-nez v3, :cond_4a

    if-eqz v2, :cond_4b

    :cond_4a
    move v0, v1

    :cond_4b
    iput-boolean v0, p0, Lcom/google/googlenav/Q;->h:Z

    goto :goto_22

    .line 408
    :catchall_4e
    move-exception v0

    monitor-exit v6
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    move v3, v0

    .line 396
    goto :goto_37

    :cond_53
    move v2, v0

    .line 397
    goto :goto_46
.end method

.method public static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 345
    packed-switch p0, :pswitch_data_8

    .line 375
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 373
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 345
    nop

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/googlenav/Q;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 1
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/googlenav/Q;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method static synthetic b(I)Z
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/googlenav/Q;->c(I)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .registers 2
    .parameter

    .prologue
    .line 278
    sparse-switch p0, :sswitch_data_8

    .line 286
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 284
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 278
    nop

    :sswitch_data_8
    .sparse-switch
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0xa -> :sswitch_5
        0xe -> :sswitch_5
        0x1d -> :sswitch_5
    .end sparse-switch
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter

    .prologue
    .line 292
    invoke-static {p0}, Lcom/google/googlenav/Q;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {p0}, Lcom/google/googlenav/Q;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    .line 297
    sget-object v0, Lcom/google/googlenav/Q;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 298
    if-nez v0, :cond_21

    .line 299
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 300
    sget-object v3, Lcom/google/googlenav/Q;->f:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_1c
    invoke-virtual {v0, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const/4 v0, 0x0

    :goto_20
    return v0

    .line 301
    :cond_21
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 304
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 313
    invoke-static {p0}, Lcom/google/googlenav/Q;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/google/googlenav/Q;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method private static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x5

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 321
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_15
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 325
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 334
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_14
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 338
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 418
    const/16 v0, 0x4a

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/googlenav/Q;->i:Z

    if-nez v0, :cond_e

    .line 446
    sget-object v1, Lcom/google/googlenav/Q;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_7
    sget v0, Lcom/google/googlenav/Q;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/googlenav/Q;->c:I

    .line 449
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    .line 451
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/Q;->i:Z

    .line 453
    iget-object v0, p0, Lcom/google/googlenav/Q;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 454
    return-void

    .line 449
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 458
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dU;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/google/googlenav/Q;->h:Z

    return v0
.end method

.method protected i()J
    .registers 3

    .prologue
    .line 413
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method
