.class Lj/d;
.super Lt/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lj/a;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lj/a;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lj/d;->a:Lj/a;

    .line 781
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lt/f;-><init>(I)V

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/d;->d:Ljava/util/List;

    .line 783
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lj/d;->c:Ljava/lang/Long;

    .line 784
    return-void
.end method

.method static synthetic a(Lj/d;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lj/d;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lj/d;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 807
    invoke-virtual {p0}, Lj/d;->j()Lt/g;

    move-result-object v1

    .line 808
    :goto_d
    invoke-virtual {v1}, Lt/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 809
    invoke-virtual {v1}, Lt/g;->a()Lt/h;

    move-result-object v2

    .line 810
    iget-object v3, v2, Lt/h;->a:Ljava/lang/Object;

    sget-object v4, Lj/a;->a:Ln/am;

    if-ne v3, v4, :cond_31

    .line 816
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 817
    invoke-virtual {p0, v0}, Lj/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 813
    :cond_31
    iget-object v2, v2, Lt/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 819
    :cond_37
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    .line 901
    iget-object v0, p0, Lj/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/b;

    .line 902
    iget-object v2, v0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    invoke-interface {v2, p1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 903
    iget-object v2, p0, Lj/d;->a:Lj/a;

    iget v3, v0, Lj/b;->b:I

    invoke-static {v2, v3}, Lj/a;->a(Lj/a;I)I

    .line 904
    iget-object v2, p0, Lj/d;->a:Lj/a;

    iget v0, v0, Lj/b;->c:I

    invoke-static {v2, v0}, Lj/a;->b(Lj/a;I)I

    goto :goto_6

    .line 906
    :cond_26
    iget-object v0, p0, Lj/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 907
    return-void
.end method

.method public a(Lj/b;)V
    .registers 3
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lj/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 767
    check-cast p1, Ln/am;

    check-cast p2, Lj/b;

    invoke-virtual {p0, p1, p2}, Lj/d;->a(Ln/am;Lj/b;)V

    return-void
.end method

.method protected a(Ln/am;Lj/b;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-super {p0, p1, p2}, Lt/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lj/d;->a:Lj/a;

    iget v1, p2, Lj/b;->b:I

    invoke-static {v0, v1}, Lj/a;->a(Lj/a;I)I

    .line 795
    iget-object v0, p0, Lj/d;->a:Lj/a;

    iget v1, p2, Lj/b;->c:I

    invoke-static {v0, v1}, Lj/a;->b(Lj/a;I)I

    .line 796
    iget-object v0, p2, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    if-eqz v0, :cond_24

    .line 799
    iget-object v0, p2, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    iget-object v1, p0, Lj/d;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 801
    :cond_24
    return-void
.end method

.method public a(Ln/am;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 878
    invoke-virtual {p0, p1}, Lj/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/b;

    .line 879
    if-nez v0, :cond_a

    .line 886
    :cond_9
    :goto_9
    return v2

    .line 882
    :cond_a
    sget-object v1, Lj/a;->a:Ln/am;

    invoke-virtual {p0, v1}, Lj/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/b;

    .line 883
    if-eqz v1, :cond_9

    .line 886
    iget-wide v3, v0, Lj/b;->d:J

    iget-wide v0, v1, Lj/b;->d:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_1f

    move v0, v2

    :goto_1d
    move v2, v0

    goto :goto_9

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b()V
    .registers 8

    .prologue
    .line 827
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lj/d;->f()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    invoke-virtual {p0}, Lj/d;->j()Lt/g;

    move-result-object v2

    .line 829
    :goto_d
    invoke-virtual {v2}, Lt/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 830
    invoke-virtual {v2}, Lt/g;->a()Lt/h;

    move-result-object v3

    .line 831
    iget-object v0, v3, Lt/h;->a:Ljava/lang/Object;

    sget-object v4, Lj/a;->a:Ln/am;

    if-ne v0, v4, :cond_31

    .line 848
    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 849
    invoke-virtual {p0, v0}, Lj/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 834
    :cond_31
    iget-object v0, v3, Lt/h;->b:Ljava/lang/Object;

    check-cast v0, Lj/b;

    .line 835
    iget-object v4, v0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    .line 836
    if-eqz v4, :cond_3f

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/aV;->a()Z

    move-result v5

    if-nez v5, :cond_45

    .line 837
    :cond_3f
    iget-object v0, v3, Lt/h;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 842
    :cond_45
    iget-object v3, p0, Lj/d;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/maps/driveabout/vector/aV;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 843
    iget-object v3, p0, Lj/d;->a:Lj/a;

    iget v4, v0, Lj/b;->b:I

    invoke-static {v3, v4}, Lj/a;->a(Lj/a;I)I

    .line 844
    const/4 v3, 0x0

    iput v3, v0, Lj/b;->b:I

    goto :goto_d

    .line 851
    :cond_5d
    return-void
.end method

.method public c()Lt/h;
    .registers 3

    .prologue
    .line 855
    invoke-virtual {p0}, Lj/d;->j()Lt/g;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lt/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lt/g;->a()Lt/h;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public d()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lj/d;->a:Lj/a;

    invoke-static {v0}, Lj/a;->a(Lj/a;)Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    .line 865
    sget-object v0, Lj/a;->a:Ln/am;

    invoke-virtual {p0, v0}, Lj/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/b;

    .line 866
    if-nez v0, :cond_22

    .line 867
    sget-object v6, Lj/a;->a:Ln/am;

    new-instance v0, Lj/b;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lj/b;-><init>(Lcom/google/android/maps/driveabout/vector/aV;IIJ)V

    invoke-virtual {p0, v6, v0}, Lj/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 871
    :goto_21
    return-void

    .line 869
    :cond_22
    iput-wide v4, v0, Lj/b;->d:J

    goto :goto_21
.end method
