.class public Lac/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/p;


# instance fields
.field final synthetic a:Lac/h;

.field private b:Ljava/util/Vector;

.field private c:Z

.field private final d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method private constructor <init>(Lac/h;)V
    .registers 4
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lac/o;->a:Lac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lac/o;->b:Ljava/util/Vector;

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/o;->c:Z

    .line 596
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ab;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Lac/h;Lac/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lac/o;-><init>(Lac/h;)V

    return-void
.end method

.method private constructor <init>(Lac/h;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lac/o;->a:Lac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lac/o;->b:Ljava/util/Vector;

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/o;->c:Z

    .line 600
    invoke-virtual {p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clone()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Lac/h;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lac/i;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1, p2}, Lac/o;-><init>(Lac/h;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/16 v2, 0x19

    .line 640
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 641
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 643
    :cond_10
    return-void
.end method

.method static synthetic a(Lac/o;)V
    .registers 1
    .parameter

    .prologue
    .line 576
    invoke-direct {p0}, Lac/o;->a()V

    return-void
.end method

.method static synthetic a(Lac/o;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lac/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lac/o;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lac/o;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 610
    return-void
.end method

.method static synthetic b(Lac/o;Z)Lac/m;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lac/o;->c(Z)Lac/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 632
    return-void
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lac/o;->c:Z

    return v0
.end method

.method private c(Z)Lac/m;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 725
    monitor-enter p0

    .line 726
    :try_start_2
    iget-object v1, p0, Lac/o;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 727
    monitor-exit p0

    .line 746
    :goto_b
    return-object v0

    .line 729
    :cond_c
    if-eqz p1, :cond_17

    iget-boolean v1, p0, Lac/o;->c:Z

    if-nez v1, :cond_17

    .line 730
    monitor-exit p0

    goto :goto_b

    .line 747
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_14

    throw v0

    .line 732
    :cond_17
    :try_start_17
    new-instance v0, Lac/m;

    iget-object v1, p0, Lac/o;->a:Lac/h;

    iget-object v2, p0, Lac/o;->b:Ljava/util/Vector;

    iget-object v3, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2, v3}, Lac/m;-><init>(Lac/h;Ljava/util/Vector;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 733
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lac/o;->b:Ljava/util/Vector;

    .line 734
    const/4 v1, 0x0

    iput-boolean v1, p0, Lac/o;->c:Z

    .line 746
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_14

    goto :goto_b
.end method

.method static synthetic c(Lac/o;)Z
    .registers 2
    .parameter

    .prologue
    .line 576
    invoke-direct {p0}, Lac/o;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I[BZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    .line 686
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lac/o;->a(I[BZZZ)V

    .line 687
    return-void
.end method

.method public final a(I[BZZZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 692
    new-instance v0, Lac/t;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lac/t;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lac/o;->c(Lac/g;)V

    .line 694
    return-void
.end method

.method public a(Lac/q;)V
    .registers 3
    .parameter

    .prologue
    .line 756
    invoke-static {}, Lac/h;->z()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lac/h;->a(Lac/q;)V

    .line 757
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 648
    return-void
.end method

.method public b(Lac/q;)V
    .registers 3
    .parameter

    .prologue
    .line 761
    invoke-static {}, Lac/h;->z()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lac/h;->b(Lac/q;)V

    .line 762
    return-void
.end method

.method public c(I)V
    .registers 4
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 637
    return-void
.end method

.method public c(Lac/g;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 667
    iget-object v0, p0, Lac/o;->a:Lac/h;

    iget-boolean v0, v0, Lac/h;->g:Z

    if-eqz v0, :cond_e

    .line 668
    iget-object v0, p0, Lac/o;->a:Lac/h;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lac/h;->a(IZLjava/lang/String;)V

    .line 671
    :cond_e
    monitor-enter p0

    .line 672
    :try_start_f
    invoke-interface {p1}, Lac/g;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/o;->c:Z

    .line 675
    :cond_18
    iget-object v0, p0, Lac/o;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 676
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_34

    .line 677
    invoke-interface {p1}, Lac/g;->g()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lac/o;->a:Lac/h;

    invoke-virtual {v0}, Lac/h;->f()Z

    move-result v0

    if-nez v0, :cond_33

    .line 678
    iget-object v0, p0, Lac/o;->a:Lac/h;

    iget-object v0, v0, Lac/h;->e:Lac/l;

    invoke-static {v0}, Lac/l;->a(Lac/l;)V

    .line 680
    :cond_33
    return-void

    .line 676
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 771
    invoke-static {}, Lac/h;->z()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->n()Z

    move-result v0

    return v0
.end method

.method public p()J
    .registers 3

    .prologue
    .line 766
    invoke-static {}, Lac/h;->z()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()J
    .registers 3

    .prologue
    .line 776
    invoke-static {}, Lac/h;->z()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lac/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
