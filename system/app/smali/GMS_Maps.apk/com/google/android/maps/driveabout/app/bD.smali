.class public Lcom/google/android/maps/driveabout/app/bD;
.super Lcom/google/android/maps/driveabout/vector/aE;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/by;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/bv;

.field private final b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private final c:Lcom/google/android/maps/driveabout/vector/aD;

.field private d:Lcom/google/android/maps/driveabout/vector/bM;

.field private final e:Lcom/google/android/maps/driveabout/vector/cC;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/Bitmap;

.field private i:Ljava/util/HashSet;

.field private final j:Ljava/util/List;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/bv;Lcom/google/android/maps/driveabout/vector/VectorMapView;Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bv;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bD;->c:Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->i:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->j:Ljava/util/List;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cC;

    invoke-direct {v1, p4, v0}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bE;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bE;-><init>(Lcom/google/android/maps/driveabout/app/bD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cH;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bD;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bD;->g:I

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010a

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->h:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/bv;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bD;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->postInvalidate()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->d:Lcom/google/android/maps/driveabout/vector/bM;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bM;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bM;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->d:Lcom/google/android/maps/driveabout/vector/bM;

    :cond_10
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bD;->k:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/bD;->b(Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->b(Z)V

    return-void
.end method

.method a(Lx/Y;[Lcom/google/android/maps/driveabout/app/bx;)Z
    .registers 15

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    if-eqz v0, :cond_27

    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_7b

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bx;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lx/Y;->a()Lt/C;

    move-result-object v3

    invoke-virtual {v3}, Lt/C;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    aget-object v6, p2, v1

    :goto_24
    if-nez v6, :cond_2b

    move v1, v9

    :cond_27
    :goto_27
    return v1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2b
    check-cast v0, Lcom/google/android/maps/driveabout/vector/aZ;

    new-instance v10, Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-direct {v10}, Lcom/google/android/maps/driveabout/vector/bZ;-><init>()V

    invoke-virtual {v0, v10}, Lcom/google/android/maps/driveabout/vector/aZ;->a(Lcom/google/android/maps/driveabout/vector/bZ;)Z

    :cond_35
    :goto_35
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/vector/bZ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/vector/bZ;->a()Lcom/google/android/maps/driveabout/vector/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->a()Lt/l;

    move-result-object v5

    instance-of v0, v5, Lt/M;

    if-eqz v0, :cond_35

    check-cast v5, Lt/M;

    invoke-virtual {v5}, Lt/M;->j()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/app/bx;->c(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/app/bx;->e()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bD;->h:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bD;->f:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bD;->g:I

    :goto_6b
    iget-object v11, p0, Lcom/google/android/maps/driveabout/app/bD;->c:Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bF;

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bF;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILt/M;Lcom/google/android/maps/driveabout/app/bx;Lx/Y;Lcom/google/android/maps/driveabout/app/bE;)V

    invoke-virtual {v11, v0}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aA;)V

    goto :goto_35

    :cond_77
    move v1, v9

    goto :goto_27

    :cond_79
    move-object v2, v8

    goto :goto_6b

    :cond_7b
    move-object v6, v8

    goto :goto_24
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bv;->e()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->d:Lcom/google/android/maps/driveabout/vector/bM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->j:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bD;->k:Z

    goto :goto_9
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->e:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cC;->e()V

    return-void
.end method

.method b(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 11

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bv;->d()[Lcom/google/android/maps/driveabout/app/bx;

    move-result-object v4

    move v1, v2

    :goto_d
    array-length v0, v4

    if-ge v1, v0, :cond_45

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    new-instance v7, Lx/Y;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/bx;->h()Lt/C;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lx/Y;-><init>(Lt/af;Lt/C;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_45
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/bD;->i:Ljava/util/HashSet;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_4d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_70

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/Y;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_62
    :goto_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    :cond_66
    invoke-virtual {p0, v0, v4}, Lcom/google/android/maps/driveabout/app/bD;->a(Lx/Y;[Lcom/google/android/maps/driveabout/app/bx;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_70
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()Lcom/google/android/maps/driveabout/vector/aA;

    move-result-object v0

    if-eqz v0, :cond_92

    instance-of v1, v0, Lcom/google/android/maps/driveabout/app/bF;

    if-eqz v1, :cond_92

    check-cast v0, Lcom/google/android/maps/driveabout/app/bF;

    move v1, v2

    :goto_7f
    array-length v3, v4

    if-ge v1, v3, :cond_aa

    aget-object v3, v4, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bF;->a()Lcom/google/android/maps/driveabout/app/bx;

    move-result-object v7

    if-ne v3, v7, :cond_a7

    const/4 v0, 0x1

    :goto_8b
    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()V

    :cond_92
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->c:Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bG;

    invoke-direct {v1, v5}, Lcom/google/android/maps/driveabout/app/bG;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aC;Z)V

    :cond_a2
    iput-object v6, p0, Lcom/google/android/maps/driveabout/app/bD;->i:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bD;->k:Z

    return-void

    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_aa
    move v0, v2

    goto :goto_8b
.end method

.method public s_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
