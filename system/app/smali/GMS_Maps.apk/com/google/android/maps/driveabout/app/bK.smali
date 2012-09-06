.class public Lcom/google/android/maps/driveabout/app/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lo/P;

.field private b:Lo/P;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Lo/b;

.field private f:Landroid/content/Intent;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lo/P;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    invoke-virtual {p1}, Lo/P;->c()Ln/s;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_d

    .line 564
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bj;->a(Ln/s;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 566
    :cond_d
    invoke-virtual {p1}, Lo/P;->d()Lo/Q;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1a

    .line 568
    invoke-virtual {v0}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 570
    :cond_1a
    invoke-virtual {p1}, Lo/P;->e()Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_23

    .line 572
    invoke-virtual {p2, p5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 574
    :cond_23
    invoke-virtual {p1}, Lo/P;->f()Ljava/lang/String;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_2c

    .line 576
    invoke-virtual {p2, p6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 579
    :cond_2c
    return-void
.end method


# virtual methods
.method a()Landroid/net/Uri;
    .registers 8

    .prologue
    .line 507
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 514
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->a:[Lo/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3b

    .line 515
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->a:[Lo/P;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lo/P;->c()Ln/s;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_38

    .line 517
    const-string v3, "altvia"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bj;->a(Ln/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 514
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 523
    :cond_3b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->a:[Lo/P;

    array-length v1, v1

    if-ge v0, v1, :cond_50

    .line 524
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->a:[Lo/P;

    aget-object v1, v1, v0

    const-string v3, "q"

    const-string v4, "ll"

    const-string v5, "title"

    const-string v6, "token"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bk;->a(Lo/P;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->b:Lo/P;

    if-eqz v0, :cond_62

    .line 529
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->b:Lo/P;

    const-string v3, "s"

    const-string v4, "sll"

    const-string v5, "stitle"

    const-string v6, "stoken"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bk;->a(Lo/P;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_62
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bk;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b0

    .line 534
    const-string v0, "mode"

    const-string v1, "w"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 539
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->d:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 540
    const-string v0, "entry"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 543
    :cond_81
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->e:[Lo/b;

    if-eqz v0, :cond_90

    .line 544
    const-string v0, "opt"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->e:[Lo/b;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bj;->a([Lo/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 548
    :cond_90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->f:Landroid/content/Intent;

    if-eqz v0, :cond_a0

    .line 549
    const-string v0, "r"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bk;->f:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 553
    :cond_a0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bk;->g:Z

    if-eqz v0, :cond_ab

    .line 554
    const-string v0, "goff"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 557
    :cond_ab
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 535
    :cond_b0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bk;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6e

    .line 536
    const-string v0, "mode"

    const-string v1, "b"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_6e
.end method

.method a(I)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 482
    iput p1, p0, Lcom/google/android/maps/driveabout/app/bk;->c:I

    .line 483
    return-object p0
.end method

.method a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bk;->f:Landroid/content/Intent;

    .line 498
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bk;->d:Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method a(Lo/P;)Lcom/google/android/maps/driveabout/app/bk;
    .registers 4
    .parameter

    .prologue
    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Lo/P;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:[Lo/P;

    .line 468
    return-object p0
.end method

.method a(Z)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/bk;->g:Z

    .line 503
    return-object p0
.end method

.method a([Lo/P;)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bk;->a:[Lo/P;

    .line 473
    return-object p0
.end method

.method a([Lo/b;)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bk;->e:[Lo/b;

    .line 493
    return-object p0
.end method

.method b(Lo/P;)Lcom/google/android/maps/driveabout/app/bk;
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bk;->b:Lo/P;

    .line 478
    return-object p0
.end method
