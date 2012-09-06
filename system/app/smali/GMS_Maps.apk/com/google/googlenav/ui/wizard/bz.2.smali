.class public Lcom/google/googlenav/ui/wizard/bZ;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# static fields
.field public static a:[I


# instance fields
.field protected b:I

.field protected c:I

.field protected i:I

.field protected j:Lad/j;

.field protected k:Lcom/google/googlenav/J;

.field private final l:Lad/z;

.field private m:Z

.field private final n:Lan/h;

.field private o:Lcom/google/googlenav/ui/view/F;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lan/h;Lcom/google/googlenav/J;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 113
    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    .line 116
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    .line 119
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:I

    .line 159
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->p:Z

    .line 165
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->q:Z

    .line 170
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bZ;->n:Lan/h;

    .line 171
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Lcom/google/googlenav/J;

    .line 172
    const-string v0, "locationMemory"

    invoke-static {v0}, Lad/z;->b(Ljava/lang/String;)Lad/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->l:Lad/z;

    .line 173
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->i()V

    .line 174
    return-void
.end method

.method public static H()I
    .registers 5

    .prologue
    .line 958
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->Q()I

    move-result v0

    .line 960
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 961
    const-string v2, "DIRECTIONS_MODE"

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v2

    .line 962
    if-eqz v2, :cond_1c

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 963
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    .line 968
    :goto_1b
    return v0

    .line 965
    :cond_1c
    const-string v2, "DIRECTIONS_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    goto :goto_1b
.end method

.method private I()Lcom/google/googlenav/ui/view/android/j;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/j;

    return-object v0
.end method

.method private J()V
    .registers 5

    .prologue
    .line 628
    new-instance v0, Lcom/google/googlenav/ui/view/F;

    const/16 v1, 0xf9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/F;-><init>(Ljava/lang/String;Lad/j;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    .line 631
    return-void
.end method

.method private K()V
    .registers 3

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(I)V

    .line 638
    return-void
.end method

.method private L()V
    .registers 3

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(I)V

    .line 645
    return-void
.end method

.method private M()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->B()Z

    move-result v1

    if-nez v1, :cond_16

    .line 759
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->K()V

    .line 760
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Lcom/google/googlenav/J;

    const/16 v2, 0x3c1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 768
    :goto_15
    return v0

    .line 762
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->D()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 763
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->L()V

    .line 764
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Lcom/google/googlenav/J;

    const/16 v2, 0x3c0

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_15

    .line 767
    :cond_2b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->g()V

    .line 768
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static N()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 857
    invoke-static {}, Lcom/google/googlenav/K;->A()Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    .line 860
    :goto_9
    invoke-static {}, Lcom/google/googlenav/K;->z()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 861
    add-int/lit8 v0, v0, 0x1

    .line 863
    :cond_11
    invoke-static {}, Lcom/google/googlenav/K;->B()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 864
    add-int/lit8 v0, v0, 0x1

    .line 866
    :cond_19
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 867
    add-int/lit8 v0, v0, 0x1

    .line 872
    :cond_21
    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    .line 873
    invoke-static {}, Lcom/google/googlenav/K;->A()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 874
    sget-object v0, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    aput v2, v0, v2

    move v2, v1

    .line 876
    :cond_30
    invoke-static {}, Lcom/google/googlenav/K;->z()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 877
    sget-object v3, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v1, v3, v2

    move v2, v0

    .line 879
    :cond_3d
    invoke-static {}, Lcom/google/googlenav/K;->B()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 880
    sget-object v1, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    move v2, v0

    .line 882
    :cond_4b
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 883
    sget-object v0, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    add-int/lit8 v1, v2, 0x1

    const/4 v1, 0x3

    aput v1, v0, v2

    .line 885
    :cond_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_9
.end method

.method private O()V
    .registers 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->n:Lan/h;

    invoke-interface {v0}, Lan/h;->h()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->n:Lan/h;

    invoke-interface {v0}, Lan/h;->e()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->B()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->D()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->q()Z

    move-result v0

    if-nez v0, :cond_47

    .line 910
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->n:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->n:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_48

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0}, Lan/s;->b()Ln/B;

    move-result-object v0

    invoke-static {v1, v0}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 914
    :goto_42
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v1, v0}, Lad/j;->a(Lad/y;)V

    .line 916
    :cond_47
    return-void

    .line 911
    :cond_48
    invoke-static {}, Lad/y;->a()Lad/y;

    move-result-object v0

    goto :goto_42
.end method

.method private P()V
    .registers 3

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 931
    :cond_6
    :goto_6
    return-void

    .line 925
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->h()Lcom/google/googlenav/E;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_6

    .line 927
    invoke-interface {v0}, Lcom/google/googlenav/E;->d()I

    move-result v1

    if-nez v1, :cond_6

    .line 928
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-static {v0}, Lad/y;->a(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lad/j;->b(Lad/y;)V

    goto :goto_6
.end method

.method private static Q()I
    .registers 2

    .prologue
    .line 947
    sget-object v0, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    if-nez v0, :cond_7

    .line 948
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->N()V

    .line 950
    :cond_7
    invoke-static {}, Lcom/google/googlenav/common/Config;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/google/googlenav/ui/wizard/bZ;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_e
.end method

.method private R()V
    .registers 2

    .prologue
    .line 972
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bZ;->b(I)V

    .line 973
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/A;)Z
    .registers 4
    .parameter

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1b

    .line 441
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/aq;

    if-eqz v0, :cond_1b

    .line 442
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aq;->show()V

    .line 443
    const/4 v0, 0x1

    .line 446
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static b(I)V
    .registers 6
    .parameter

    .prologue
    .line 982
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 983
    const-string v1, "DIRECTIONS_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 984
    return-void
.end method

.method private c(I)V
    .registers 4
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/j;->o()Lcom/google/googlenav/ui/view/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    if-ne v0, v1, :cond_1f

    .line 375
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/j;->l()V

    .line 386
    :goto_17
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/j;->a(I)V

    .line 387
    return-void

    .line 380
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_28

    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 383
    :cond_28
    new-instance v0, Lcom/google/googlenav/ui/view/android/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/j;-><init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/F;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_17
.end method


# virtual methods
.method protected A()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 823
    if-nez v0, :cond_c

    .line 824
    const/4 v0, 0x0

    .line 826
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method protected B()Z
    .registers 2

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->C()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected C()Lad/y;
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v0}, Lad/j;->aq()Lad/y;

    move-result-object v0

    return-object v0
.end method

.method protected D()Z
    .registers 2

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected E()Lad/y;
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v0}, Lad/j;->as()Lad/y;

    move-result-object v0

    return-object v0
.end method

.method protected F()V
    .registers 4

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v0}, Lad/j;->aq()Lad/y;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v2}, Lad/j;->as()Lad/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lad/j;->a(Lad/y;)V

    .line 940
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v1, v0}, Lad/j;->b(Lad/y;)V

    .line 943
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->c(I)V

    .line 944
    return-void
.end method

.method public G()V
    .registers 2

    .prologue
    .line 954
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->H()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    .line 955
    return-void
.end method

.method public R_()Z
    .registers 2

    .prologue
    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public S_()V
    .registers 1

    .prologue
    .line 1034
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 488
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 489
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->h()V

    .line 491
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    .line 493
    :goto_12
    return v0

    :cond_13
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    goto :goto_12
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 498
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    return v0
.end method

.method protected a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 665
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:I

    .line 666
    iput p1, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    .line 668
    packed-switch p1, :pswitch_data_4c

    .line 700
    :goto_a
    :pswitch_a
    return-void

    .line 670
    :pswitch_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    goto :goto_a

    .line 673
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 674
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    goto :goto_a

    .line 677
    :pswitch_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->q:Z

    .line 678
    const-string v0, "s"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->b(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 679
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 680
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    .line 681
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_a

    .line 684
    :pswitch_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->q:Z

    .line 685
    const-string v0, "e"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->b(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 686
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 687
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    .line 688
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_a

    .line 691
    :pswitch_40
    const-string v0, "m"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 693
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    goto :goto_a

    .line 668
    nop

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_b
        :pswitch_14
        :pswitch_1a
        :pswitch_2d
        :pswitch_40
        :pswitch_a
    .end packed-switch
.end method

.method public a(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->b(Lad/b;)I

    move-result v0

    .line 205
    invoke-virtual {p1}, Lad/b;->ap()Lad/j;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/j;I)V

    .line 206
    return-void
.end method

.method public a(Lad/b;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/b;)V

    .line 188
    if-eqz p2, :cond_11

    .line 189
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->K()V

    .line 190
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->b(I)V

    .line 195
    :goto_10
    return-void

    .line 192
    :cond_11
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->L()V

    .line 193
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->I()Lcom/google/googlenav/ui/view/android/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->b(I)V

    goto :goto_10
.end method

.method public a(Lad/j;)V
    .registers 3
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    .line 244
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->H()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    .line 245
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->O()V

    .line 246
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 247
    return-void
.end method

.method public a(Lad/j;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 256
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    .line 259
    :cond_8
    iput p2, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    .line 260
    invoke-static {p2}, Lcom/google/googlenav/ui/wizard/bZ;->b(I)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/j;)V

    .line 262
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 990
    .line 991
    if-eqz p3, :cond_e

    .line 992
    const/16 v1, 0xb

    invoke-static {p3, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 994
    if-nez v1, :cond_36

    .line 996
    :cond_e
    :goto_e
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->q:Z

    if-eqz v1, :cond_4a

    .line 997
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v1, p1}, Lad/j;->a(Lad/y;)V

    .line 998
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ss"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->o()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1003
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->J()V

    .line 1004
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/bZ;->c(I)V

    .line 1017
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 1018
    return-void

    .line 994
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1007
    :cond_4a
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-virtual {v1, p1}, Lad/j;->b(Lad/y;)V

    .line 1008
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "es"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->o()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1013
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->J()V

    .line 1014
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/wizard/bZ;->c(I)V

    goto :goto_32
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 299
    new-instance v1, Lad/j;

    invoke-direct {v1}, Lad/j;-><init>()V

    .line 300
    invoke-virtual {v1, p1}, Lad/j;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 303
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->h()Lcom/google/googlenav/E;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()I

    move-result v2

    if-nez v2, :cond_2a

    .line 305
    check-cast v0, Lcom/google/googlenav/ai;

    .line 306
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->w()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 307
    invoke-static {v0}, Lad/y;->a(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lad/j;->a(Lad/y;)V

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/j;I)V

    .line 315
    :goto_29
    return-void

    .line 314
    :cond_2a
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->b(Lad/j;)V

    goto :goto_29
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 831
    const/4 v0, 0x4

    const-string v1, "q"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 837
    const/4 v2, 0x4

    const-string v3, "q"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x1

    if-nez p2, :cond_1d

    move-object v0, v1

    :goto_e
    aput-object v0, v4, v5

    const/4 v0, 0x2

    if-nez p3, :cond_31

    :goto_13
    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 846
    return-void

    .line 837
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "u="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_ad="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 503
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/F;->a:Lad/j;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    .line 504
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    iget v2, v2, Lcom/google/googlenav/ui/view/F;->b:I

    iput v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    .line 505
    sparse-switch p1, :sswitch_data_66

    move v0, v1

    .line 562
    :goto_12
    return v0

    .line 507
    :sswitch_13
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    goto :goto_12

    .line 510
    :sswitch_17
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    goto :goto_12

    .line 513
    :sswitch_1c
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 514
    const-string v1, "Directions"

    invoke-static {v1}, LP/a;->b(Ljava/lang/String;)V

    .line 516
    :cond_27
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->p:Z

    .line 520
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(I)V

    .line 522
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 524
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->y()V

    goto :goto_12

    .line 527
    :sswitch_47
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 528
    const-string v1, "Navigation"

    invoke-static {v1}, LP/a;->b(Ljava/lang/String;)V

    .line 530
    :cond_52
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->z()V

    goto :goto_12

    .line 533
    :sswitch_56
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    goto :goto_12

    .line 536
    :sswitch_5b
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    goto :goto_12

    .line 539
    :sswitch_5f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->F()V

    goto :goto_12

    :sswitch_63
    move v0, v1

    .line 559
    goto :goto_12

    .line 505
    nop

    :sswitch_data_66
    .sparse-switch
        0xd4 -> :sswitch_13
        0xd5 -> :sswitch_17
        0xd6 -> :sswitch_1c
        0xde -> :sswitch_56
        0xdf -> :sswitch_5b
        0xe4 -> :sswitch_5f
        0xec -> :sswitch_47
        0xb56 -> :sswitch_63
    .end sparse-switch
.end method

.method protected b(Lad/b;)I
    .registers 3
    .parameter

    .prologue
    .line 210
    instance-of v0, p1, Lad/w;

    if-eqz v0, :cond_6

    .line 211
    const/4 v0, 0x1

    .line 219
    :goto_5
    return v0

    .line 212
    :cond_6
    instance-of v0, p1, Lad/x;

    if-eqz v0, :cond_c

    .line 213
    const/4 v0, 0x2

    goto :goto_5

    .line 214
    :cond_c
    instance-of v0, p1, Lad/i;

    if-eqz v0, :cond_12

    .line 215
    const/4 v0, 0x3

    goto :goto_5

    .line 217
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 849
    const/4 v0, 0x4

    const-string v1, "q"

    invoke-static {v0, v1, p1}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 393
    iput v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    .line 394
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->m:Z

    .line 397
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:I

    packed-switch v0, :pswitch_data_3c

    .line 408
    const/4 v0, -0x1

    .line 412
    :goto_10
    iget v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    if-eqz v2, :cond_34

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    if-eq v2, v3, :cond_34

    .line 413
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    .line 419
    :goto_1b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    if-nez v0, :cond_28

    .line 421
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lac/h;->e(Ljava/lang/String;)V

    .line 423
    :cond_28
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;)V

    .line 424
    return-void

    :pswitch_2e
    move v0, v1

    .line 400
    goto :goto_10

    .line 402
    :pswitch_30
    const/4 v0, 0x1

    .line 403
    goto :goto_10

    .line 405
    :pswitch_32
    const/4 v0, 0x2

    .line 406
    goto :goto_10

    .line 415
    :cond_34
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->J()V

    .line 416
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->c(I)V

    goto :goto_1b

    .line 397
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_30
        :pswitch_32
    .end packed-switch
.end method

.method public b(Lad/j;)V
    .registers 3
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->i()V

    .line 273
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    .line 274
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->O()V

    .line 279
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->f()Z

    move-result v0

    .line 280
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->P()V

    .line 281
    if-eqz v0, :cond_2e

    invoke-static {}, LaM/O;->bp()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 283
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->H()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->p:Z

    .line 285
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->y()V

    .line 289
    :goto_2d
    return-void

    .line 287
    :cond_2e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    goto :goto_2d
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 703
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    if-ne v0, v5, :cond_87

    move v4, v5

    .line 708
    :goto_7
    if-eqz v4, :cond_8a

    .line 709
    const/16 v0, 0xc6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_f
    invoke-static {}, Lcom/google/googlenav/ui/wizard/dp;->f()I

    move-result v1

    .line 716
    if-eqz v4, :cond_25

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->q()Z

    move-result v2

    if-nez v2, :cond_37

    :cond_25
    if-nez v4, :cond_39

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->C()Lad/y;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->C()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->q()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 718
    :cond_37
    xor-int/lit8 v1, v1, 0x4

    .line 724
    :cond_39
    xor-int/lit8 v7, v1, 0x8

    .line 728
    if-eqz v4, :cond_92

    const/16 v1, 0x58a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 732
    :goto_44
    if-eqz v4, :cond_9a

    const/4 v1, 0x4

    move v2, v1

    .line 734
    :goto_48
    if-eqz v4, :cond_9d

    const/16 v1, 0x5e5

    :goto_4c
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 739
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v8, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v8}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    invoke-virtual {v8, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/wizard/dO;->b(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/dO;->b(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/dO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/dO;->a(B)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/dO;->c(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/wizard/dO;->d(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 751
    return-void

    :cond_87
    move v4, v6

    .line 703
    goto/16 :goto_7

    .line 711
    :cond_8a
    const/16 v0, 0xc4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 728
    :cond_92
    const/16 v1, 0x116

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_44

    .line 732
    :cond_9a
    const/4 v1, 0x5

    move v2, v1

    goto :goto_48

    .line 734
    :cond_9d
    const/16 v1, 0x5e4

    goto :goto_4c
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 428
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 429
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->R()V

    .line 430
    return-void
.end method

.method public c(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lad/b;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->p:Z

    .line 234
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->y()V

    .line 235
    return-void
.end method

.method public d(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 338
    invoke-virtual {p1}, Lad/b;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 348
    invoke-virtual {p1}, Lad/b;->as()Lad/y;

    move-result-object v0

    if-nez v0, :cond_25

    .line 349
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->L()V

    .line 355
    :cond_10
    :goto_10
    return-void

    .line 340
    :pswitch_11
    invoke-virtual {p1}, Lad/b;->aD()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 341
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->K()V

    goto :goto_10

    .line 342
    :cond_1b
    invoke-virtual {p1}, Lad/b;->aE()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 343
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->L()V

    goto :goto_10

    .line 351
    :cond_25
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->K()V

    goto :goto_10

    .line 338
    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_11
    .end packed-switch
.end method

.method public e()Lad/b;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 577
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->f()Z

    move-result v0

    if-nez v0, :cond_f

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DirectionsWizard.getRequest() called too early!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_f
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    if-ne v0, v1, :cond_30

    .line 582
    new-instance v0, Lad/w;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lad/w;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    .line 590
    :goto_20
    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->p:Z

    if-nez v2, :cond_52

    :goto_24
    invoke-virtual {v0, v1}, Lad/b;->a(Z)V

    .line 591
    invoke-virtual {v0}, Lad/b;->aN()V

    .line 592
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/i;->a(Lad/b;Lcom/google/googlenav/ui/view/G;)V

    .line 593
    return-object v0

    .line 583
    :cond_30
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3d

    .line 584
    new-instance v0, Lad/x;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-direct {v0, v2}, Lad/x;-><init>(Lad/k;)V

    goto :goto_20

    .line 585
    :cond_3d
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4a

    .line 586
    new-instance v0, Lad/i;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-direct {v0, v2}, Lad/i;-><init>(Lad/k;)V

    goto :goto_20

    .line 588
    :cond_4a
    new-instance v0, Lad/s;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    invoke-direct {v0, v2}, Lad/s;-><init>(Lad/k;)V

    goto :goto_20

    .line 590
    :cond_52
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 3

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->C()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->C()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 615
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->l:Lad/z;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->C()Lad/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/z;->a(Lad/y;)Z

    .line 617
    :cond_19
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 618
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->l:Lad/z;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/z;->a(Lad/y;)Z

    .line 620
    :cond_32
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 451
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    packed-switch v0, :pswitch_data_5c

    .line 474
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    .line 475
    iput v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    .line 481
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    .line 484
    :goto_14
    return-void

    .line 453
    :pswitch_15
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->g()V

    .line 455
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->b()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 457
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v1

    invoke-static {v1, v0}, LaM/O;->a(Lcom/google/googlenav/J;Lcom/google/googlenav/ui/wizard/A;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lcom/google/googlenav/ui/wizard/A;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 462
    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 465
    :cond_51
    iput v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    goto :goto_14

    .line 470
    :pswitch_54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bZ;->a(I)V

    .line 471
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    goto :goto_14

    .line 451
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method protected i()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 651
    new-instance v0, Lad/j;

    invoke-direct {v0}, Lad/j;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Lad/j;

    .line 652
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    .line 653
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:I

    .line 654
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->N()V

    .line 655
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->G()V

    .line 656
    return-void
.end method

.method public p()Z
    .registers 3

    .prologue
    .line 434
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected y()V
    .registers 4

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->M()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 780
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aa()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 781
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    .line 788
    :cond_1f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->o()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 789
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    .line 791
    :cond_32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->k()Ljava/lang/String;

    move-result-object v0

    .line 792
    const-string v1, "d"

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->A()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 794
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->J()V

    .line 795
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->c:I

    .line 797
    :cond_4b
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    .line 798
    return-void
.end method

.method protected z()V
    .registers 6

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->M()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 806
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->k()Ljava/lang/String;

    move-result-object v0

    .line 807
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->A()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bZ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 809
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Lcom/google/googlenav/J;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->E()Lad/y;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:I

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->o:Lcom/google/googlenav/ui/view/F;

    invoke-static {v3}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/view/G;)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    const-string v4, "w"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/J;->a(Lad/y;I[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    .line 813
    :cond_2a
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:I

    .line 814
    return-void
.end method
