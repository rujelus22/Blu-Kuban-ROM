.class public Lat/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;

.field private static b:I

.field private static final c:[B

.field private static o:LS/f;

.field private static p:LS/f;

.field private static q:LS/f;


# instance fields
.field private d:[B

.field private e:LS/f;

.field private f:Z

.field private g:LS/f;

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private final l:Lat/P;

.field private final m:Z

.field private n:Z

.field private r:Lat/n;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lat/I;->a:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    sput v0, Lat/I;->b:I

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lat/I;->c:[B

    return-void

    nop

    :array_18
    .array-data 0x1
        0x43t
        0x4at
        0x50t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Lat/P;)V
    .registers 4
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lat/I;-><init>(Lat/P;LS/f;Z)V

    .line 194
    return-void
.end method

.method public constructor <init>(Lat/P;LS/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lat/I;-><init>(Lat/P;LS/f;Z)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lat/P;LS/f;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lat/I;->u:I

    .line 175
    iput-boolean v1, p0, Lat/I;->w:Z

    .line 183
    iput-boolean v1, p0, Lat/I;->x:Z

    .line 184
    iput-boolean v1, p0, Lat/I;->y:Z

    .line 234
    invoke-static {p2}, Lat/I;->a(LS/f;)V

    .line 235
    iput-object p1, p0, Lat/I;->l:Lat/P;

    .line 236
    iput-boolean p3, p0, Lat/I;->m:Z

    .line 237
    invoke-direct {p0, p2, v1}, Lat/I;->a(LS/f;Z)V

    .line 238
    if-eqz p2, :cond_23

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lat/I;->f:Z

    .line 239
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lat/I;->h:J

    .line 240
    iput v1, p0, Lat/I;->v:I

    .line 241
    return-void

    :cond_23
    move v0, v1

    .line 238
    goto :goto_1a
.end method

.method public constructor <init>(Lat/P;[B)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lat/I;->u:I

    .line 175
    iput-boolean v2, p0, Lat/I;->w:Z

    .line 183
    iput-boolean v2, p0, Lat/I;->x:Z

    .line 184
    iput-boolean v2, p0, Lat/I;->y:Z

    .line 250
    iput-object p1, p0, Lat/I;->l:Lat/P;

    .line 251
    iput-boolean v2, p0, Lat/I;->m:Z

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lat/I;->h:J

    .line 253
    iput-boolean v2, p0, Lat/I;->f:Z

    .line 254
    invoke-virtual {p0, p2}, Lat/I;->a([B)V

    .line 255
    return-void
.end method

.method private static A()LS/f;
    .registers 3

    .prologue
    const/16 v2, 0x100

    .line 762
    sget-object v0, Lat/I;->q:LS/f;

    if-nez v0, :cond_25

    .line 764
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const v1, 0x7f0202cc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->b(I)LS/f;

    move-result-object v0

    sput-object v0, Lat/I;->q:LS/f;

    .line 765
    sget-object v0, Lat/I;->q:LS/f;

    if-nez v0, :cond_25

    .line 767
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    .line 768
    invoke-interface {v0, v2, v2}, LS/h;->a(II)LS/f;

    move-result-object v0

    sput-object v0, Lat/I;->q:LS/f;

    .line 772
    :cond_25
    sget-object v0, Lat/I;->q:LS/f;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lat/I;
    .registers 4
    .parameter

    .prologue
    .line 679
    invoke-static {p0}, Lat/P;->a(Ljava/io/DataInput;)Lat/P;

    move-result-object v0

    .line 680
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 681
    new-array v1, v1, [B

    .line 682
    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 684
    new-instance v2, Lat/I;

    invoke-direct {v2, v0, v1}, Lat/I;-><init>(Lat/P;[B)V

    return-object v2
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Lat/n;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 420
    if-nez p1, :cond_5

    .line 421
    const/4 v0, 0x0

    .line 433
    :goto_4
    return-object v0

    .line 424
    :cond_5
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 425
    new-array v2, v1, [Lcom/google/googlenav/layer/j;

    .line 426
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1c

    .line 427
    new-instance v3, Lcom/google/googlenav/layer/j;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/j;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v3, v2, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 431
    :cond_1c
    new-instance v0, Lat/n;

    iget-object v1, p0, Lat/I;->l:Lat/P;

    invoke-direct {v0, v1}, Lat/n;-><init>(Lat/P;)V

    .line 432
    invoke-virtual {v0, v2, p2, p3}, Lat/n;->a([Lcom/google/googlenav/layer/j;J)V

    goto :goto_4
.end method

.method private static a(LS/f;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x100

    .line 508
    if-eqz p0, :cond_3b

    invoke-interface {p0}, LS/f;->b()I

    move-result v0

    if-ne v0, v1, :cond_10

    invoke-interface {p0}, LS/f;->a()I

    move-result v0

    if-eq v0, v1, :cond_3b

    .line 510
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong image size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, LS/f;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, LS/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_3b
    return-void
.end method

.method private declared-synchronized a(LS/f;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 476
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/I;->e:LS/f;

    if-eqz v0, :cond_13

    .line 477
    iget-object v0, p0, Lat/I;->e:LS/f;

    invoke-interface {v0}, LS/f;->f()V

    .line 478
    iget-boolean v0, p0, Lat/I;->x:Z

    if-eqz v0, :cond_13

    .line 479
    iget-object v0, p0, Lat/I;->e:LS/f;

    invoke-interface {v0}, LS/f;->d()V

    .line 482
    :cond_13
    if-nez p1, :cond_1c

    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Lat/I;->e:LS/f;

    .line 483
    iput-boolean p2, p0, Lat/I;->x:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    .line 484
    monitor-exit p0

    return-void

    .line 482
    :cond_1c
    :try_start_1c
    invoke-interface {p1}, LS/f;->e()LS/f;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    move-result-object v0

    goto :goto_16

    .line 476
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b([B)LS/f;
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 779
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    .line 781
    invoke-static {}, Lat/I;->A()LS/f;

    move-result-object v0

    .line 801
    :cond_b
    :goto_b
    return-object v0

    .line 783
    :cond_c
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    .line 784
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 785
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 786
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int v1, v0, v2

    .line 787
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 788
    sget-object v0, Lat/I;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 789
    if-eqz v0, :cond_37

    .line 790
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/f;

    .line 791
    if-nez v0, :cond_b

    .line 795
    :cond_37
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    .line 796
    invoke-interface {v0, v5, v5, v4}, LS/h;->a(IIZ)LS/f;

    move-result-object v0

    .line 797
    invoke-interface {v0}, LS/f;->c()LS/e;

    move-result-object v3

    .line 798
    invoke-interface {v3, v1}, LS/e;->a(I)V

    .line 799
    invoke-interface {v3, v4, v4, v5, v5}, LS/e;->b(IIII)V

    .line 800
    sget-object v1, Lat/I;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static b(I)V
    .registers 1
    .parameter

    .prologue
    .line 845
    sput p0, Lat/I;->b:I

    .line 846
    return-void
.end method

.method private declared-synchronized b(LS/f;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/I;->g:LS/f;

    if-eqz v0, :cond_13

    .line 493
    iget-object v0, p0, Lat/I;->g:LS/f;

    invoke-interface {v0}, LS/f;->f()V

    .line 494
    iget-boolean v0, p0, Lat/I;->y:Z

    if-eqz v0, :cond_13

    .line 495
    iget-object v0, p0, Lat/I;->g:LS/f;

    invoke-interface {v0}, LS/f;->d()V

    .line 498
    :cond_13
    if-nez p1, :cond_1c

    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Lat/I;->g:LS/f;

    .line 499
    iput-boolean p2, p0, Lat/I;->y:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    .line 500
    monitor-exit p0

    return-void

    .line 498
    :cond_1c
    :try_start_1c
    invoke-interface {p1}, LS/f;->e()LS/f;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    move-result-object v0

    goto :goto_16

    .line 492
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(J)LS/f;
    .registers 6
    .parameter

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 592
    monitor-enter p0

    .line 593
    const-wide/high16 v1, -0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_37

    .line 594
    :try_start_8
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lat/I;->h:J

    .line 601
    :goto_16
    iget-object v1, p0, Lat/I;->e:LS/f;

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lat/I;->f:Z

    if-eqz v1, :cond_44

    :cond_1e
    invoke-virtual {p0}, Lat/I;->e()Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_3a

    move-result v1

    if-eqz v1, :cond_44

    .line 604
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lat/I;->b(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_27} :catch_3d

    move v1, v0

    .line 612
    :goto_28
    :try_start_28
    iget-object v0, p0, Lat/I;->e:LS/f;

    if-nez v0, :cond_41

    .line 614
    invoke-direct {p0}, Lat/I;->y()LS/f;

    move-result-object v0

    .line 618
    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_3a

    .line 619
    if-eqz v1, :cond_36

    .line 621
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    .line 623
    :cond_36
    return-object v0

    .line 596
    :cond_37
    :try_start_37
    iput-wide p1, p0, Lat/I;->h:J

    goto :goto_16

    .line 618
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3a

    throw v0

    .line 605
    :catch_3d
    move-exception v0

    .line 608
    const/4 v0, 0x1

    move v1, v0

    goto :goto_28

    .line 616
    :cond_41
    :try_start_41
    iget-object v0, p0, Lat/I;->e:LS/f;
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3a

    goto :goto_30

    :cond_44
    move v1, v0

    goto :goto_28
.end method

.method private static c([B)LS/f;
    .registers 5
    .parameter

    .prologue
    .line 812
    :try_start_0
    invoke-static {p0}, LU/c;->a([B)[B

    move-result-object v0

    .line 813
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LS/h;->a([BII)LS/f;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 817
    :goto_12
    return-object v0

    .line 815
    :catch_13
    move-exception v0

    .line 816
    const-string v1, "MAP"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 817
    invoke-static {}, Lat/I;->A()LS/f;

    move-result-object v0

    goto :goto_12
.end method

.method public static w()I
    .registers 1

    .prologue
    .line 853
    sget v0, Lat/I;->b:I

    return v0
.end method

.method private y()LS/f;
    .registers 2

    .prologue
    .line 649
    sget-object v0, Lat/I;->p:LS/f;

    if-eqz v0, :cond_8

    sget-object v0, Lat/I;->o:LS/f;

    if-nez v0, :cond_b

    .line 650
    :cond_8
    invoke-static {}, Lat/I;->z()V

    .line 653
    :cond_b
    iget-boolean v0, p0, Lat/I;->m:Z

    if-eqz v0, :cond_12

    sget-object v0, Lat/I;->p:LS/f;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lat/I;->o:LS/f;

    goto :goto_11
.end method

.method private static z()V
    .registers 3

    .prologue
    const/16 v2, 0x100

    .line 747
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->b(I)LS/f;

    move-result-object v0

    sput-object v0, Lat/I;->o:LS/f;

    .line 748
    sget-object v0, Lat/I;->o:LS/f;

    if-nez v0, :cond_22

    .line 750
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    .line 751
    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, LS/h;->a(IIZ)LS/f;

    move-result-object v0

    sput-object v0, Lat/I;->o:LS/f;

    .line 754
    :cond_22
    sget-object v0, Lat/I;->o:LS/f;

    sput-object v0, Lat/I;->p:LS/f;

    .line 755
    return-void
.end method


# virtual methods
.method public declared-synchronized a(IIIIII)LS/f;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 891
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lat/I;->f()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v0

    if-nez v0, :cond_a

    .line 892
    const/4 v0, 0x0

    .line 894
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    const-wide/high16 v0, -0x8000

    :try_start_c
    invoke-direct {p0, v0, v1}, Lat/I;->c(J)LS/f;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, LS/f;->a(IIIIII)LS/f;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    move-result-object v0

    goto :goto_8

    .line 891
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lat/I;->f:Z

    if-eqz v0, :cond_d

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/I;->f:Z

    .line 260
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/I;->a(LS/f;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 262
    :cond_d
    monitor-exit p0

    return-void

    .line 258
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 4
    .parameter

    .prologue
    .line 459
    monitor-enter p0

    if-nez p1, :cond_d

    .line 460
    :try_start_3
    iget-object v0, p0, Lat/I;->e:LS/f;

    iget-boolean v1, p0, Lat/I;->x:Z

    invoke-direct {p0, v0, v1}, Lat/I;->b(LS/f;Z)V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/I;->x:Z

    .line 467
    :cond_d
    iput p1, p0, Lat/I;->v:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 468
    monitor-exit p0

    return-void

    .line 459
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .registers 3
    .parameter

    .prologue
    .line 308
    iput-wide p1, p0, Lat/I;->h:J

    .line 309
    return-void
.end method

.method public a(JJ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 324
    iget v0, p0, Lat/I;->k:I

    if-nez v0, :cond_18

    iget-wide v0, p0, Lat/I;->j:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lat/I;->j:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 326
    iput-wide v4, p0, Lat/I;->i:J

    .line 328
    :cond_18
    iget-wide v0, p0, Lat/I;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    .line 329
    iput-wide p1, p0, Lat/I;->i:J

    .line 331
    :cond_20
    iput-wide p1, p0, Lat/I;->j:J

    .line 334
    invoke-virtual {p0}, Lat/I;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lat/I;->f:Z

    if-nez v0, :cond_39

    iget v0, p0, Lat/I;->k:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_39

    .line 336
    iget v0, p0, Lat/I;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lat/I;->k:I

    .line 338
    :cond_39
    return-void
.end method

.method public declared-synchronized a(LS/f;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lat/I;->a(LS/f;)V

    .line 449
    invoke-direct {p0, p1, p3}, Lat/I;->a(LS/f;Z)V

    .line 450
    invoke-virtual {p0, p2}, Lat/I;->a(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 451
    monitor-exit p0

    return-void

    .line 448
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lat/I;->l:Lat/P;

    invoke-virtual {v0, p1}, Lat/P;->a(Ljava/io/DataOutput;)V

    .line 665
    iget-object v0, p0, Lat/I;->d:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 666
    iget-object v0, p0, Lat/I;->d:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 667
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 831
    iput-boolean p1, p0, Lat/I;->w:Z

    .line 832
    return-void
.end method

.method public declared-synchronized a([B)V
    .registers 4
    .parameter

    .prologue
    .line 719
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lat/I;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 720
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tile already complete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 719
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 722
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    iput v0, p0, Lat/I;->v:I

    .line 723
    iput-object p1, p0, Lat/I;->d:[B

    .line 727
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/I;->b(LS/f;Z)V

    .line 728
    iget-boolean v0, p0, Lat/I;->f:Z

    if-nez v0, :cond_25

    .line 729
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/I;->a(LS/f;Z)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_f

    .line 731
    :cond_25
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(LS/e;JIIZ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lat/I;->f()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p6, :cond_13

    .line 870
    :cond_9
    invoke-direct {p0, p2, p3}, Lat/I;->c(J)LS/f;

    move-result-object v0

    invoke-interface {p1, v0, p4, p5}, LS/e;->a(LS/f;II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    .line 871
    const/4 v0, 0x1

    .line 873
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 869
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lat/I;->e:LS/f;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lat/I;->f:Z

    if-eqz v2, :cond_4a

    .line 372
    :cond_b
    new-instance v2, Lat/J;

    invoke-direct {v2}, Lat/J;-><init>()V

    .line 373
    iget-object v3, p0, Lat/I;->d:[B

    invoke-virtual {v2, v3}, Lat/J;->a([B)[B

    move-result-object v3

    .line 374
    invoke-virtual {v2}, Lat/J;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, Lat/I;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Lat/n;

    move-result-object v4

    iput-object v4, p0, Lat/I;->r:Lat/n;

    .line 375
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->ao()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 376
    invoke-virtual {v2}, Lat/J;->b()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lat/I;->s:[Ljava/lang/String;

    .line 377
    invoke-virtual {v2}, Lat/J;->c()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lat/I;->t:[Ljava/lang/String;

    .line 378
    invoke-virtual {v2}, Lat/J;->d()I

    move-result v2

    iput v2, p0, Lat/I;->u:I

    .line 386
    :cond_3c
    array-length v2, v3

    if-nez v2, :cond_4c

    .line 387
    invoke-static {}, Lat/I;->A()LS/f;

    move-result-object v0

    .line 400
    :goto_43
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lat/I;->a(LS/f;IZ)V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/I;->f:Z
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_7d

    .line 404
    :cond_4a
    monitor-exit p0

    return-void

    .line 389
    :cond_4c
    :try_start_4c
    array-length v2, v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_55

    .line 390
    invoke-static {v3}, Lat/I;->b([B)LS/f;

    move-result-object v0

    goto :goto_43

    .line 392
    :cond_55
    const/4 v2, 0x0

    sget-object v4, Lat/I;->c:[B

    invoke-static {v3, v2, v4}, Lat/J;->a([BI[B)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 393
    invoke-static {v3}, Lat/I;->c([B)LS/f;

    move-result-object v2

    .line 394
    sget-object v3, Lat/I;->q:LS/f;

    if-eq v2, v3, :cond_69

    :goto_66
    move v1, v0

    move-object v0, v2

    goto :goto_43

    :cond_69
    move v0, v1

    goto :goto_66

    .line 396
    :cond_6b
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v4, v3

    invoke-interface {v1, v3, v2, v4}, LS/h;->a([BII)LS/f;
    :try_end_78
    .catchall {:try_start_4c .. :try_end_78} :catchall_7d

    move-result-object v1

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 398
    goto :goto_43

    .line 371
    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()[B
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lat/I;->d:[B

    return-object v0
.end method

.method public c()Lat/P;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lat/I;->l:Lat/P;

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 3

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lat/I;->e()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lat/I;->v()Z

    move-result v0

    if-nez v0, :cond_25

    .line 278
    :cond_d
    iget-object v0, p0, Lat/I;->e:LS/f;

    if-eqz v0, :cond_16

    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/I;->a(LS/f;Z)V

    .line 281
    :cond_16
    iget-object v0, p0, Lat/I;->g:LS/f;

    if-eqz v0, :cond_1f

    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/I;->b(LS/f;Z)V

    .line 284
    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lat/I;->v:I

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lat/I;->r:Lat/n;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 287
    :cond_25
    monitor-exit p0

    return-void

    .line 277
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lat/I;->d:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 690
    if-ne p0, p1, :cond_5

    .line 698
    :cond_4
    :goto_4
    return v0

    .line 693
    :cond_5
    instance-of v2, p1, Lat/I;

    if-nez v2, :cond_b

    move v0, v1

    .line 694
    goto :goto_4

    .line 697
    :cond_b
    check-cast p1, Lat/I;

    .line 698
    iget-object v2, p0, Lat/I;->l:Lat/P;

    if-nez v2, :cond_17

    iget-object v2, p1, Lat/I;->l:Lat/P;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v0, p0, Lat/I;->l:Lat/P;

    iget-object v1, p1, Lat/I;->l:Lat/P;

    invoke-virtual {v0, v1}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lat/I;->e:LS/f;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()J
    .registers 3

    .prologue
    .line 304
    iget-wide v0, p0, Lat/I;->h:J

    return-wide v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 341
    iget-wide v0, p0, Lat/I;->i:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lat/I;->l:Lat/P;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lat/I;->l:Lat/P;

    invoke-virtual {v0}, Lat/P;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public i()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lat/I;->k:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lat/I;->d:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lat/I;->d:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public declared-synchronized k()V
    .registers 3

    .prologue
    .line 525
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/I;->g:LS/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/I;->a(LS/f;Z)V

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lat/I;->v:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 527
    monitor-exit p0

    return-void

    .line 525
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lat/I;->v:I

    return v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 542
    iget-boolean v0, p0, Lat/I;->f:Z

    return v0
.end method

.method public declared-synchronized n()LS/f;
    .registers 3

    .prologue
    .line 564
    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_3
    invoke-direct {p0, v0, v1}, Lat/I;->c(J)LS/f;

    move-result-object v0

    .line 565
    invoke-interface {v0}, LS/f;->e()LS/f;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 564
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()V
    .registers 3

    .prologue
    .line 572
    const-wide/high16 v0, -0x8000

    invoke-direct {p0, v0, v1}, Lat/I;->c(J)LS/f;

    .line 573
    return-void
.end method

.method public p()Lat/n;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lat/I;->r:Lat/n;

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lat/I;->s:[Ljava/lang/String;

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lat/I;->t:[Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 644
    iget v0, p0, Lat/I;->u:I

    return v0
.end method

.method public t()Z
    .registers 3

    .prologue
    .line 738
    iget v0, p0, Lat/I;->v:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lat/I;->g:LS/f;

    iget-object v1, p0, Lat/I;->e:LS/f;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lat/I;->l:Lat/P;

    invoke-virtual {v1}, Lat/P;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lat/I;->d:[B

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lat/I;->d:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v0, "B?"

    goto :goto_29
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 827
    iget-boolean v0, p0, Lat/I;->n:Z

    return v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 835
    iget-boolean v0, p0, Lat/I;->w:Z

    return v0
.end method

.method public declared-synchronized x()I
    .registers 3

    .prologue
    .line 900
    monitor-enter p0

    const/4 v0, 0x0

    .line 901
    :try_start_2
    iget-boolean v1, p0, Lat/I;->y:Z

    if-eqz v1, :cond_d

    .line 902
    iget-object v1, p0, Lat/I;->g:LS/f;

    invoke-interface {v1}, LS/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 904
    :cond_d
    iget-boolean v1, p0, Lat/I;->x:Z

    if-eqz v1, :cond_18

    .line 905
    iget-object v1, p0, Lat/I;->e:LS/f;

    invoke-interface {v1}, LS/f;->g()I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1a

    move-result v1

    add-int/2addr v0, v1

    .line 907
    :cond_18
    monitor-exit p0

    return v0

    .line 900
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
