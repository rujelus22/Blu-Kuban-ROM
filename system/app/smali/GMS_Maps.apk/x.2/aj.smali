.class public Lx/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lx/al;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lx/ao;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lx/aj;->b:I

    iput p3, p0, Lx/aj;->c:I

    invoke-direct {p0, p1}, Lx/aj;->a(Lx/ao;)V

    return-void
.end method

.method private a(Lx/al;Lx/al;Lt/L;)V
    .registers 8

    invoke-static {p1}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v0

    invoke-static {p1}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v0

    invoke-static {p2}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v1

    invoke-static {p2}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v1

    invoke-static {p1}, Lx/al;->h(Lx/al;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lx/ak;

    invoke-direct {v3, p2, v0, v1}, Lx/ak;-><init>(Lx/al;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lx/al;->h(Lx/al;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lx/ak;

    invoke-direct {v3, p1, v1, v0}, Lx/ak;-><init>(Lx/al;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lx/ao;)V
    .registers 3

    invoke-direct {p0, p1}, Lx/aj;->b(Lx/ao;)[Lx/al;

    move-result-object v0

    iput-object v0, p0, Lx/aj;->a:[Lx/al;

    invoke-direct {p0}, Lx/aj;->b()V

    return-void
.end method

.method static a(Lt/L;Lt/L;Lt/L;Lt/L;Lt/L;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;Lt/L;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0, p1, p4}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_19

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method static a(Lt/X;I)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    invoke-virtual {p0}, Lt/X;->f()I

    move-result v2

    const/16 v3, 0x70

    if-gt v2, v3, :cond_14

    invoke-virtual {p0}, Lt/X;->j()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    if-nez p1, :cond_13

    invoke-virtual {p0}, Lt/X;->f()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_13

    move v0, v1

    goto :goto_13
.end method

.method static a(Lx/al;Lx/al;ILt/L;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-static {p0}, Lx/al;->f(Lx/al;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p1}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v1

    invoke-static {p1}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v2

    invoke-static {p0}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    invoke-static {p0}, Lx/al;->g(Lx/al;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p1}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v1

    invoke-static {p1}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v2

    invoke-static {p0}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    :cond_38
    invoke-static {p1}, Lx/al;->f(Lx/al;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {p0}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v1

    invoke-static {p0}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v2

    invoke-static {p1}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    :cond_53
    invoke-static {p1}, Lx/al;->g(Lx/al;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {p0}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v1

    invoke-static {p0}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v2

    invoke-static {p1}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    :cond_6e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private b()V
    .registers 12

    iget-object v0, p0, Lx/aj;->a:[Lx/al;

    array-length v2, v0

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_54

    iget-object v0, p0, Lx/aj;->a:[Lx/al;

    aget-object v4, v0, v1

    invoke-static {v4}, Lx/al;->e(Lx/al;)Lt/V;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    :goto_16
    if-ge v0, v2, :cond_50

    iget-object v6, p0, Lx/aj;->a:[Lx/al;

    aget-object v6, v6, v0

    invoke-static {v6}, Lx/al;->e(Lx/al;)Lt/V;

    move-result-object v7

    invoke-virtual {v5, v7}, Lt/V;->a(Lt/W;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v4, v6}, Lx/al;->a(Lx/al;Lx/al;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v4}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v7

    invoke-static {v4}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v8

    invoke-static {v6}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v9

    invoke-static {v6}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, v3}, Lx/aj;->a(Lt/L;Lt/L;Lt/L;Lt/L;Lt/L;)Z

    move-result v7

    if-nez v7, :cond_4a

    iget v7, p0, Lx/aj;->b:I

    invoke-static {v4, v6, v7, v3}, Lx/aj;->a(Lx/al;Lx/al;ILt/L;)Z

    move-result v7

    if-eqz v7, :cond_4d

    :cond_4a
    invoke-direct {p0, v4, v6, v3}, Lx/aj;->a(Lx/al;Lx/al;Lt/L;)V

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_54
    return-void
.end method

.method private b(Lx/ao;)[Lx/al;
    .registers 22

    invoke-virtual/range {p1 .. p1}, Lx/ao;->a()I

    move-result v16

    new-instance v17, Ljava/util/ArrayList;

    mul-int/lit8 v1, v16, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v15, v1

    :goto_f
    move/from16 v0, v16

    if-ge v15, v0, :cond_8f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lx/ao;->a(I)Lt/X;

    move-result-object v2

    move-object/from16 v0, p0

    iget v1, v0, Lx/aj;->c:I

    invoke-static {v2, v1}, Lx/aj;->a(Lt/X;I)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_23
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_f

    :cond_27
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lx/ao;->b(I)Lt/P;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lt/P;->b()I

    move-result v19

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v3

    const/4 v1, 0x1

    move v14, v1

    :goto_3a
    move/from16 v0, v19

    if-ge v14, v0, :cond_23

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lt/P;->a(I)Lt/L;

    move-result-object v4

    const/4 v1, 0x1

    if-ne v14, v1, :cond_8b

    const/4 v5, 0x1

    :goto_48
    add-int/lit8 v1, v19, -0x1

    if-ne v14, v1, :cond_8d

    const/4 v6, 0x1

    :goto_4d
    invoke-direct/range {p0 .. p0}, Lx/aj;->c()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v2}, Lt/X;->m()Z

    move-result v1

    if-nez v1, :cond_67

    :cond_59
    new-instance v1, Lx/al;

    move-object/from16 v0, p0

    iget v7, v0, Lx/aj;->b:I

    invoke-direct/range {v1 .. v7}, Lx/al;-><init>(Lt/X;Lt/L;Lt/L;ZZI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    invoke-direct/range {p0 .. p0}, Lx/aj;->c()Z

    move-result v1

    if-nez v1, :cond_73

    invoke-virtual {v2}, Lt/X;->n()Z

    move-result v1

    if-nez v1, :cond_86

    :cond_73
    new-instance v7, Lx/al;

    move-object/from16 v0, p0

    iget v13, v0, Lx/aj;->b:I

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lx/al;-><init>(Lt/X;Lt/L;Lt/L;ZZI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    move-object v3, v4

    goto :goto_3a

    :cond_8b
    const/4 v5, 0x0

    goto :goto_48

    :cond_8d
    const/4 v6, 0x0

    goto :goto_4d

    :cond_8f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lx/al;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lx/al;

    return-object v1
.end method

.method private c()Z
    .registers 3

    iget v0, p0, Lx/aj;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lx/aj;->a:[Lx/al;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lx/al;
    .registers 3

    iget-object v0, p0, Lx/aj;->a:[Lx/al;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lx/al;)Lx/al;
    .registers 10

    iget-object v0, p0, Lx/aj;->a:[Lx/al;

    array-length v2, v0

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    invoke-static {p1}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v0

    invoke-static {p1}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v1

    const v4, 0x3dcccccd

    invoke-virtual {v0, v1, v4}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v4

    invoke-static {p1}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v0

    invoke-static {p1}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v1

    const v5, 0x3f666666

    invoke-virtual {v0, v1, v5}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    :goto_28
    if-ge v1, v2, :cond_89

    iget-object v0, p0, Lx/aj;->a:[Lx/al;

    aget-object v0, v0, v1

    invoke-static {p1}, Lx/al;->c(Lx/al;)Lt/X;

    move-result-object v6

    invoke-static {v0}, Lx/al;->c(Lx/al;)Lt/X;

    move-result-object v7

    if-ne v6, v7, :cond_85

    invoke-static {p1}, Lx/al;->d(Lx/al;)F

    move-result v6

    invoke-static {v0}, Lx/al;->d(Lx/al;)F

    move-result v7

    invoke-static {v6, v7}, Lt/N;->a(FF)F

    move-result v6

    const/high16 v7, 0x40a0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_85

    invoke-static {v0}, Lx/al;->e(Lx/al;)Lt/V;

    move-result-object v6

    invoke-virtual {v6, v4}, Lt/V;->a(Lt/L;)Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-static {v0}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v6

    invoke-static {v0}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v7

    invoke-static {v6, v7, v4, v3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v6

    iget v7, p0, Lx/aj;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_68

    :cond_67
    :goto_67
    return-object v0

    :cond_68
    invoke-static {v0}, Lx/al;->e(Lx/al;)Lt/V;

    move-result-object v6

    invoke-virtual {v6, v5}, Lt/V;->a(Lt/L;)Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-static {v0}, Lx/al;->b(Lx/al;)Lt/L;

    move-result-object v6

    invoke-static {v0}, Lx/al;->a(Lx/al;)Lt/L;

    move-result-object v7

    invoke-static {v6, v7, v5, v3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v6

    iget v7, p0, Lx/aj;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_67

    :cond_85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_89
    const/4 v0, 0x0

    goto :goto_67
.end method
