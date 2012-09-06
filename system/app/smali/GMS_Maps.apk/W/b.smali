.class Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lw/a;

.field private b:Z

.field private c:I

.field private d:Ln/am;

.field private e:Ljava/util/LinkedHashSet;

.field private f:Ljava/util/LinkedHashSet;

.field private g:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lw/a;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lw/b;->a:Lw/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lw/b;->c:I

    .line 492
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    .line 498
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    .line 504
    iput-boolean p2, p0, Lw/b;->b:Z

    .line 505
    return-void
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 537
    iget v0, p0, Lw/b;->c:I

    iget-object v1, p0, Lw/b;->a:Lw/a;

    invoke-static {v1}, Lw/a;->c(Lw/a;)I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 562
    :cond_a
    :goto_a
    return-void

    .line 542
    :cond_b
    if-nez p1, :cond_26

    .line 543
    iget-object v0, p0, Lw/b;->a:Lw/a;

    invoke-static {v0}, Lw/a;->e(Lw/a;)Lcom/google/android/maps/driveabout/vector/cY;

    move-result-object v0

    iget-object v1, p0, Lw/b;->d:Ln/am;

    iget-object v2, p0, Lw/b;->a:Lw/a;

    invoke-static {v2}, Lw/a;->d(Lw/a;)Ln/Q;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cY;->a(Ln/am;Ln/Q;)Ln/am;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_26

    .line 545
    iget-object v1, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_26
    iget-object v0, p0, Lw/b;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 551
    iget v0, p0, Lw/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw/b;->c:I

    .line 554
    iget-object v0, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    .line 555
    iget-object v1, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    iput-object v1, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    .line 556
    iput-object v0, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    .line 559
    iget-object v0, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 560
    iget-object v0, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lw/b;->g:Ljava/util/Iterator;

    goto :goto_a
.end method


# virtual methods
.method public a(Z)Lw/d;
    .registers 7
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lw/b;->d:Ln/am;

    if-eqz v0, :cond_7

    .line 526
    invoke-direct {p0, p1}, Lw/b;->b(Z)V

    .line 528
    :cond_7
    iget-object v0, p0, Lw/b;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 529
    const/4 v0, 0x0

    .line 532
    :goto_10
    return-object v0

    .line 531
    :cond_11
    iget-object v0, p0, Lw/b;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    iput-object v0, p0, Lw/b;->d:Ln/am;

    .line 532
    new-instance v1, Lw/d;

    iget-object v2, p0, Lw/b;->d:Ln/am;

    iget-object v0, p0, Lw/b;->a:Lw/a;

    invoke-static {v0}, Lw/a;->b(Lw/a;)J

    move-result-wide v3

    iget-boolean v0, p0, Lw/b;->b:Z

    if-nez v0, :cond_33

    iget v0, p0, Lw/b;->c:I

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    :goto_2e
    invoke-direct {v1, v2, v3, v4, v0}, Lw/d;-><init>(Ln/am;JZ)V

    move-object v0, v1

    goto :goto_10

    :cond_33
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public a()V
    .registers 3

    .prologue
    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lw/b;->c:I

    .line 516
    iget-object v0, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 517
    iget-object v0, p0, Lw/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lw/b;->d:Ln/am;

    .line 520
    iget-object v0, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lw/b;->a:Lw/a;

    invoke-static {v1}, Lw/a;->a(Lw/a;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 521
    iget-object v0, p0, Lw/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lw/b;->g:Ljava/util/Iterator;

    .line 522
    return-void
.end method
