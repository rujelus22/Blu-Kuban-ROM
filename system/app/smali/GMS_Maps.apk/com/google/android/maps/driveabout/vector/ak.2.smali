.class public Lcom/google/android/maps/driveabout/vector/aK;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# static fields
.field private static final a:Ln/Q;

.field private static final b:Ln/Q;


# instance fields
.field private final c:Ljava/util/List;

.field private final d:Ln/aa;

.field private final e:Ljava/util/List;

.field private f:Lx/v;

.field private g:Ln/aa;

.field private h:F

.field private i:F

.field private j:B

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:Ljava/lang/Object;

.field private o:Lcom/google/android/maps/driveabout/vector/dY;

.field private p:Lcom/google/android/maps/driveabout/vector/bI;

.field private final q:[Ln/Q;

.field private r:I

.field private s:I

.field private t:I

.field private final u:Ljava/util/List;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Ln/Q;

    const/high16 v1, -0x4000

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aK;->a:Ln/Q;

    .line 53
    new-instance v0, Ln/Q;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aK;->b:Ln/Q;

    return-void
.end method

.method public constructor <init>(Ln/U;Ljava/util/List;III)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 85
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    .line 91
    invoke-static {}, Lx/v;->a()Lx/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->f:Lx/v;

    .line 118
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->m:Z

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->n:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ln/Q;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->q:[Ln/Q;

    .line 187
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->v:Z

    .line 207
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    .line 208
    invoke-virtual {p1}, Ln/U;->f()I

    move-result v2

    .line 209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    invoke-virtual {p1, v2}, Ln/U;->c(I)Ln/U;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 211
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Ln/U;->c(I)Ln/U;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 213
    :cond_4d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    invoke-virtual {v0}, Ln/U;->a()Ln/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Ln/aa;

    .line 215
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aK;->t:I

    .line 216
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/aK;->s:I

    .line 217
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->u:Ljava/util/List;

    .line 218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 219
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aK;->u:Ljava/util/List;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/X;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aK;->t:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aK;->s:I

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/X;-><init>(Ln/U;FILn/p;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 222
    :cond_88
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aK;->r:I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p5, v0, :cond_a9

    move v0, v1

    :goto_99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    const/16 v1, 0x78

    const-string v2, "t"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 224
    :cond_a9
    const/4 v0, 0x1

    goto :goto_99
.end method

.method private a(Ln/aa;)B
    .registers 7
    .parameter

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Ln/aa;

    invoke-virtual {p1, v1}, Ln/aa;->a(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 389
    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 392
    :cond_b
    sget-object v1, Lcom/google/android/maps/driveabout/vector/aK;->b:Ln/Q;

    .line 393
    new-instance v2, Ln/aa;

    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    invoke-virtual {v3, v1}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v3

    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v4

    invoke-virtual {v4, v1}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    .line 394
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Ln/aa;

    invoke-virtual {v2, v3}, Ln/aa;->a(Ln/ab;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 395
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 398
    :cond_2d
    new-instance v2, Ln/aa;

    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    invoke-virtual {v3, v1}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v3

    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v4

    invoke-virtual {v4, v1}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    .line 400
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Ln/aa;

    invoke-virtual {v2, v1}, Ln/aa;->a(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 401
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 404
    :cond_4d
    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/aK;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/aK;Lx/v;)Lx/v;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aK;->f:Lx/v;

    return-object p1
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 302
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->q:[Ln/Q;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 304
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aK;->q:[Ln/Q;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ln/Q;->f()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aK;->q:[Ln/Q;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 305
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/maps/driveabout/vector/dz;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 308
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 317
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->o:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 318
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->r:I

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->p:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/aK;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aK;->l:Z

    return p1
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v4

    .line 329
    :try_start_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->g:Ln/aa;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->g:Ln/aa;

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/aK;->a(Ln/aa;)B

    move-result v2

    if-nez v2, :cond_22

    move v3, v1

    :goto_12
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->e(Lcom/google/android/maps/driveabout/vector/k;)Ln/aa;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/aK;->a(Ln/aa;)B

    move-result v2

    if-nez v2, :cond_24

    move v2, v1

    :goto_1d
    if-eq v3, v2, :cond_20

    :cond_1f
    move v0, v1

    :cond_20
    monitor-exit v4

    return v0

    :cond_22
    move v3, v0

    goto :goto_12

    :cond_24
    move v2, v0

    goto :goto_1d

    .line 331
    :catchall_26
    move-exception v0

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private static b(I)I
    .registers 3
    .parameter

    .prologue
    .line 538
    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/aK;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aK;->e(Lcom/google/android/maps/driveabout/vector/k;)Ln/aa;

    move-result-object v4

    .line 480
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v1

    .line 481
    :try_start_7
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aK;->f:Lx/v;

    .line 482
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b5

    .line 490
    invoke-direct {p0, v4}, Lcom/google/android/maps/driveabout/vector/aK;->a(Ln/aa;)B

    move-result v6

    .line 491
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_b8

    const/4 v0, 0x1

    move v3, v0

    .line 492
    :goto_14
    if-eqz v3, :cond_bc

    const/4 v0, 0x1

    .line 494
    :goto_17
    and-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_bf

    const/4 v1, 0x1

    move v2, v1

    .line 495
    :goto_1d
    if-eqz v2, :cond_21

    add-int/lit8 v0, v0, 0x1

    .line 497
    :cond_21
    and-int/lit8 v1, v6, 0x4

    if-eqz v1, :cond_c3

    const/4 v1, 0x1

    .line 498
    :goto_26
    if-eqz v1, :cond_2a

    add-int/lit8 v0, v0, 0x1

    .line 500
    :cond_2a
    invoke-virtual {v5}, Lx/v;->e()I

    move-result v7

    .line 501
    new-instance v8, Lcom/google/android/maps/driveabout/vector/dY;

    mul-int v9, v7, v0

    invoke-direct {v8, v9}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    .line 502
    new-instance v9, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lx/v;->d()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3

    mul-int/2addr v0, v10

    invoke-direct {v9, v0}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    .line 504
    const/4 v0, 0x0

    .line 505
    invoke-virtual {v4}, Ln/aa;->d()Ln/Q;

    move-result-object v10

    .line 506
    invoke-virtual {v4}, Ln/aa;->e()Ln/Q;

    move-result-object v11

    invoke-virtual {v11}, Ln/Q;->f()I

    move-result v11

    invoke-virtual {v4}, Ln/aa;->d()Ln/Q;

    move-result-object v12

    invoke-virtual {v12}, Ln/Q;->f()I

    move-result v12

    sub-int/2addr v11, v12

    .line 507
    if-eqz v3, :cond_61

    .line 508
    const/4 v0, 0x0

    invoke-static {v5, v9, v0}, Lx/o;->a(Lx/v;Lcom/google/android/maps/driveabout/vector/bI;I)V

    .line 509
    invoke-static {v5, v8, v10, v11}, Lx/o;->a(Lx/v;Lcom/google/android/maps/driveabout/vector/dY;Ln/Q;I)V

    .line 510
    const/4 v0, 0x1

    .line 512
    :cond_61
    if-eqz v2, :cond_73

    .line 513
    mul-int v2, v7, v0

    invoke-static {v5, v9, v2}, Lx/o;->a(Lx/v;Lcom/google/android/maps/driveabout/vector/bI;I)V

    .line 514
    sget-object v2, Lcom/google/android/maps/driveabout/vector/aK;->a:Ln/Q;

    invoke-virtual {v10, v2}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v2

    invoke-static {v5, v8, v2, v11}, Lx/o;->a(Lx/v;Lcom/google/android/maps/driveabout/vector/dY;Ln/Q;I)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    .line 518
    :cond_73
    if-eqz v1, :cond_82

    .line 519
    mul-int/2addr v0, v7

    invoke-static {v5, v9, v0}, Lx/o;->a(Lx/v;Lcom/google/android/maps/driveabout/vector/bI;I)V

    .line 520
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aK;->b:Ln/Q;

    invoke-virtual {v10, v0}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    invoke-static {v5, v8, v0, v11}, Lx/o;->a(Lx/v;Lcom/google/android/maps/driveabout/vector/dY;Ln/Q;I)V

    .line 524
    :cond_82
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_85
    iput-object v8, p0, Lcom/google/android/maps/driveabout/vector/aK;->o:Lcom/google/android/maps/driveabout/vector/dY;

    .line 526
    iput-object v9, p0, Lcom/google/android/maps/driveabout/vector/aK;->p:Lcom/google/android/maps/driveabout/vector/bI;

    .line 528
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->q:[Ln/Q;

    const/4 v2, 0x0

    invoke-virtual {v4}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    aput-object v3, v0, v2

    .line 529
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->q:[Ln/Q;

    const/4 v2, 0x1

    invoke-virtual {v4}, Ln/aa;->e()Ln/Q;

    move-result-object v3

    aput-object v3, v0, v2

    .line 530
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->i:F

    .line 531
    iput-byte v6, p0, Lcom/google/android/maps/driveabout/vector/aK;->j:B

    .line 532
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->o:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    if-lez v0, :cond_c6

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c6

    const/4 v0, 0x1

    :goto_b1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->m:Z

    .line 533
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_85 .. :try_end_b4} :catchall_c8

    .line 534
    return-void

    .line 482
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0

    .line 491
    :cond_b8
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_14

    .line 492
    :cond_bc
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 494
    :cond_bf
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_1d

    .line 497
    :cond_c3
    const/4 v1, 0x0

    goto/16 :goto_26

    .line 532
    :cond_c6
    const/4 v0, 0x0

    goto :goto_b1

    .line 533
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v1

    .line 342
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->h:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 343
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 348
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v1

    .line 351
    :try_start_9
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->h:F

    mul-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_17

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->h:F

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1a

    :cond_17
    const/4 v0, 0x1

    .line 354
    :goto_18
    monitor-exit v1

    .line 355
    return v0

    .line 351
    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 354
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v7, 0x3fa0

    const/4 v1, 0x0

    .line 362
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->l:Z

    if-eqz v2, :cond_b

    .line 363
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->l:Z

    .line 373
    :goto_a
    return v0

    .line 366
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->m:Z

    if-nez v2, :cond_11

    move v0, v1

    .line 367
    goto :goto_a

    .line 370
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v2

    .line 371
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v3

    .line 372
    :try_start_18
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aK;->n:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_38

    .line 373
    :try_start_1b
    iget-byte v5, p0, Lcom/google/android/maps/driveabout/vector/aK;->j:B

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->e(Lcom/google/android/maps/driveabout/vector/k;)Ln/aa;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/maps/driveabout/vector/aK;->a(Ln/aa;)B

    move-result v6

    if-ne v5, v6, :cond_35

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aK;->i:F

    mul-float/2addr v5, v7

    cmpl-float v5, v2, v5

    if-gtz v5, :cond_35

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aK;->i:F

    div-float/2addr v5, v7

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3b

    :cond_35
    :goto_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3d

    :try_start_36
    monitor-exit v3

    goto :goto_a

    .line 377
    :catchall_38
    move-exception v0

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    move v0, v1

    .line 373
    goto :goto_35

    .line 376
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_38
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/k;)Ln/aa;
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x2000

    .line 408
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->b()Ln/aa;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Ln/aa;->g()I

    move-result v0

    .line 410
    invoke-virtual {v2}, Ln/aa;->h()I

    move-result v1

    .line 411
    const v3, 0x71c71c7

    .line 414
    if-gt v0, v3, :cond_19

    if-le v1, v3, :cond_42

    .line 417
    :cond_19
    new-instance v1, Ln/Q;

    invoke-virtual {v2}, Ln/aa;->f()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    sub-int/2addr v0, v4

    const/high16 v3, -0x2000

    invoke-direct {v1, v0, v3}, Ln/Q;-><init>(II)V

    .line 418
    new-instance v0, Ln/Q;

    invoke-virtual {v2}, Ln/aa;->f()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    const v3, 0x1fffffff

    invoke-direct {v0, v2, v3}, Ln/Q;-><init>(II)V

    .line 425
    :goto_3c
    new-instance v2, Ln/aa;

    invoke-direct {v2, v1, v0}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v2

    .line 421
    :cond_42
    new-instance v3, Ln/Q;

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v3, v0, v1}, Ln/Q;-><init>(II)V

    .line 422
    invoke-virtual {v2}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {v0, v3}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 423
    invoke-virtual {v2}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {v0, v3}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    goto :goto_3c
.end method

.method private f(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 6
    .parameter

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->e(Lcom/google/android/maps/driveabout/vector/k;)Ln/aa;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v1

    .line 438
    :try_start_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 439
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aK;->a(Ln/aa;)B

    move-result v2

    if-eqz v2, :cond_19

    .line 440
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 442
    :cond_19
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->g:Ln/aa;

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private g(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 8
    .parameter

    .prologue
    .line 449
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v1

    .line 450
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 451
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2f

    .line 453
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aK;->b(I)I

    move-result v3

    .line 454
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 455
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v1, v4, :cond_32

    .line 456
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    int-to-float v5, v3

    invoke-virtual {v0, v5}, Ln/U;->b(F)Ln/U;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 455
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 451
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    .line 458
    :cond_32
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    monitor-enter v1

    .line 459
    :try_start_35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 460
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->h:F

    .line 462
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private h(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 4
    .parameter

    .prologue
    .line 467
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aL;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/vector/aL;-><init>(Lcom/google/android/maps/driveabout/vector/aK;Lcom/google/android/maps/driveabout/vector/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 468
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 469
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->v:Z

    if-eqz v1, :cond_14

    .line 471
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    .line 474
    :cond_14
    :goto_14
    return-void

    .line 472
    :catch_15
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_57

    .line 264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->g:Ln/aa;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->k:Z

    if-eqz v0, :cond_18

    .line 269
    :cond_e
    invoke-virtual {p0, p2, p1}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 270
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->k:Z

    if-eqz v0, :cond_18

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->k:Z

    .line 274
    :cond_18
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aK;->d(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aK;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 277
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->m:Z

    if-eqz v0, :cond_30

    .line 278
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 279
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 281
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 283
    :cond_30
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_57

    .line 287
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/X;

    .line 289
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 290
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    goto :goto_3e

    .line 293
    :cond_54
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 296
    :cond_57
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 240
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->r:I

    if-eq v2, v3, :cond_45

    .line 241
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->b(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->k:Z

    if-eqz v2, :cond_18

    :cond_17
    move v0, v1

    .line 243
    :cond_18
    if-eqz v0, :cond_1d

    .line 244
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->f(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 246
    :cond_1d
    if-nez v0, :cond_25

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->c(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 247
    :cond_25
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->g(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->h(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 253
    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->s:I

    if-eq v0, v3, :cond_48

    .line 254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/X;

    .line 255
    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    goto :goto_35

    .line 251
    :cond_45
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->m:Z

    goto :goto_2b

    .line 258
    :cond_48
    return v1
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method
