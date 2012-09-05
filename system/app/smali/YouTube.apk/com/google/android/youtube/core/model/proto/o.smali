.class public final Lcom/google/android/youtube/core/model/proto/o;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/n;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method private a(I)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->l(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 580
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->a(Lcom/google/android/youtube/core/model/proto/n;I)I

    .line 581
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 420
    if-nez p1, :cond_8

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->a(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->a(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    return-object p0
.end method

.method private a(Z)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->f(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 526
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->g(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 527
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 441
    if-nez p1, :cond_8

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 444
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->b(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 445
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->b(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    return-object p0
.end method

.method private b(Z)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->h(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->i(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 545
    return-object p0
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 361
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 362
    sparse-switch v0, :sswitch_data_56

    .line 366
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :sswitch_d
    return-object p0

    .line 372
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 376
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 380
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 384
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 388
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->e(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 392
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/d;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->a(Z)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 396
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->b(Z)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 400
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/d;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->c(Z)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 404
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/o;->a(I)Lcom/google/android/youtube/core/model/proto/o;

    goto :goto_0

    .line 362
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x30 -> :sswitch_36
        0x38 -> :sswitch_3e
        0x40 -> :sswitch_46
        0x58 -> :sswitch_4e
    .end sparse-switch
.end method

.method private c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 462
    if-nez p1, :cond_8

    .line 463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 465
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->c(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 466
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->c(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method private c(Z)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->j(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 562
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->k(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 563
    return-object p0
.end method

.method static synthetic d()Lcom/google/android/youtube/core/model/proto/o;
    .registers 1

    .prologue
    .line 255
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/o;->e()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 483
    if-nez p1, :cond_8

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 486
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->d(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->d(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method private static e()Lcom/google/android/youtube/core/model/proto/o;
    .registers 2

    .prologue
    .line 264
    new-instance v0, Lcom/google/android/youtube/core/model/proto/o;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/o;-><init>()V

    .line 265
    new-instance v1, Lcom/google/android/youtube/core/model/proto/n;

    invoke-direct {v1}, Lcom/google/android/youtube/core/model/proto/n;-><init>()V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    .line 266
    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;
    .registers 4
    .parameter

    .prologue
    .line 504
    if-nez p1, :cond_8

    .line 505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 507
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;->e(Lcom/google/android/youtube/core/model/proto/n;Z)Z

    .line 508
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/n;->e(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    return-object p0
.end method

.method private f()Lcom/google/android/youtube/core/model/proto/o;
    .registers 4

    .prologue
    .line 285
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/o;->e()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/n;->a()Lcom/google/android/youtube/core/model/proto/n;

    move-result-object v2

    if-eq v1, v2, :cond_81

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->d()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    :cond_26
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->f()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    :cond_33
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->h()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    :cond_40
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->k()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->e(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/o;

    :cond_4d
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->m()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->n()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->a(Z)Lcom/google/android/youtube/core/model/proto/o;

    :cond_5a
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->o()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->p()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->b(Z)Lcom/google/android/youtube/core/model/proto/o;

    :cond_67
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->q()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->r()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/o;->c(Z)Lcom/google/android/youtube/core/model/proto/o;

    :cond_74
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->s()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/n;->t()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/o;->a(I)Lcom/google/android/youtube/core/model/proto/o;

    :cond_81
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/proto/n;
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    if-nez v0, :cond_c

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/o;->a:Lcom/google/android/youtube/core/model/proto/n;

    .line 319
    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/o;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/o;->f()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/o;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/o;->f()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/o;->f()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method
