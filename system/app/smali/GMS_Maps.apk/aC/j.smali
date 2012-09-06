.class public Lac/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:Ljava/lang/Boolean;

.field private p:I

.field private q:Lac/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 381
    const-class v0, Lac/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lac/j;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/j;->f:Z

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lac/j;->p:I

    return-void
.end method


# virtual methods
.method public a()Lac/h;
    .registers 6

    .prologue
    .line 503
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 504
    :cond_e
    iget-object v0, p0, Lac/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lac/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lac/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lac/j;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lac/j;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lac/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lac/h;

    move-result-object v0

    iput-object v0, p0, Lac/j;->q:Lac/h;

    .line 506
    iget-object v0, p0, Lac/j;->q:Lac/h;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lac/h;->a(Lac/h;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lac/j;->q:Lac/h;

    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lac/h;->c(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget-object v1, p0, Lac/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lac/h;->d(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget v1, p0, Lac/j;->g:I

    invoke-static {v0, v1}, Lac/h;->a(Lac/h;I)V

    .line 511
    iget-object v0, p0, Lac/j;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_49

    .line 512
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget-object v1, p0, Lac/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lac/h;->a(Lac/h;Z)V

    .line 514
    :cond_49
    iget-object v0, p0, Lac/j;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    .line 515
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget-object v1, p0, Lac/j;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lac/h;->b(Lac/h;Z)V

    .line 517
    :cond_58
    iget-object v0, p0, Lac/j;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_67

    .line 518
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget-object v1, p0, Lac/j;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lac/h;->c(Lac/h;Z)V

    .line 520
    :cond_67
    iget-object v0, p0, Lac/j;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_76

    .line 521
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget-object v1, p0, Lac/j;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lac/h;->d(Lac/h;Z)V

    .line 525
    :cond_76
    iget-object v0, p0, Lac/j;->q:Lac/h;

    iget-object v0, v0, Lac/h;->f:Lac/o;

    .line 526
    iget-object v1, p0, Lac/j;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_87

    .line 527
    iget-object v1, p0, Lac/j;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lac/o;->a(Lac/o;Z)V

    .line 529
    :cond_87
    iget-object v1, p0, Lac/j;->i:Ljava/lang/String;

    if-eqz v1, :cond_90

    .line 530
    iget-object v1, p0, Lac/j;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lac/o;->a(Lac/o;Ljava/lang/String;)V

    .line 532
    :cond_90
    iget v1, p0, Lac/j;->p:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9a

    .line 533
    iget v1, p0, Lac/j;->p:I

    invoke-virtual {v0, v1}, Lac/o;->c(I)V

    .line 535
    :cond_9a
    iget-object v1, p0, Lac/j;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_a7

    .line 536
    iget-object v1, p0, Lac/j;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lac/o;->a(Z)V

    .line 539
    :cond_a7
    iget-object v0, p0, Lac/j;->q:Lac/h;

    return-object v0
.end method

.method public a(I)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 444
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 445
    :cond_e
    iput p1, p0, Lac/j;->g:I

    .line 446
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 408
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 409
    :cond_e
    iput-object p1, p0, Lac/j;->b:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public a(Z)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 432
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 433
    :cond_e
    iput-boolean p1, p0, Lac/j;->f:Z

    .line 434
    return-object p0
.end method

.method public b(I)Lac/j;
    .registers 2
    .parameter

    .prologue
    .line 488
    iput p1, p0, Lac/j;->p:I

    .line 489
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 414
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 415
    :cond_e
    iput-object p1, p0, Lac/j;->c:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public b(Z)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 450
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 451
    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lac/j;->j:Ljava/lang/Boolean;

    .line 452
    return-object p0
.end method

.method public b()Lac/p;
    .registers 4

    .prologue
    .line 548
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 550
    :cond_e
    iget-object v0, p0, Lac/j;->q:Lac/h;

    invoke-static {v0}, Lac/h;->a(Lac/h;)Lac/o;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lac/j;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_21

    .line 552
    iget-object v1, p0, Lac/j;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lac/o;->a(Lac/o;Z)V

    .line 554
    :cond_21
    iget-object v1, p0, Lac/j;->i:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 555
    iget-object v1, p0, Lac/j;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lac/o;->a(Lac/o;Ljava/lang/String;)V

    .line 557
    :cond_2a
    iget v1, p0, Lac/j;->p:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 558
    iget v1, p0, Lac/j;->p:I

    invoke-virtual {v0, v1}, Lac/o;->c(I)V

    .line 562
    :goto_34
    iget-object v1, p0, Lac/j;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_41

    .line 563
    iget-object v1, p0, Lac/j;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lac/o;->a(Z)V

    .line 566
    :cond_41
    return-object v0

    .line 560
    :cond_42
    invoke-static {v0}, Lac/o;->a(Lac/o;)V

    goto :goto_34
.end method

.method public c(Ljava/lang/String;)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 420
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    :cond_e
    iput-object p1, p0, Lac/j;->d:Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public c(Z)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 456
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 457
    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lac/j;->k:Ljava/lang/Boolean;

    .line 458
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 426
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 427
    :cond_e
    iput-object p1, p0, Lac/j;->e:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public d(Z)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 462
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 463
    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lac/j;->m:Ljava/lang/Boolean;

    .line 464
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 438
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 439
    :cond_e
    iput-object p1, p0, Lac/j;->h:Ljava/lang/String;

    .line 440
    return-object p0
.end method

.method public e(Z)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 468
    sget-boolean v0, Lac/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lac/j;->q:Lac/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 469
    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lac/j;->l:Ljava/lang/Boolean;

    .line 470
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lac/j;
    .registers 2
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lac/j;->i:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method public f(Z)Lac/j;
    .registers 3
    .parameter

    .prologue
    .line 478
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lac/j;->n:Ljava/lang/Boolean;

    .line 479
    return-object p0
.end method
