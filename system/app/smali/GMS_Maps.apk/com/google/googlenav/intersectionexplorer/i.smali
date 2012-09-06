.class Lcom/google/googlenav/intersectionexplorer/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/intersectionexplorer/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/intersectionexplorer/d;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/intersectionexplorer/d;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/intersectionexplorer/d;Lcom/google/googlenav/intersectionexplorer/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/google/googlenav/intersectionexplorer/i;-><init>(Lcom/google/googlenav/intersectionexplorer/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/intersectionexplorer/a;)V
    .registers 5
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->i()[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 521
    return-void
.end method

.method public b(Lcom/google/googlenav/intersectionexplorer/a;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 457
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->j:Lcom/google/googlenav/intersectionexplorer/a;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->k:Lcom/google/googlenav/intersectionexplorer/a;

    if-ne p1, v0, :cond_b

    .line 497
    :cond_a
    :goto_a
    return-void

    .line 461
    :cond_b
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->e:Lcom/google/googlenav/intersectionexplorer/a;

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/intersectionexplorer/d;)Lcom/google/googlenav/intersectionexplorer/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 462
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-virtual {v0, v7}, Lcom/google/googlenav/intersectionexplorer/d;->a(Z)V

    .line 463
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->i()[J

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_a

    .line 467
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/intersectionexplorer/d;)Lcom/google/googlenav/intersectionexplorer/k;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->d(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/h;

    iget-wide v2, v0, Lcom/google/googlenav/intersectionexplorer/h;->a:D

    const-wide v4, 0x3fd921fb54442d18L

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/googlenav/intersectionexplorer/k;->a(DD)Ln/ac;

    move-result-object v2

    .line 470
    if-nez v2, :cond_61

    .line 471
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->d(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/h;

    iget-object v0, v0, Lcom/google/googlenav/intersectionexplorer/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 476
    :cond_61
    invoke-virtual {v2}, Ln/ac;->c()I

    move-result v0

    if-nez v0, :cond_aa

    .line 477
    const/16 v0, 0x207

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 482
    :goto_6e
    const/16 v0, 0x1f7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->d(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/h;

    iget-object v0, v0, Lcom/google/googlenav/intersectionexplorer/h;->b:Ljava/lang/String;

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v2}, Ln/ac;->f()I

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_b0

    .line 489
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->j()[J

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_a

    .line 479
    :cond_aa
    invoke-virtual {v2, v7}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_6e

    .line 490
    :cond_b0
    invoke-virtual {v2}, Ln/ac;->f()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_c7

    .line 491
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->k()[J

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_a

    .line 492
    :cond_c7
    invoke-virtual {v2}, Ln/ac;->f()I

    move-result v0

    const/16 v1, 0x60

    if-ge v0, v1, :cond_de

    .line 493
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->l()[J

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_a

    .line 495
    :cond_de
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->m()[J

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_a
.end method

.method public c(Lcom/google/googlenav/intersectionexplorer/a;)V
    .registers 6
    .parameter

    .prologue
    .line 501
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->j:Lcom/google/googlenav/intersectionexplorer/a;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->k:Lcom/google/googlenav/intersectionexplorer/a;

    if-ne p1, v0, :cond_9

    .line 516
    :cond_8
    :goto_8
    return-void

    .line 504
    :cond_9
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/a;->e:Lcom/google/googlenav/intersectionexplorer/a;

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/intersectionexplorer/d;)Lcom/google/googlenav/intersectionexplorer/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a()Z

    move-result v0

    if-nez v0, :cond_20

    .line 505
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/d;->a(Z)V

    goto :goto_8

    .line 509
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/intersectionexplorer/d;)Lcom/google/googlenav/intersectionexplorer/k;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->d(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/h;

    iget-wide v2, v0, Lcom/google/googlenav/intersectionexplorer/h;->a:D

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/intersectionexplorer/k;->a(D)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 511
    if-nez v0, :cond_46

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    const/16 v1, 0x1ff

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 514
    :cond_46
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/i;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/intersectionexplorer/c;)V

    goto :goto_8
.end method
