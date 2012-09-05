.class Lcom/google/android/maps/driveabout/vector/S;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/di;

.field private final b:Lcom/google/android/maps/driveabout/vector/bu;

.field private final c:Lcom/google/android/maps/driveabout/vector/cp;

.field private final d:Lcom/google/android/maps/driveabout/vector/di;

.field private final e:Lcom/google/android/maps/driveabout/vector/cp;

.field private final f:I


# direct methods
.method public constructor <init>(Lt/V;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v3, v0

    mul-int/lit8 v0, v5, 0x3

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_b

    :cond_27
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/cr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/maps/driveabout/vector/S;->a(Lt/V;Lt/P;Lcom/google/android/maps/driveabout/vector/T;)V

    goto :goto_40

    :cond_50
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lt/d;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_54

    :cond_66
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/T;->f()Z

    move-result v0

    if-eqz v0, :cond_90

    if-lez v2, :cond_90

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/cr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/maps/driveabout/vector/S;->a(Lt/V;Lt/d;Lcom/google/android/maps/driveabout/vector/T;)V

    goto :goto_80

    :cond_90
    iput-object v6, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    iput-object v6, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    :cond_94
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/T;->h()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:I

    return-void
.end method

.method private a(Lt/V;Lt/P;Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 15

    const/high16 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->d()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v3

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->e()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    new-instance v4, Lt/L;

    invoke-direct {v4, v2, v3}, Lt/L;-><init>(II)V

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->c()Z

    move-result v2

    if-eqz v2, :cond_69

    move v6, v0

    :goto_2f
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->c()Z

    move-result v2

    if-eqz v2, :cond_6b

    move v7, v1

    :goto_36
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->g()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_77

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->g()F

    move-result v0

    invoke-virtual {p2, v0}, Lt/P;->c(F)Lt/P;

    move-result-object v1

    :goto_47
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->c()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->b()F

    move-result v2

    :goto_55
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->c()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->a()F

    move-result v3

    :goto_5f
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FFLt/L;IIILcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    return-void

    :cond_69
    move v6, v1

    goto :goto_2f

    :cond_6b
    move v7, v0

    goto :goto_36

    :cond_6d
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->a()F

    move-result v2

    goto :goto_55

    :cond_72
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->b()F

    move-result v3

    goto :goto_5f

    :cond_77
    move-object v1, p2

    goto :goto_47
.end method

.method private a(Lt/V;Lt/d;Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 15

    const/4 v6, 0x0

    invoke-virtual {p2}, Lt/d;->e()Lt/Z;

    move-result-object v0

    invoke-virtual {v0}, Lt/Z;->d()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lt/d;->b()Lt/ai;

    move-result-object v0

    invoke-virtual {v0}, Lt/ai;->a()I

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->d()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->e()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v2

    new-instance v2, Lt/L;

    invoke-direct {v2, v1, v3}, Lt/L;-><init>(II)V

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v9

    invoke-virtual {p2}, Lt/d;->d()[B

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/Q;->c()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lt/L;

    aget-object v3, v1, v6

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/Q;->c()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lt/L;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/Q;->c()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lt/L;

    const/4 v5, 0x2

    aget-object v5, v1, v5

    move v1, v6

    move v7, v6

    :goto_66
    if-ge v1, v8, :cond_7f

    invoke-virtual/range {v0 .. v5}, Lt/ai;->a(ILt/L;Lt/L;Lt/L;Lt/L;)V

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v10, v3, v9}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v10, v4, v9}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v10, v5, v9}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_7f
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/T;->c()Z

    move-result v0

    if-eqz v0, :cond_8e

    const/high16 v0, 0x1

    :goto_87
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, v0, v6, v7}, Lcom/google/android/maps/driveabout/vector/cp;->a(III)V

    goto/16 :goto_b

    :cond_8e
    move v0, v6

    goto :goto_87
.end method


# virtual methods
.method public a()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    if-eqz v2, :cond_2a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v1

    :cond_2a
    add-int/2addr v0, v1

    return v0

    :cond_2c
    move v0, v1

    goto :goto_1f
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 9

    const/4 v4, 0x4

    const/high16 v3, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/S;->f:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v2

    invoke-interface {v0, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_44
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method public b()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    :goto_21
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    if-eqz v2, :cond_2c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v1

    :cond_2c
    add-int/2addr v0, v1

    return v0

    :cond_2e
    move v0, v1

    goto :goto_21
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->b:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method
