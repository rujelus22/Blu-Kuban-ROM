.class public Lv/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lw/b;

.field private final b:Lz/m;


# direct methods
.method public constructor <init>(Lw/b;Lz/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/e;->a:Lw/b;

    iput-object p2, p0, Lv/e;->b:Lz/m;

    return-void
.end method

.method private static a(Lt/P;I)D
    .registers 4

    invoke-virtual {p0, p1}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lt/L;->a(Lt/L;Lt/L;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lw/e;I)D
    .registers 4

    invoke-virtual {p0, p1}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lw/e;->b(I)Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lt/L;->a(Lt/L;Lt/L;)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(Lu/x;DDDDD)Ljava/util/List;
    .registers 35

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    sub-double v4, p1, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    add-double v14, p1, p5

    move-wide/from16 v0, p7

    neg-double v5, v0

    invoke-virtual/range {p0 .. p0}, Lu/x;->n()Lt/P;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lt/P;->b()I

    move-result v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lu/x;->a(D)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lu/x;->a(D)I

    move-result v2

    add-int/lit8 v3, v17, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lu/x;->b(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lu/x;->b(D)I

    move-result v19

    new-instance v20, Lt/L;

    invoke-direct/range {v20 .. v20}, Lt/L;-><init>()V

    new-instance v21, Lt/L;

    invoke-direct/range {v21 .. v21}, Lt/L;-><init>()V

    :goto_44
    move/from16 v0, v18

    if-gt v4, v0, :cond_b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lu/x;->b(I)D

    move-result-wide v9

    cmpl-double v2, v9, v12

    if-ltz v2, :cond_a9

    cmpg-double v2, v9, v14

    if-gtz v2, :cond_a9

    const/4 v2, 0x1

    move v7, v2

    :goto_58
    sub-double v2, v9, v5

    cmpg-double v2, v2, p7

    if-gez v2, :cond_ac

    const/4 v2, 0x1

    :goto_5f
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lt/P;->b(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v22, v0

    cmpg-double v3, v22, p9

    if-gez v3, :cond_ae

    const/4 v3, 0x1

    :goto_6d
    if-eqz v7, :cond_c9

    if-nez v2, :cond_c9

    if-nez v3, :cond_c9

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lt/P;->a(ILt/L;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lu/x;->b(D)I

    move-result v2

    sub-int v8, v2, v19

    new-instance v2, Lv/f;

    const/high16 v3, 0x3f00

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lv/e;->a(Lt/P;I)D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lv/f;-><init>(Lt/L;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v9

    :goto_a5
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v2

    goto :goto_44

    :cond_a9
    const/4 v2, 0x0

    move v7, v2

    goto :goto_58

    :cond_ac
    const/4 v2, 0x0

    goto :goto_5f

    :cond_ae
    const/4 v3, 0x0

    goto :goto_6d

    :cond_b0
    add-int/lit8 v2, v17, -0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_c8

    new-instance v2, Lv/f;

    invoke-virtual/range {v16 .. v16}, Lt/P;->c()Lt/L;

    move-result-object v3

    add-int/lit8 v4, v17, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lv/f;-><init>(Lt/L;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c8
    return-object v11

    :cond_c9
    move-wide v2, v5

    goto :goto_a5
.end method

.method static a(ZLt/L;Ljava/util/Iterator;DIIDI)Ljava/util/List;
    .registers 27

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    mul-double v14, p7, p7

    new-instance v16, Lv/g;

    invoke-direct/range {v16 .. v16}, Lv/g;-><init>()V

    :cond_c
    :goto_c
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw/e;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1}, Lv/e;->a(Lt/L;Lw/e;Lv/g;)V

    const/16 v3, 0x168

    move/from16 v0, p5

    if-eq v0, v3, :cond_33

    move-object/from16 v0, v16

    iget v3, v0, Lv/g;->b:I

    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v6, v3, v2}, Lv/e;->a(DLw/e;II)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_33
    move-object/from16 v0, v16

    iget v3, v0, Lv/g;->c:F

    float-to-double v3, v3

    cmpg-double v3, v3, v14

    if-gez v3, :cond_c

    new-instance v3, Lv/d;

    move-object/from16 v0, v16

    iget-object v4, v0, Lv/g;->a:Lt/L;

    invoke-static {v4}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v5

    move-object/from16 v0, v16

    iget v7, v0, Lv/g;->b:I

    move-object/from16 v0, v16

    iget v4, v0, Lv/g;->c:F

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move/from16 v4, p0

    move/from16 v8, p9

    move-object/from16 v9, p1

    move/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lv/d;-><init>(ZLt/L;Lw/e;IILt/L;DI)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_62
    return-object v13
.end method

.method static a(Lt/L;Lu/x;II)Lu/B;
    .registers 16

    const/4 v4, 0x0

    int-to-double v0, p3

    invoke-virtual {p1, p0, v0, v1, v4}, Lu/x;->a(Lt/L;DZ)[Lu/B;

    move-result-object v6

    const/4 v3, 0x0

    const-wide v0, 0x7fefffffffffffffL

    array-length v7, v6

    move v5, v4

    :goto_e
    if-ge v5, v7, :cond_23

    aget-object v2, v6, v5

    invoke-virtual {v2}, Lu/B;->d()D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_83

    invoke-virtual {v2}, Lu/B;->d()D

    move-result-wide v0

    :goto_1e
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_e

    :cond_23
    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Lu/B;->d()D

    move-result-wide v0

    const-wide/high16 v7, 0x4000

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv/e;->a(Ljava/lang/String;)V

    array-length v7, v6

    move v0, v4

    move-object v2, v3

    move v3, v4

    :goto_63
    if-ge v3, v7, :cond_80

    aget-object v1, v6, v3

    invoke-virtual {v1}, Lu/B;->e()I

    move-result v4

    if-lt v4, v0, :cond_81

    invoke-virtual {v1}, Lu/B;->d()D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v4, v8, v10

    if-gez v4, :cond_81

    invoke-virtual {v1}, Lu/B;->e()I

    move-result v0

    :goto_7a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_63

    :cond_7f
    move-object v2, v3

    :cond_80
    return-object v2

    :cond_81
    move-object v1, v2

    goto :goto_7a

    :cond_83
    move-object v2, v3

    goto :goto_1e
.end method

.method private static a(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method static a(Ljava/util/List;)V
    .registers 7

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/d;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v0, "More than 2 endpoints. Dropping all."

    invoke-static {v0}, Lv/e;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_7

    :cond_2d
    iget-object v3, v0, Lv/d;->c:Lw/e;

    invoke-virtual {v3}, Lw/e;->e()Lt/L;

    move-result-object v3

    iget-object v4, v1, Lv/d;->c:Lw/e;

    invoke-virtual {v4, v5}, Lw/e;->b(I)Lt/L;

    move-result-object v4

    invoke-virtual {v3, v4}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_7

    :cond_43
    iget-object v0, v0, Lv/d;->c:Lw/e;

    invoke-virtual {v0, v5}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    iget-object v1, v1, Lv/d;->c:Lw/e;

    invoke-virtual {v1}, Lw/e;->e()Lt/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_7

    :cond_5c
    const-string v0, "Endpoints don\'t line up. Dropping all."

    invoke-static {v0}, Lv/e;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_7
.end method

.method static a(Ljava/util/List;D)V
    .registers 8

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-boolean v2, v0, Lv/d;->a:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lv/d;->b:Lt/L;

    iget-object v3, v0, Lv/d;->c:Lw/e;

    invoke-virtual {v3}, Lw/e;->e()Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_22
    iget-boolean v2, v0, Lv/d;->a:Z

    if-nez v2, :cond_39

    iget-object v2, v0, Lv/d;->b:Lt/L;

    iget-object v3, v0, Lv/d;->c:Lw/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lw/e;->b(I)Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_35
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    :cond_39
    iget-wide v2, v0, Lv/d;->g:D

    cmpl-double v0, v2, p1

    if-lez v0, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    :cond_43
    return-void
.end method

.method static a(Lt/L;Lw/e;Lv/g;)V
    .registers 10

    new-instance v1, Lt/L;

    invoke-direct {v1}, Lt/L;-><init>()V

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    const v0, 0x7f7fffff

    iput v0, p2, Lv/g;->c:F

    invoke-virtual {p1}, Lw/e;->f()I

    move-result v4

    const/4 v0, 0x0

    :goto_19
    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_3b

    invoke-virtual {p1, v0, v1}, Lw/e;->a(ILt/L;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v2}, Lw/e;->a(ILt/L;)V

    invoke-static {v1, v2, p0, v3}, Lt/L;->b(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v5

    iget v6, p2, Lv/g;->c:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_38

    iput v5, p2, Lv/g;->c:F

    iput v0, p2, Lv/g;->b:I

    iget-object v5, p2, Lv/g;->a:Lt/L;

    invoke-virtual {v5, v3}, Lt/L;->b(Lt/L;)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3b
    return-void
.end method

.method static a(DLw/e;II)Z
    .registers 9

    invoke-static {p2, p3}, Lv/e;->a(Lw/e;I)D

    move-result-wide v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1a

    const-wide v2, 0x4076800000000000L

    sub-double v0, v2, v0

    :cond_1a
    int-to-double v2, p4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public a(Ls/b;)Ljava/util/Collection;
    .registers 15

    invoke-virtual {p1}, Ls/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Ls/b;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->e()D

    move-result-wide v2

    iget-object v0, p0, Lv/e;->b:Lz/m;

    invoke-virtual {v0}, Lz/m;->f()I

    move-result v0

    int-to-double v4, v0

    mul-double v7, v2, v4

    iget-object v0, p0, Lv/e;->a:Lw/b;

    invoke-virtual {v0, v1, v7, v8}, Lw/b;->a(Lt/L;D)Ljava/util/Iterator;

    move-result-object v2

    const/16 v5, 0x168

    const/4 v0, 0x0

    invoke-virtual {p1}, Ls/b;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-virtual {p1}, Ls/b;->getBearing()F

    move-result v0

    iget-object v3, p0, Lv/e;->b:Lz/m;

    invoke-virtual {v3}, Lz/m;->d()I

    move-result v5

    move v3, v0

    :goto_39
    const/4 v0, 0x1

    float-to-double v3, v3

    const/4 v6, 0x0

    const/4 v9, -0x1

    invoke-static/range {v0 .. v9}, Lv/e;->a(ZLt/L;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v10

    const-wide v2, 0x7fefffffffffffffL

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-wide v5, v0, Lv/d;->g:D

    cmpg-double v5, v5, v2

    if-gez v5, :cond_4a

    iget-wide v2, v0, Lv/d;->g:D

    goto :goto_4a

    :cond_5f
    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Lt/L;->e()D

    move-result-wide v0

    iget-object v4, p0, Lv/e;->b:Lz/m;

    invoke-virtual {v4}, Lz/m;->g()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lv/e;->a(Ljava/util/List;D)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_7e
    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lv/d;

    iget-object v0, v9, Lv/d;->c:Lw/e;

    invoke-virtual {v0}, Lw/e;->a()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lv/e;->a:Lw/b;

    iget-object v1, v9, Lv/d;->c:Lw/e;

    invoke-virtual {v0, v1}, Lw/b;->a(Lw/e;)Lw/e;

    move-result-object v3

    if-eqz v3, :cond_b3

    new-instance v0, Lv/d;

    iget-boolean v1, v9, Lv/d;->a:Z

    iget-object v2, v9, Lv/d;->b:Lt/L;

    iget v4, v9, Lv/d;->d:I

    iget v5, v9, Lv/d;->e:I

    iget-object v6, v9, Lv/d;->f:Lt/L;

    iget-wide v7, v9, Lv/d;->g:D

    iget v9, v9, Lv/d;->h:I

    invoke-direct/range {v0 .. v9}, Lv/d;-><init>(ZLt/L;Lw/e;IILt/L;DI)V

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b3
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_7e

    :cond_b7
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v10

    :cond_bb
    move v3, v0

    goto/16 :goto_39
.end method

.method public a(Ls/b;Lu/x;)Ljava/util/Collection;
    .registers 20

    invoke-virtual/range {p1 .. p1}, Ls/b;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ls/b;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lt/L;->a(DD)Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->e()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v2}, Lz/m;->b()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v4}, Lz/m;->c()I

    move-result v4

    int-to-double v4, v4

    mul-double v14, v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v4}, Lz/m;->h()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v6}, Lz/m;->i()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v8}, Lz/m;->j()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v10}, Lz/m;->k()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    double-to-int v2, v2

    double-to-int v3, v14

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Lv/e;->a(Lt/L;Lu/x;II)Lu/B;

    move-result-object v1

    if-eqz v1, :cond_d2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Projection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lu/B;->b()Lt/L;

    move-result-object v3

    invoke-virtual {v3}, Lt/L;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv/e;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lu/x;->a(Lu/B;)D

    move-result-wide v2

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v11}, Lv/e;->a(Lu/x;DDDDD)Ljava/util/List;

    move-result-object v1

    const-wide/high16 v2, 0x4024

    mul-double v8, v12, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lv/f;

    move-object/from16 v0, p0

    iget-object v1, v0, Lv/e;->a:Lw/b;

    iget-object v2, v11, Lv/f;->a:Lt/L;

    invoke-virtual {v1, v2, v8, v9}, Lw/b;->a(Lt/L;D)Ljava/util/Iterator;

    move-result-object v3

    iget-boolean v1, v11, Lv/f;->d:Z

    if-eqz v1, :cond_c5

    const/16 v6, 0x168

    :goto_ab
    const/4 v1, 0x0

    iget-object v2, v11, Lv/f;->a:Lt/L;

    iget-wide v4, v11, Lv/f;->c:D

    iget v7, v11, Lv/f;->e:I

    iget v10, v11, Lv/f;->b:I

    invoke-static/range {v1 .. v10}, Lv/e;->a(ZLt/L;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, v11, Lv/f;->d:Z

    if-eqz v2, :cond_ce

    invoke-static {v1, v8, v9}, Lv/e;->a(Ljava/util/List;D)V

    :goto_bf
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_8e

    :cond_c5
    move-object/from16 v0, p0

    iget-object v1, v0, Lv/e;->b:Lz/m;

    invoke-virtual {v1}, Lz/m;->e()I

    move-result v6

    goto :goto_ab

    :cond_ce
    invoke-static {v1}, Lv/e;->a(Ljava/util/List;)V

    goto :goto_bf

    :cond_d2
    return-object v16
.end method
