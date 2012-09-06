.class public Lcom/google/android/maps/driveabout/vector/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/maps/driveabout/vector/bY;


# instance fields
.field private A:Ljava/util/Set;

.field private B:Ljava/util/List;

.field private C:Ljava/util/Iterator;

.field private D:Ljava/util/Comparator;

.field private E:I

.field private F:Ljava/util/Map;

.field private final b:Lcom/google/android/maps/driveabout/vector/cR;

.field private volatile c:Lcom/google/android/maps/driveabout/vector/bZ;

.field private final d:Lcom/google/android/maps/driveabout/vector/cW;

.field private e:Ln/f;

.field private f:Lcom/google/android/maps/driveabout/vector/k;

.field private final g:Lcom/google/android/maps/driveabout/vector/aU;

.field private h:F

.field private i:Ln/aM;

.field private j:Lcom/google/android/maps/driveabout/vector/ct;

.field private k:Ljava/util/Iterator;

.field private l:Ljava/util/ArrayList;

.field private m:I

.field private n:Ljava/util/ArrayList;

.field private o:I

.field private p:Ljava/util/Map;

.field private q:I

.field private r:F

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private volatile w:Z

.field private x:Z

.field private y:Z

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bY;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bY;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/bY;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bZ;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->p:Ljava/util/Map;

    .line 239
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    .line 252
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cd;-><init>(Lcom/google/android/maps/driveabout/vector/cc;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->D:Ljava/util/Comparator;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->E:I

    .line 264
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->F:Ljava/util/Map;

    .line 267
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cR;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cR;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    .line 268
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 269
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    .line 270
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cW;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cW;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Lcom/google/android/maps/driveabout/vector/cW;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    .line 272
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    .line 274
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->o:I

    .line 275
    return-void
.end method

.method static final a(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 5
    .parameter

    .prologue
    const v3, 0x48435000

    .line 294
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v0

    .line 295
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v0

    div-float v0, v1, v0

    .line 297
    cmpl-float v1, v0, v3

    if-lez v1, :cond_22

    .line 298
    sub-float/2addr v0, v3

    const v1, 0x38d1b717

    mul-float/2addr v0, v1

    const/high16 v1, 0x4230

    add-float/2addr v0, v1

    .line 303
    :goto_20
    float-to-int v0, v0

    return v0

    .line 301
    :cond_22
    const v1, 0x3966afcd

    mul-float/2addr v0, v1

    goto :goto_20
.end method

.method static a(Ln/E;Ln/ag;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 757
    if-nez p0, :cond_4

    .line 784
    :goto_3
    return v1

    .line 765
    :cond_4
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Ln/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Ln/ag;->h()Ln/ak;

    move-result-object v0

    invoke-virtual {v0}, Ln/ak;->f()I

    move-result v0

    :goto_14
    move v2, v1

    .line 767
    :goto_15
    invoke-virtual {p0}, Ln/E;->b()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 768
    invoke-virtual {p0, v1}, Ln/E;->a(I)Ln/F;

    move-result-object v4

    .line 769
    invoke-virtual {v4}, Ln/F;->c()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 771
    invoke-virtual {v4}, Ln/F;->d()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v4}, Ln/F;->j()Ln/ag;

    move-result-object v3

    invoke-virtual {v3}, Ln/ag;->e()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 772
    invoke-virtual {v4}, Ln/F;->j()Ln/ag;

    move-result-object v3

    invoke-virtual {v3}, Ln/ag;->h()Ln/ak;

    move-result-object v3

    invoke-virtual {v3}, Ln/ak;->f()I

    move-result v3

    .line 774
    :goto_41
    invoke-virtual {v4}, Ln/F;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 776
    :cond_4b
    invoke-virtual {v4}, Ln/F;->b()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 777
    add-int/lit8 v2, v2, 0x8

    .line 779
    :cond_53
    invoke-virtual {v4}, Ln/F;->e()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 780
    int-to-float v2, v2

    invoke-virtual {v4}, Ln/F;->k()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 767
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 765
    :cond_63
    const/16 v0, 0xa

    goto :goto_14

    :cond_66
    move v1, v2

    .line 784
    goto :goto_3

    :cond_68
    move v3, v0

    goto :goto_41
.end method

.method static a(Ln/l;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 706
    invoke-interface {p0}, Ln/l;->h()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    :pswitch_8
    move v1, v0

    .line 747
    :cond_9
    :goto_9
    return v1

    .line 710
    :pswitch_a
    check-cast p0, Ln/ac;

    move v1, v0

    .line 711
    :goto_d
    invoke-virtual {p0}, Ln/ac;->d()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 712
    invoke-virtual {p0, v0}, Ln/ac;->c(I)Ln/E;

    move-result-object v2

    invoke-virtual {p0}, Ln/ac;->e()Ln/ag;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/E;Ln/ag;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 719
    :pswitch_26
    check-cast p0, Ln/R;

    .line 720
    invoke-virtual {p0}, Ln/R;->p()Ln/E;

    move-result-object v0

    invoke-virtual {p0}, Ln/R;->e()Ln/ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/E;Ln/ag;)I

    move-result v0

    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v1

    invoke-virtual {p0}, Ln/R;->e()Ln/ag;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/E;Ln/ag;)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_9

    .line 728
    :pswitch_42
    check-cast p0, Ln/H;

    move v1, v0

    .line 729
    :goto_45
    invoke-virtual {p0}, Ln/H;->c()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 730
    invoke-virtual {p0, v0}, Ln/H;->a(I)Ln/E;

    move-result-object v2

    invoke-virtual {p0}, Ln/H;->e()Ln/ag;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/E;Ln/ag;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :pswitch_5e
    move v1, v0

    .line 739
    goto :goto_9

    .line 706
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_a
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_8
        :pswitch_26
        :pswitch_42
        :pswitch_8
        :pswitch_8
        :pswitch_42
    .end packed-switch
.end method

.method private a(Ln/H;Lcom/google/android/maps/driveabout/vector/bY;Z)Lcom/google/android/maps/driveabout/vector/ad;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1061
    invoke-virtual {p1}, Ln/H;->c()I

    move-result v1

    if-nez v1, :cond_8

    .line 1087
    :cond_7
    :goto_7
    return-object v0

    .line 1064
    :cond_8
    invoke-virtual {p1}, Ln/H;->b()Ln/U;

    move-result-object v1

    .line 1065
    invoke-virtual {v1}, Ln/U;->a()Ln/aa;

    move-result-object v2

    .line 1067
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    invoke-virtual {v3, v2}, Ln/aM;->b(Ln/ab;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1070
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/U;)Ln/U;

    move-result-object v3

    .line 1071
    if-eqz v3, :cond_7

    .line 1072
    invoke-virtual {p1}, Ln/H;->e()Ln/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v1, v1, Lcom/google/android/maps/driveabout/vector/bZ;->i:F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/bZ;->j:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v4, v4, Lcom/google/android/maps/driveabout/vector/bZ;->k:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v5

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/ag;FIIF)F

    move-result v5

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln/H;->a(I)Ln/E;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bZ;->h:Lcom/google/android/maps/driveabout/vector/cT;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/bZ;->l:F

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bZ;->q:Z

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/H;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;ZFLcom/google/android/maps/driveabout/vector/cT;FLcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;

    move-result-object v0

    goto :goto_7
.end method

.method private a(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;Z)Lcom/google/android/maps/driveabout/vector/ad;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 952
    invoke-virtual {p1}, Ln/R;->o()[Ln/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ln/a;->b()Ln/Q;

    move-result-object v1

    .line 953
    invoke-direct {p0, v1, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/bY;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 956
    invoke-virtual {p1}, Ln/R;->k()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->h:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_36

    invoke-virtual {p1}, Ln/R;->n()F

    move-result v1

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-lez v1, :cond_37

    invoke-virtual {p1}, Ln/R;->n()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->h:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_37

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/R;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 973
    :cond_36
    :goto_36
    return-object v0

    .line 964
    :cond_37
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Lcom/google/android/maps/driveabout/vector/cW;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/aG;->a(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;ZLcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;)Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v0

    goto :goto_36
.end method

.method private a(Ln/U;)Ln/U;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->e:Ln/f;

    invoke-virtual {v0, p1, v5}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    .line 1110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1111
    if-nez v6, :cond_14

    .line 1112
    const/4 v0, 0x0

    .line 1125
    :goto_13
    return-object v0

    .line 1113
    :cond_14
    if-ne v6, v1, :cond_1d

    .line 1114
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    goto :goto_13

    .line 1116
    :cond_1d
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 1117
    invoke-virtual {v0}, Ln/U;->d()F

    move-result v2

    move v4, v1

    move-object v3, v0

    .line 1118
    :goto_29
    if-ge v4, v6, :cond_48

    .line 1119
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    invoke-virtual {v0}, Ln/U;->d()F

    move-result v1

    .line 1120
    cmpl-float v0, v1, v2

    if-lez v0, :cond_4a

    .line 1122
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 1118
    :goto_42
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_29

    :cond_48
    move-object v0, v3

    .line 1125
    goto :goto_13

    :cond_4a
    move v0, v2

    move-object v1, v3

    goto :goto_42
.end method

.method static a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 577
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 597
    :cond_9
    return-void

    .line 580
    :cond_a
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 581
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/bY;

    new-instance v2, Ln/i;

    invoke-direct {v2, v1}, Ln/i;-><init>(I)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bY;

    .line 583
    new-instance v3, Ln/i;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Ln/i;-><init>(I)V

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 586
    :cond_37
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bY;

    .line 587
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/h;

    .line 588
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_59
    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/vector/bY;

    .line 589
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 592
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/i;

    .line 594
    invoke-virtual {v2, v1}, Ln/i;->a(Ln/h;)V

    goto :goto_59
.end method

.method private a(Ln/H;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1047
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/H;Lcom/google/android/maps/driveabout/vector/bY;Z)Lcom/google/android/maps/driveabout/vector/ad;

    move-result-object v0

    .line 1048
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->c(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p4, :cond_10

    .line 1049
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ad;->b(Z)V

    .line 1051
    :cond_10
    return-void
.end method

.method private a(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 937
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;Z)Lcom/google/android/maps/driveabout/vector/ad;

    move-result-object v0

    .line 938
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->c(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p4, :cond_10

    .line 939
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ad;->b(Z)V

    .line 941
    :cond_10
    return-void
.end method

.method private a(Ln/ac;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 982
    invoke-virtual/range {p1 .. p1}, Ln/ac;->b()Ln/U;

    move-result-object v1

    .line 983
    invoke-virtual {v1}, Ln/U;->a()Ln/aa;

    move-result-object v2

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    invoke-virtual {v3, v2}, Ln/aM;->b(Ln/ab;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 986
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/U;)Ln/U;

    move-result-object v15

    .line 987
    if-eqz v15, :cond_af

    invoke-virtual {v15}, Ln/U;->d()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4220

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_af

    .line 990
    const/4 v2, 0x0

    :goto_37
    invoke-virtual/range {p1 .. p1}, Ln/ac;->d()I

    move-result v1

    if-ge v2, v1, :cond_af

    .line 992
    const v1, 0x3f333333

    invoke-virtual {v15, v1}, Ln/U;->a(F)Ln/Q;

    move-result-object v4

    .line 993
    const v1, 0x3e99999a

    invoke-virtual {v15, v1}, Ln/U;->a(F)Ln/Q;

    move-result-object v5

    .line 994
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/cb;->d:Lcom/google/android/maps/driveabout/vector/cW;

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/aG;->a(Ln/ac;ILcom/google/android/maps/driveabout/vector/bY;Ln/Q;Ln/Q;ZLcom/google/android/maps/driveabout/vector/bZ;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;)Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v1

    .line 998
    if-nez v1, :cond_9c

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/cb;->e()F

    move-result v9

    .line 1000
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-boolean v1, v1, Lcom/google/android/maps/driveabout/vector/bZ;->o:Z

    if-eqz v1, :cond_ad

    const/16 v7, 0xa

    .line 1002
    :goto_71
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ln/ac;->c(I)Ln/E;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v10, v1, Lcom/google/android/maps/driveabout/vector/bZ;->l:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-object v11, v1, Lcom/google/android/maps/driveabout/vector/bZ;->a:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-boolean v14, v1, Lcom/google/android/maps/driveabout/vector/bZ;->q:Z

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v6, v15

    move/from16 v8, p3

    invoke-static/range {v3 .. v14}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/ac;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;IZFFLcom/google/android/maps/driveabout/vector/cT;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;

    move-result-object v1

    .line 1008
    :cond_9c
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->c(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v3

    if-eqz v3, :cond_aa

    if-eqz p4, :cond_aa

    .line 1009
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/ad;->b(Z)V

    .line 990
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1000
    :cond_ad
    const/4 v7, 0x0

    goto :goto_71

    .line 1014
    :cond_af
    return-void
.end method

.method private a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bY;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 930
    :cond_6
    :goto_6
    return-void

    .line 923
    :cond_7
    instance-of v0, p1, Ln/ac;

    if-eqz v0, :cond_11

    .line 924
    check-cast p1, Ln/ac;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/ac;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V

    goto :goto_6

    .line 925
    :cond_11
    instance-of v0, p1, Ln/H;

    if-eqz v0, :cond_1b

    .line 926
    check-cast p1, Ln/H;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/H;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V

    goto :goto_6

    .line 927
    :cond_1b
    instance-of v0, p1, Ln/R;

    if-eqz v0, :cond_6

    .line 928
    check-cast p1, Ln/R;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V

    goto :goto_6
.end method

.method private a(J)Z
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 801
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot run labeler loop until all previous labels have either been copied into new label table or destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    invoke-direct {p0, v0, v7, v4, v4}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V

    .line 809
    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->k:Ljava/util/Iterator;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->q:I

    if-ge v0, v1, :cond_38

    .line 810
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->z:Z

    if-eqz v0, :cond_13

    .line 811
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->z:Z

    move v2, v4

    .line 889
    :cond_37
    :goto_37
    return v2

    :cond_38
    move v1, v2

    .line 826
    :goto_39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ct;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_45
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->q:I

    if-lt v0, v3, :cond_6d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ct;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ct;->b()Lcom/google/android/maps/driveabout/vector/ca;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v3

    if-gt v0, v3, :cond_37

    .line 828
    :cond_6d
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->z:Z

    if-eqz v0, :cond_75

    .line 829
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->z:Z

    move v2, v4

    .line 830
    goto :goto_37

    .line 832
    :cond_75
    if-lez v1, :cond_81

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v5, p1

    if-ltz v0, :cond_81

    move v2, v4

    .line 833
    goto :goto_37

    .line 838
    :cond_81
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    if-nez v0, :cond_c3

    .line 844
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ct;->a()Lcom/google/android/maps/driveabout/vector/ca;

    move-result-object v0

    .line 846
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    :goto_90
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ct;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ct;->b()Lcom/google/android/maps/driveabout/vector/ca;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v5

    if-ne v3, v5, :cond_b4

    .line 850
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ct;->a()Lcom/google/android/maps/driveabout/vector/ca;

    move-result-object v3

    .line 851
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 855
    :cond_b4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->D:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 856
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    .line 860
    :cond_c3
    :goto_c3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    .line 862
    add-int/lit8 v3, v1, 0x1

    if-lez v1, :cond_da

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_da

    move v2, v4

    .line 863
    goto/16 :goto_37

    .line 865
    :cond_da
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->z:Z

    if-eqz v0, :cond_e3

    .line 866
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->z:Z

    move v2, v4

    .line 867
    goto/16 :goto_37

    .line 870
    :cond_e3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ca;

    .line 871
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->q:I

    if-lt v1, v5, :cond_110

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ca;->b()I

    move-result v5

    if-lt v1, v5, :cond_110

    move v0, v3

    .line 886
    :goto_106
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 887
    iput-object v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    move v1, v0

    goto/16 :goto_39

    .line 880
    :cond_110
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ca;->a()Ln/l;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ca;->c()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V

    .line 882
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->q:I

    if-le v0, v1, :cond_126

    .line 883
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->c(I)V

    :cond_126
    move v1, v3

    .line 885
    goto :goto_c3

    :cond_128
    move v0, v1

    goto :goto_106
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->h:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->t()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_e

    move v0, v1

    .line 408
    :goto_d
    return v0

    .line 394
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->s()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bY;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    .line 395
    goto :goto_d

    .line 401
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->x()Ln/l;

    move-result-object v0

    instance-of v0, v0, Ln/R;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->x()Ln/l;

    move-result-object v0

    check-cast v0, Ln/R;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/R;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v2

    .line 403
    goto :goto_d

    .line 405
    :cond_30
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->u()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_45

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->h:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->u()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_45

    move v0, v1

    .line 406
    goto :goto_d

    :cond_45
    move v0, v2

    .line 408
    goto :goto_d
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/ad;Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ad;->x()Ln/l;

    move-result-object v0

    invoke-interface {v0}, Ln/l;->a()Ln/m;

    move-result-object v0

    .line 1254
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->x()Ln/l;

    move-result-object v1

    invoke-interface {v1}, Ln/l;->a()Ln/m;

    move-result-object v1

    .line 1255
    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    instance-of v2, v0, Ln/n;

    if-eqz v2, :cond_2c

    instance-of v2, v1, Ln/n;

    if-eqz v2, :cond_2c

    sget-object v2, Ln/m;->a:Ln/m;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bY;)Z
    .registers 3
    .parameter

    .prologue
    .line 1372
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Ln/Q;Lcom/google/android/maps/driveabout/vector/bY;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    invoke-virtual {v0, p1}, Ln/aM;->a(Ln/Q;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cb;->b(Ln/Q;Lcom/google/android/maps/driveabout/vector/bY;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Ln/R;)Z
    .registers 4
    .parameter

    .prologue
    .line 384
    invoke-virtual {p1}, Ln/R;->b()Ln/am;

    move-result-object v0

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->t:I

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->u:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bY;)Ln/h;
    .registers 4
    .parameter

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1418
    const/4 v0, 0x0

    .line 1427
    :cond_9
    :goto_9
    return-object v0

    .line 1420
    :cond_a
    if-nez p1, :cond_e

    .line 1421
    sget-object p1, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/bY;

    .line 1423
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/h;

    .line 1424
    if-nez v0, :cond_9

    .line 1425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->F:Ljava/util/Map;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/h;

    goto :goto_9
.end method

.method private b(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cb;->g()V

    .line 1176
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1177
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_3a

    .line 1178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 1179
    if-eqz v0, :cond_30

    .line 1180
    if-eqz p1, :cond_27

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/aM;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->g(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_27
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->d(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1182
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->e(Lcom/google/android/maps/driveabout/vector/ad;)V

    .line 1177
    :cond_30
    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 1184
    :cond_34
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_30

    .line 1188
    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->o:I

    .line 1190
    return-void
.end method

.method private b(J)Z
    .registers 8
    .parameter

    .prologue
    .line 900
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(J)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 911
    :goto_4
    return v0

    .line 901
    :catch_5
    move-exception v0

    .line 902
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 903
    :cond_12
    throw v0

    .line 905
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 906
    const-string v2, "#:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->E:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->E:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " T:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " E:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " numL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 910
    const-string v0, "Labeler.runLabeler"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 4
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bZ;->r:Z

    if-eqz v0, :cond_11

    .line 557
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->r()Ln/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/aM;->b(Ln/ab;)Z

    move-result v0

    .line 559
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/aM;)Z

    move-result v0

    goto :goto_10
.end method

.method private static b(Lcom/google/android/maps/driveabout/vector/ad;Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1270
    instance-of v0, p0, Lcom/google/android/maps/driveabout/vector/aG;

    if-eqz v0, :cond_1a

    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/aG;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aG;->A()Z

    move-result v0

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aG;->A()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private b(Ln/Q;Lcom/google/android/maps/driveabout/vector/bY;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/cb;->b(Lcom/google/android/maps/driveabout/vector/bY;)Ln/h;

    move-result-object v0

    .line 1392
    if-eqz v0, :cond_b

    .line 1393
    invoke-interface {v0, p1}, Ln/h;->a(Ln/Q;)Z

    move-result v0

    .line 1395
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private c(I)V
    .registers 5
    .parameter

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 1296
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->f(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1297
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    .line 1299
    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 1300
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->p:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    if-ne p1, v0, :cond_2f

    .line 1303
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cb;->f()V

    .line 1305
    :cond_2f
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1136
    if-eqz p1, :cond_66

    .line 1137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 1148
    if-eqz v0, :cond_61

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->b(Lcom/google/android/maps/driveabout/vector/ad;Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1149
    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/cb;->c(I)V

    .line 1155
    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {p1, v0, v3}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 1156
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->g(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->d(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_46
    move v0, v2

    .line 1157
    :goto_47
    if-eqz v0, :cond_6b

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/maps/driveabout/vector/ad;->b(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1158
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->g(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->d(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_5f
    move v0, v2

    goto :goto_47

    .line 1151
    :cond_61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 1167
    :cond_66
    :goto_66
    return v1

    :cond_67
    move v0, v1

    .line 1156
    goto :goto_47

    :cond_69
    move v0, v1

    .line 1158
    goto :goto_47

    .line 1160
    :cond_6b
    if-eqz v0, :cond_73

    .line 1161
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_66

    .line 1163
    :cond_73
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->e(Lcom/google/android/maps/driveabout/vector/ad;)V

    move v1, v2

    .line 1164
    goto :goto_66
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1200
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v6

    .line 1201
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->y()Z

    move-result v0

    if-eqz v0, :cond_41

    move v1, v2

    .line 1202
    :goto_d
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->q()Ln/ab;

    move-result-object v7

    .line 1203
    invoke-virtual {v7}, Ln/ab;->a()Ln/aa;

    move-result-object v8

    .line 1204
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v3

    .line 1205
    :goto_1c
    if-ge v5, v9, :cond_7b

    .line 1206
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 1207
    if-eqz v0, :cond_3d

    .line 1215
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/ad;Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1216
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->t()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->t()F

    move-result v10

    cmpl-float v4, v4, v10

    if-lez v4, :cond_43

    .line 1217
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/vector/cb;->c(I)V

    .line 1205
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1c

    :cond_41
    move v1, v3

    .line 1201
    goto :goto_d

    .line 1219
    :cond_43
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->t()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->t()F

    move-result v10

    cmpg-float v4, v4, v10

    if-gez v4, :cond_50

    .line 1246
    :cond_4f
    :goto_4f
    return v2

    .line 1226
    :cond_50
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->q()Ln/ab;

    move-result-object v4

    .line 1227
    invoke-virtual {v4}, Ln/ab;->a()Ln/aa;

    move-result-object v10

    .line 1230
    invoke-virtual {v10, v8}, Ln/aa;->a(Ln/ab;)Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-virtual {v4, v7}, Ln/ab;->a(Ln/ab;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1232
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->y()Z

    move-result v4

    if-eqz v4, :cond_79

    move v4, v2

    .line 1233
    :goto_6b
    if-gt v1, v4, :cond_75

    if-ne v1, v4, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v0

    if-le v6, v0, :cond_4f

    .line 1239
    :cond_75
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/vector/cb;->c(I)V

    goto :goto_3d

    :cond_79
    move v4, v3

    .line 1232
    goto :goto_6b

    :cond_7b
    move v2, v3

    .line 1246
    goto :goto_4f
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/ad;)V
    .registers 5
    .parameter

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->f(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1280
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    .line 1281
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    if-ltz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 1283
    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    .line 1286
    :cond_2c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    .line 1327
    const v1, 0x7fffffff

    .line 1328
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    .line 1329
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 1330
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 1331
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v3

    if-ge v3, v2, :cond_2d

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->f(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1333
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->v()I

    move-result v2

    .line 1334
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    .line 1329
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1337
    :cond_31
    return-void
.end method

.method private f(Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1312
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->p()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->r:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    .line 1319
    :cond_b
    :goto_b
    return v0

    .line 1315
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->s()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v1

    .line 1316
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bY;->b()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1319
    :cond_18
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private g()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1344
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->w:Z

    if-eqz v0, :cond_2f

    .line 1345
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1346
    :goto_c
    if-ge v1, v3, :cond_21

    .line 1347
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 1348
    if-eqz v0, :cond_1d

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 1346
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 1350
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1351
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    .line 1352
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->w:Z

    .line 1353
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->x:Z

    .line 1354
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->y:Z

    .line 1357
    :cond_2f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    .line 1358
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    .line 1359
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    .line 1360
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->o:I

    .line 1361
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->o:I

    .line 1362
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->m:I

    .line 1363
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->s:I

    .line 1364
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1365
    return-void
.end method

.method private g(Lcom/google/android/maps/driveabout/vector/ad;)Z
    .registers 4
    .parameter

    .prologue
    .line 1404
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->s()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->b(Lcom/google/android/maps/driveabout/vector/bY;)Ln/h;

    move-result-object v0

    .line 1405
    if-eqz v0, :cond_13

    .line 1406
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ad;->q()Ln/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/h;->a(Ln/ab;)Z

    move-result v0

    .line 1408
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aV;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/ad;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/vector/aG;->a(Lcom/google/android/maps/driveabout/vector/aV;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 310
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 311
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 312
    if-eqz v0, :cond_21

    .line 313
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 310
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 316
    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cR;->a()V

    .line 317
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cW;->e()V

    .line 318
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 413
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 414
    if-eqz v0, :cond_a

    .line 415
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->a(I)V

    goto :goto_a

    .line 419
    :cond_1c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bZ;)V
    .registers 3
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    if-eq p1, v0, :cond_9

    .line 330
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 331
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cb;->b()V

    .line 333
    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Ln/aM;ILjava/util/Iterator;Lcom/google/android/maps/driveabout/vector/ct;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;ILcom/google/android/maps/driveabout/vector/dg;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move/from16 v0, p9

    int-to-long v3, v0

    add-long/2addr v3, v1

    .line 464
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    .line 465
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/cb;->k:Ljava/util/Iterator;

    .line 466
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/cb;->j:Lcom/google/android/maps/driveabout/vector/ct;

    .line 467
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cb;->i:Ln/aM;

    .line 468
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cb;->t:I

    .line 469
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->A:Ljava/util/Set;

    .line 473
    new-instance v1, Ln/f;

    invoke-virtual {p2}, Ln/aM;->c()Ln/ab;

    move-result-object v2

    invoke-direct {v1, v2}, Ln/f;-><init>(Ln/ab;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->e:Ln/f;

    .line 476
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->F:Ljava/util/Map;

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 478
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v1

    .line 479
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->q:I

    if-eq v1, v2, :cond_39

    .line 480
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->q:I

    .line 481
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/vector/cR;->a(I)V

    .line 483
    :cond_39
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v2

    mul-float/2addr v1, v2

    .line 484
    const/high16 v2, 0x4348

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->r:F

    .line 488
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cb;->g()V

    .line 491
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->C:Ljava/util/Iterator;

    .line 497
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 498
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->h:F

    .line 502
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->t:I

    invoke-static {}, Lt/m;->d()Lcom/google/android/maps/driveabout/vector/ei;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v7

    move-object/from16 v0, p10

    invoke-virtual {v2, v7, v0}, Lcom/google/android/maps/driveabout/vector/ei;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/eh;->b()I

    move-result v2

    if-ge v1, v2, :cond_b1

    const/4 v1, 0x1

    :goto_82
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->u:Z

    .line 504
    const/4 v1, 0x0

    move v2, v1

    :goto_86
    if-ge v2, v5, :cond_e2

    .line 505
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ad;

    .line 506
    if-eqz v1, :cond_ad

    .line 515
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->x()Ln/l;

    move-result-object v7

    invoke-interface {v7}, Ln/l;->a()Ln/m;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a8

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v7

    if-nez v7, :cond_b3

    .line 517
    :cond_a8
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 504
    :cond_ad
    :goto_ad
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_86

    .line 502
    :cond_b1
    const/4 v1, 0x0

    goto :goto_82

    .line 523
    :cond_b3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v7

    if-eqz v7, :cond_d9

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->b(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v7

    if-eqz v7, :cond_d9

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->g(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v7

    if-nez v7, :cond_d9

    .line 526
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->d(Lcom/google/android/maps/driveabout/vector/ad;)Z

    move-result v7

    if-nez v7, :cond_d3

    .line 527
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->e(Lcom/google/android/maps/driveabout/vector/ad;)V

    goto :goto_ad

    .line 529
    :cond_d3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_ad

    .line 532
    :cond_d9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_ad

    .line 539
    :cond_e2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 540
    const/4 v1, 0x0

    move v2, v1

    :goto_e8
    if-ge v2, v5, :cond_104

    .line 543
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ad;

    .line 544
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->x()Ln/l;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->s()Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->y()Z

    move-result v1

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v1, v9}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;ZZ)V

    .line 540
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e8

    .line 548
    :cond_104
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 549
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->o:I

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->x:Z

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->y:Z

    .line 552
    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cb;->b(J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->v:Z

    .line 553
    return-void
.end method

.method public a(Ln/aM;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cb;->g()V

    .line 357
    invoke-virtual {p1}, Ln/aM;->a()Ln/aL;

    move-result-object v3

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 359
    :goto_10
    if-ge v1, v4, :cond_3d

    .line 360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 361
    if-eqz v0, :cond_33

    .line 362
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->r()Ln/aa;

    move-result-object v5

    invoke-virtual {v3, v5}, Ln/aL;->b(Ln/ab;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 363
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cb;->e(Lcom/google/android/maps/driveabout/vector/ad;)V

    .line 359
    :cond_33
    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 365
    :cond_37
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_33

    .line 369
    :cond_3d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->o:I

    .line 374
    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->x:Z

    .line 375
    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/vector/cb;->y:Z

    .line 376
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->v:Z

    .line 377
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 343
    if-eqz p1, :cond_d

    .line 344
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cR;->a()V

    .line 345
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cW;->e()V

    .line 349
    :goto_c
    return-void

    .line 347
    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cR;->b()V

    goto :goto_c
.end method

.method public b()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->w:Z

    .line 325
    return-void
.end method

.method public b(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 608
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->x:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->y:Z

    if-eqz v2, :cond_18

    .line 609
    :cond_f
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->y:Z

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/cb;->b(Z)V

    .line 610
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->x:Z

    .line 611
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->y:Z

    .line 613
    :cond_18
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->v:Z

    .line 614
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->v:Z

    return v0
.end method

.method public d()Lcom/google/android/maps/driveabout/vector/ce;
    .registers 3

    .prologue
    .line 791
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ce;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ce;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method e()F
    .registers 4

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bZ;->c:I

    int-to-float v0, v0

    .line 1023
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    const/high16 v2, 0x4168

    sub-float/2addr v1, v2

    .line 1024
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1d

    .line 1026
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Lcom/google/android/maps/driveabout/vector/bZ;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bZ;->b:I

    int-to-float v0, v0

    .line 1034
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->u:Z

    if-nez v2, :cond_1d

    .line 1035
    add-float/2addr v0, v1

    .line 1038
    :cond_1d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1039
    return v0
.end method
