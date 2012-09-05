.class public Lcom/google/android/maps/driveabout/vector/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aa;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/al;

.field private final b:Lcom/google/android/maps/driveabout/vector/ao;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private final e:Lcom/google/android/maps/driveabout/vector/di;

.field private final f:Lcom/google/android/maps/driveabout/vector/cp;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cx;)V
    .registers 8

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aj;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cx;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ao;->a:Lcom/google/android/maps/driveabout/vector/ao;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/ao;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/al;->a:Lcom/google/android/maps/driveabout/vector/al;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ah;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->k:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ah;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_12
    if-ge v6, v8, :cond_31

    aget-object v2, v7, v6

    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    array-length v1, v7

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    array-length v1, v7

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ao;->a:Lcom/google/android/maps/driveabout/vector/ao;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/ao;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/al;->a:Lcom/google/android/maps/driveabout/vector/al;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ah;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->l:Z

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/vector/al;Lcom/google/android/maps/driveabout/vector/ao;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/ao;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ah;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->l:Z

    return-void
.end method

.method public static a(Lt/A;Lt/l;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/ah;
    .registers 16

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v6, v0

    move-object v7, v1

    :goto_11
    invoke-virtual {p0}, Lt/A;->b()I

    move-result v0

    if-ge v6, v0, :cond_c8

    invoke-virtual {p0, v6}, Lt/A;->a(I)Lt/B;

    move-result-object v1

    invoke-virtual {v1}, Lt/B;->a()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {v1}, Lt/B;->j()Lt/Z;

    move-result-object v4

    invoke-virtual {v1}, Lt/B;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p5, v0, v4, p2}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;Ljava/lang/String;Lt/Z;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v5, p5, Lcom/google/android/maps/driveabout/vector/bG;->d:Lcom/google/android/maps/driveabout/vector/cu;

    instance-of v0, p1, Lt/X;

    if-eqz v0, :cond_52

    iget-object v5, p5, Lcom/google/android/maps/driveabout/vector/bG;->a:Lcom/google/android/maps/driveabout/vector/cu;

    :cond_37
    :goto_37
    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    invoke-virtual {v1}, Lt/B;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v1

    invoke-static {v4, p5, v1}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/bG;F)I

    move-result v3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    move-object v1, v7

    :goto_4d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v1

    goto :goto_11

    :cond_52
    instance-of v0, p1, Lt/D;

    if-eqz v0, :cond_37

    iget-object v5, p5, Lcom/google/android/maps/driveabout/vector/bG;->h:Lcom/google/android/maps/driveabout/vector/cu;

    goto :goto_37

    :cond_59
    invoke-virtual {v1}, Lt/B;->b()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v0

    invoke-virtual {v1}, Lt/B;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lx/ag;->a(Ljava/lang/String;Lx/af;)Lx/ad;

    move-result-object v0

    invoke-virtual {v0}, Lx/ad;->b()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {v0}, Lx/ad;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Lt/B;->h()F

    move-result v0

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v1

    invoke-virtual {v1}, Lz/l;->x()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_9e

    iget v1, p5, Lcom/google/android/maps/driveabout/vector/bG;->m:F

    mul-float/2addr v0, v1

    :goto_8f
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v1

    mul-float/2addr v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v1, v2, v0, p3}, Lcom/google/android/maps/driveabout/vector/aj;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cx;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_4d

    :cond_9e
    iget v1, p5, Lcom/google/android/maps/driveabout/vector/bG;->n:F

    mul-float/2addr v0, v1

    goto :goto_8f

    :cond_a2
    move-object v0, v8

    :goto_a3
    return-object v0

    :cond_a4
    invoke-virtual {v1}, Lt/B;->e()Z

    move-result v0

    if-eqz v0, :cond_b8

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {v1}, Lt/B;->k()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(F)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_4d

    :cond_b8
    invoke-virtual {v1}, Lt/B;->f()Z

    move-result v0

    if-eqz v0, :cond_e6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_4d

    :cond_c8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {p0}, Lt/A;->c()Lt/b;

    move-result-object v1

    invoke-virtual {v1}, Lt/b;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/al;->a(I)Lcom/google/android/maps/driveabout/vector/al;

    move-result-object v1

    invoke-virtual {p0}, Lt/A;->c()Lt/b;

    move-result-object v2

    invoke-virtual {v2}, Lt/b;->b()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/ao;->a(I)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-direct {v0, v9, v1, v2}, Lcom/google/android/maps/driveabout/vector/ah;-><init>(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/vector/al;Lcom/google/android/maps/driveabout/vector/ao;)V

    goto :goto_a3

    :cond_e6
    move-object v1, v7

    goto/16 :goto_4d
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/I;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mTextureArray should be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    instance-of v3, v0, Lcom/google/android/maps/driveabout/vector/ak;

    if-nez v3, :cond_26

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/an;->a(Lcom/google/android/maps/driveabout/vector/I;)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    goto :goto_42

    :cond_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_58
    return v0

    :cond_59
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_5f
    const/4 v0, 0x1

    goto :goto_58
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;Ljava/lang/String;Lt/Z;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 8

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    if-nez p0, :cond_d

    :cond_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p3}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p3}, Lt/Z;->k()Lt/ad;

    move-result-object v0

    invoke-virtual {v0}, Lt/ad;->a()I

    move-result v0

    :goto_1b
    invoke-virtual {p3}, Lt/Z;->b()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p3}, Lt/Z;->k()Lt/ad;

    move-result-object v2

    invoke-virtual {v2}, Lt/ad;->c()I

    move-result v2

    :goto_29
    if-lez v2, :cond_3c

    const/high16 v2, -0x100

    and-int/2addr v0, v2

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_c

    :cond_32
    invoke-virtual {p3}, Lt/Z;->e()I

    move-result v0

    goto :goto_1b

    :cond_37
    invoke-virtual {p3}, Lt/Z;->f()I

    move-result v2

    goto :goto_29

    :cond_3c
    move v0, v1

    goto :goto_c
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->h:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    sub-float v1, v0, v1

    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    move v2, v0

    :goto_2f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_11e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v5

    move v5, v1

    :goto_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/an;->a()F

    move-result v1

    add-float/2addr v1, v5

    move v5, v1

    goto :goto_47

    :cond_62
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/al;->a:Lcom/google/android/maps/driveabout/vector/al;

    if-ne v7, v8, :cond_8c

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->g:F

    sub-float/2addr v1, v5

    const/high16 v5, 0x4000

    div-float/2addr v1, v5

    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v1

    :goto_74
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    instance-of v1, v0, Lcom/google/android/maps/driveabout/vector/ak;

    if-eqz v1, :cond_96

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->a()F

    move-result v0

    add-float v1, v5, v0

    move v5, v1

    goto :goto_74

    :cond_8c
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/al;->c:Lcom/google/android/maps/driveabout/vector/al;

    if-ne v7, v8, :cond_6f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->g:F

    sub-float/2addr v1, v5

    goto :goto_6f

    :cond_96
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->a()F

    move-result v7

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->b()F

    move-result v9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/ao;

    sget-object v10, Lcom/google/android/maps/driveabout/vector/ao;->a:Lcom/google/android/maps/driveabout/vector/ao;

    if-ne v1, v10, :cond_107

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v1

    sub-float v1, v6, v1

    const/high16 v10, 0x4000

    div-float/2addr v1, v10

    sub-float v1, v3, v1

    :goto_af
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->c()F

    move-result v10

    add-float/2addr v1, v10

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    const/4 v11, 0x0

    sub-float v12, v1, v9

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    add-float v11, v5, v7

    const/4 v12, 0x0

    sub-float v9, v1, v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    add-float/2addr v7, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v1

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v9, v4, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->a()F

    move-result v0

    add-float v1, v5, v0

    move v5, v1

    move v4, v7

    goto/16 :goto_74

    :cond_107
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/ao;

    sget-object v10, Lcom/google/android/maps/driveabout/vector/ao;->c:Lcom/google/android/maps/driveabout/vector/ao;

    if-ne v1, v10, :cond_122

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v1

    sub-float v1, v6, v1

    sub-float v1, v3, v1

    goto :goto_af

    :cond_116
    sub-float v1, v3, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto/16 :goto_2f

    :cond_11e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->l:Z

    return-void

    :cond_122
    move v1, v3

    goto :goto_af
.end method

.method private d()V
    .registers 11

    const/4 v2, 0x0

    const/high16 v9, 0x4000

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ah;->g:F

    move v1, v2

    move v3, v4

    :goto_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v6, v4

    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->a()F

    move-result v8

    add-float/2addr v6, v8

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v5, v0

    goto :goto_1e

    :cond_39
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->g:F

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->g:F

    add-float/2addr v3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ah;->j:F

    sget-object v2, Lcom/google/android/maps/driveabout/vector/ai;->a:[I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/ao;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/ao;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_166

    :cond_6f
    :goto_6f
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->h:F

    return-void

    :pswitch_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->c()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    goto :goto_7c

    :cond_95
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_9a

    :cond_b8
    cmpl-float v0, v4, v1

    if-lez v0, :cond_6f

    sub-float v0, v4, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->j:F

    goto :goto_6f

    :pswitch_c1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v4

    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->c()F

    move-result v0

    add-float/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_c6

    :cond_e4
    cmpl-float v0, v4, v2

    if-lez v0, :cond_ec

    sub-float v0, v4, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    :cond_ec
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ah;->j:F

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->d()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->j:F

    goto :goto_f0

    :pswitch_109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    move v5, v4

    :goto_10f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v7

    div-float/2addr v7, v9

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->c()F

    move-result v0

    add-float/2addr v0, v7

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v2, v0

    goto :goto_10f

    :cond_12f
    cmpl-float v0, v2, v5

    if-lez v0, :cond_137

    sub-float v0, v2, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->i:F

    :cond_137
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_13c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->e()F

    move-result v5

    div-float/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/an;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_13c

    :cond_15b
    cmpl-float v0, v4, v1

    if-lez v0, :cond_6f

    sub-float v0, v4, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->j:F

    goto/16 :goto_6f

    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_78
        :pswitch_c1
        :pswitch_109
    .end packed-switch
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->g:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->k:Z

    if-nez v0, :cond_f

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->l:Z

    if-eqz v0, :cond_16

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x6

    mul-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    invoke-interface {v2, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/al;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    if-eq v0, p1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->l:Z

    :cond_7
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Lcom/google/android/maps/driveabout/vector/al;

    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Z
    .registers 8

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/I;)Z

    move-result v0

    if-nez v0, :cond_51

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/aT;->a(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mTextureArray should be empty on initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/an;

    instance-of v4, v0, Lcom/google/android/maps/driveabout/vector/ak;

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/an;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_51
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->k:Z

    move v0, v1

    goto :goto_10
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/an;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/an;->f()V

    goto :goto_31

    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_21

    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->h:F

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public c()Z
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
