.class public Lx/ap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lx/ay;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lx/ay;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/ap;->a:Lx/ay;

    return-void
.end method

.method static synthetic a(F)F
    .registers 2

    invoke-static {p0}, Lx/ap;->b(F)F

    move-result v0

    return v0
.end method

.method private a(Lt/ao;Lx/aq;I)Lx/aq;
    .registers 14

    const/high16 v9, 0x4234

    const/4 v2, 0x0

    invoke-virtual {p2}, Lx/aq;->a()Lt/L;

    move-result-object v3

    invoke-virtual {p2}, Lx/aq;->b()F

    move-result v4

    mul-int v0, p3, p3

    int-to-float v5, v0

    move v1, v2

    :goto_f
    invoke-virtual {p1}, Lt/ao;->i()I

    move-result v0

    if-ge v1, v0, :cond_7e

    invoke-virtual {p1, v1}, Lt/ao;->a(I)Lt/l;

    move-result-object v0

    instance-of v6, v0, Lt/X;

    if-eqz v6, :cond_23

    check-cast v0, Lt/X;

    iget-object v6, p2, Lx/aq;->a:Lt/X;

    if-ne v0, v6, :cond_27

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_27
    invoke-virtual {v0}, Lt/X;->b()Lt/P;

    move-result-object v6

    iget-object v7, p2, Lx/aq;->a:Lt/X;

    invoke-virtual {v7}, Lt/X;->f()I

    move-result v7

    invoke-virtual {v0}, Lt/X;->f()I

    move-result v8

    if-ne v7, v8, :cond_23

    invoke-virtual {p2, v0}, Lx/aq;->a(Lt/X;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {v6, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v7

    invoke-virtual {v3, v7}, Lt/L;->d(Lt/L;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_5b

    invoke-virtual {v6, v2}, Lt/P;->c(I)F

    move-result v7

    invoke-static {v4, v7}, Lt/N;->a(FF)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_5b

    const/4 v2, 0x1

    :goto_56
    iput-boolean v2, p2, Lx/aq;->b:Z

    iput-object v0, p2, Lx/aq;->a:Lt/X;

    :goto_5a
    return-object p2

    :cond_5b
    invoke-virtual {v6}, Lt/P;->c()Lt/L;

    move-result-object v7

    invoke-virtual {v3, v7}, Lt/L;->d(Lt/L;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_23

    invoke-virtual {v6}, Lt/P;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lt/P;->c(I)F

    move-result v6

    invoke-static {v6}, Lx/ap;->b(F)F

    move-result v6

    invoke-static {v4, v6}, Lt/N;->a(FF)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_23

    goto :goto_56

    :cond_7e
    const/4 p2, 0x0

    goto :goto_5a
.end method

.method private a(Lx/aq;I)Lx/aq;
    .registers 8

    invoke-virtual {p1}, Lx/aq;->a()Lt/L;

    move-result-object v0

    invoke-static {v0, p2}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v0

    invoke-static {v0}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lt/af;->a(Lt/au;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    iget-object v3, p0, Lx/ap;->a:Lx/ay;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_32

    check-cast v0, Lt/ao;

    invoke-direct {p0, v0, p1, p2}, Lx/ap;->a(Lt/ao;Lx/aq;I)Lx/aq;

    move-result-object v0

    if-eqz v0, :cond_32

    :goto_31
    return-object v0

    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_36
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private a(Lt/ao;Lt/f;ZLx/ao;)V
    .registers 21

    new-instance v15, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v13, v1

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lt/ao;->i()I

    move-result v1

    if-ge v13, v1, :cond_88

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lt/ao;->a(I)Lt/l;

    move-result-object v1

    instance-of v2, v1, Lt/X;

    if-eqz v2, :cond_41

    check-cast v1, Lt/X;

    invoke-virtual {v1}, Lt/X;->b()Lt/P;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v15}, Lt/f;->a(Lt/P;Ljava/util/List;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3a

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/P;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lx/ao;->a(Lt/X;Lt/P;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_25

    :cond_3a
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_8

    :cond_41
    if-eqz p3, :cond_3d

    instance-of v2, v1, Lt/F;

    if-eqz v2, :cond_3d

    move-object v12, v1

    check-cast v12, Lt/F;

    invoke-virtual {v12}, Lt/F;->b()Lt/P;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v15}, Lt/f;->a(Lt/P;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v11, v1, [I

    const/4 v1, 0x0

    move v14, v1

    :goto_58
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_84

    new-instance v1, Lt/X;

    const/4 v2, 0x0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/P;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v12}, Lt/F;->i()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v11}, Lt/X;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;III[I)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/P;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lx/ao;->a(Lt/X;Lt/P;)V

    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_58

    :cond_84
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_3d

    :cond_88
    return-void
.end method

.method private static b(F)F
    .registers 3

    const/high16 v1, 0x4334

    cmpl-float v0, p0, v1

    if-lez v0, :cond_9

    sub-float v0, p0, v1

    :goto_8
    return v0

    :cond_9
    add-float v0, p0, v1

    goto :goto_8
.end method


# virtual methods
.method public a(Lt/X;FFI)Ljava/util/List;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lx/aq;

    invoke-direct {v0, p1, p2}, Lx/aq;-><init>(Lt/X;F)V

    :goto_a
    if-eqz v0, :cond_26

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_26

    iget-object v2, v0, Lx/aq;->a:Lt/X;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lx/aq;->a:Lt/X;

    invoke-virtual {v2}, Lt/X;->b()Lt/P;

    move-result-object v2

    invoke-virtual {v2}, Lt/P;->d()F

    move-result v2

    sub-float/2addr p3, v2

    invoke-direct {p0, v0, p4}, Lx/ap;->a(Lx/aq;I)Lx/aq;

    move-result-object v0

    goto :goto_a

    :cond_26
    return-object v1
.end method

.method public a(Lt/V;ZJ)Lx/ao;
    .registers 13

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lt/af;->a(Lt/au;I)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    move v3, v0

    :goto_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    iget-object v7, p0, Lx/ap;->a:Lx/ay;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-interface {v7, v0, v2}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_37
    if-lez v3, :cond_6a

    new-instance v7, Lx/c;

    invoke-direct {v7, v3}, Lx/c;-><init>(I)V

    move v1, v2

    :goto_3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v3, p0, Lx/ap;->a:Lx/ay;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-interface {v3, v0, v7}, Lx/ay;->a(Lt/af;Lx/aw;)V

    :cond_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    :cond_5a
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_8e

    invoke-virtual {v7}, Lx/c;->b()V

    :cond_63
    invoke-virtual {v7}, Lx/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6a
    iput-object v6, p0, Lx/ap;->b:Ljava/util/List;

    new-instance v1, Lx/ao;

    invoke-direct {v1}, Lx/ao;-><init>()V

    new-instance v3, Lt/f;

    invoke-direct {v3, p1}, Lt/f;-><init>(Lt/W;)V

    :goto_76
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_96

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    instance-of v4, v0, Lt/ao;

    if-eqz v4, :cond_8b

    check-cast v0, Lt/ao;

    invoke-direct {p0, v0, v3, p2, v1}, Lx/ap;->a(Lt/ao;Lt/f;ZLx/ao;)V

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_8e
    invoke-virtual {v7, p3, p4}, Lx/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_63

    move-object v0, v4

    :goto_95
    return-object v0

    :cond_96
    move-object v0, v1

    goto :goto_95
.end method
