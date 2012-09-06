.class public final Lcom/google/zxing/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Integer;


# instance fields
.field private final b:Lcom/google/zxing/common/b;

.field private final c:Lcom/google/zxing/common/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/zxing/b/b/a;->a:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    .line 51
    new-instance v0, Lcom/google/zxing/common/a/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/a/a;-><init>(Lcom/google/zxing/common/b;)V

    iput-object v0, p0, Lcom/google/zxing/b/b/a;->c:Lcom/google/zxing/common/a/a;

    .line 52
    return-void
.end method

.method private static a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/zxing/j;->a()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/j;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/j;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/j;->a()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/j;->b()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/j;->b()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/zxing/j;->b()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/google/zxing/common/b;Lcom/google/zxing/j;Lcom/google/zxing/j;Lcom/google/zxing/j;Lcom/google/zxing/j;II)Lcom/google/zxing/common/b;
    .registers 28
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-static {}, Lcom/google/zxing/common/l;->a()Lcom/google/zxing/common/l;

    move-result-object v1

    .line 343
    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v7, v2, v3

    const/high16 v8, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v9, v2, v3

    move/from16 v0, p6

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v10, v2, v3

    const/high16 v11, 0x3f00

    move/from16 v0, p6

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v12, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/j;->a()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/j;->b()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/j;->a()F

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/j;->b()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/j;->a()F

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/j;->b()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/j;->a()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/j;->b()F

    move-result v20

    move-object/from16 v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/l;->a(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;

    move-result-object v1

    return-object v1
.end method

.method private static a(Ljava/util/Hashtable;Lcom/google/zxing/j;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 330
    if-nez v0, :cond_11

    sget-object v0, Lcom/google/zxing/b/b/a;->a:[Ljava/lang/Integer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_d
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void

    .line 330
    :cond_11
    sget-object v1, Lcom/google/zxing/b/b/a;->a:[Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto :goto_d
.end method

.method private a(Lcom/google/zxing/j;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-virtual {p1}, Lcom/google/zxing/j;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2d

    invoke-virtual {p1}, Lcom/google/zxing/j;->a()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    iget v1, v1, Lcom/google/zxing/common/b;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    invoke-virtual {p1}, Lcom/google/zxing/j;->b()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Lcom/google/zxing/j;->b()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    iget v1, v1, Lcom/google/zxing/common/b;->b:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/j;->a()F

    move-result v2

    float-to-int v4, v2

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/j;->b()F

    move-result v2

    float-to-int v5, v2

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/j;->a()F

    move-result v2

    float-to-int v2, v2

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/j;->b()F

    move-result v3

    float-to-int v3, v3

    .line 373
    sub-int v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v7, v2, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_71

    const/4 v6, 0x1

    move v13, v6

    .line 374
    :goto_24
    if-eqz v13, :cond_8d

    .line 383
    :goto_26
    sub-int v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 384
    sub-int v6, v2, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 385
    neg-int v6, v14

    shr-int/lit8 v10, v6, 0x1

    .line 386
    if-ge v4, v2, :cond_74

    const/4 v6, 0x1

    move v12, v6

    .line 387
    :goto_39
    if-ge v5, v3, :cond_77

    const/4 v6, 0x1

    .line 388
    :goto_3c
    const/4 v8, 0x0

    .line 389
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    if-eqz v13, :cond_79

    move v9, v4

    :goto_44
    if-eqz v13, :cond_7b

    move v7, v5

    :goto_47
    invoke-virtual {v11, v9, v7}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v9

    move v11, v10

    move v7, v4

    .line 390
    :goto_4d
    if-eq v5, v3, :cond_81

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    move-object/from16 v16, v0

    if-eqz v13, :cond_7d

    move v10, v7

    :goto_58
    if-eqz v13, :cond_7f

    move v4, v5

    :goto_5b
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v4

    .line 392
    if-eq v4, v9, :cond_66

    .line 393
    add-int/lit8 v8, v8, 0x1

    move v9, v4

    .line 396
    :cond_66
    add-int v4, v11, v15

    .line 397
    if-lez v4, :cond_6e

    .line 398
    if-eq v7, v2, :cond_81

    .line 399
    add-int/2addr v7, v12

    .line 402
    sub-int/2addr v4, v14

    .line 390
    :cond_6e
    add-int/2addr v5, v6

    move v11, v4

    goto :goto_4d

    .line 373
    :cond_71
    const/4 v6, 0x0

    move v13, v6

    goto :goto_24

    .line 386
    :cond_74
    const/4 v6, -0x1

    move v12, v6

    goto :goto_39

    .line 387
    :cond_77
    const/4 v6, -0x1

    goto :goto_3c

    :cond_79
    move v9, v5

    .line 389
    goto :goto_44

    :cond_7b
    move v7, v4

    goto :goto_47

    :cond_7d
    move v10, v5

    .line 391
    goto :goto_58

    :cond_7f
    move v4, v7

    goto :goto_5b

    :cond_81
    move v2, v8

    .line 405
    new-instance v3, Lcom/google/zxing/b/b/b;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/j;Lcom/google/zxing/j;IB)V

    return-object v3

    :cond_8d
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_26
.end method


# virtual methods
.method public final a()Lcom/google/zxing/common/i;
    .registers 13

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/zxing/b/b/a;->c:Lcom/google/zxing/common/a/a;

    invoke-virtual {v0}, Lcom/google/zxing/common/a/a;->a()[Lcom/google/zxing/j;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    aget-object v5, v0, v1

    .line 64
    const/4 v1, 0x1

    aget-object v6, v0, v1

    .line 65
    const/4 v1, 0x2

    aget-object v7, v0, v1

    .line 66
    const/4 v1, 0x3

    aget-object v8, v0, v1

    .line 71
    new-instance v1, Ljava/util/Vector;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 72
    invoke-direct {p0, v5, v6}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, v5, v7}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0, v6, v8}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0, v7, v8}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/google/zxing/b/b/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/zxing/b/b/c;-><init>(B)V

    invoke-static {v1, v0}, Lcom/google/zxing/common/e;->a(Ljava/util/Vector;Lcom/google/zxing/common/f;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/b/b/b;

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/b/b/b;

    .line 85
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 86
    invoke-virtual {v0}, Lcom/google/zxing/b/b/b;->a()Lcom/google/zxing/j;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/google/zxing/b/b/a;->a(Ljava/util/Hashtable;Lcom/google/zxing/j;)V

    .line 87
    invoke-virtual {v0}, Lcom/google/zxing/b/b/b;->b()Lcom/google/zxing/j;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/zxing/b/b/a;->a(Ljava/util/Hashtable;Lcom/google/zxing/j;)V

    .line 88
    invoke-virtual {v1}, Lcom/google/zxing/b/b/b;->a()Lcom/google/zxing/j;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/zxing/b/b/a;->a(Ljava/util/Hashtable;Lcom/google/zxing/j;)V

    .line 89
    invoke-virtual {v1}, Lcom/google/zxing/b/b/b;->b()Lcom/google/zxing/j;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/zxing/b/b/a;->a(Ljava/util/Hashtable;Lcom/google/zxing/j;)V

    .line 91
    const/4 v2, 0x0

    .line 92
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 95
    :goto_76
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 96
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/j;

    .line 97
    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_91

    move-object v3, v0

    .line 99
    goto :goto_76

    .line 102
    :cond_91
    if-nez v4, :cond_95

    move-object v4, v0

    .line 103
    goto :goto_76

    :cond_95
    move-object v2, v0

    .line 108
    goto :goto_76

    .line 110
    :cond_97
    if-eqz v4, :cond_9d

    if-eqz v3, :cond_9d

    if-nez v2, :cond_a2

    .line 111
    :cond_9d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 115
    :cond_a2
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/zxing/j;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 117
    invoke-static {v0}, Lcom/google/zxing/j;->a([Lcom/google/zxing/j;)V

    .line 120
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 121
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 122
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 126
    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19e

    move-object v0, v5

    .line 145
    :goto_c1
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/b/b/b;->c()I

    move-result v5

    .line 146
    invoke-direct {p0, v3, v0}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/b/b/b;->c()I

    move-result v4

    .line 148
    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d8

    .line 150
    add-int/lit8 v5, v5, 0x1

    .line 152
    :cond_d8
    add-int/lit8 v6, v5, 0x2

    .line 154
    and-int/lit8 v5, v4, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_e1

    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 158
    :cond_e1
    add-int/lit8 v7, v4, 0x2

    .line 166
    mul-int/lit8 v4, v6, 0x4

    mul-int/lit8 v5, v7, 0x7

    if-ge v4, v5, :cond_ef

    mul-int/lit8 v4, v7, 0x4

    mul-int/lit8 v5, v6, 0x7

    if-lt v4, v5, :cond_1f6

    .line 169
    :cond_ef
    invoke-static {v2, v3}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v6

    div-float v5, v4, v5

    invoke-static {v1, v0}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v8

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v9

    sub-float/2addr v8, v9

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/j;->b()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v4, v4

    div-float/2addr v9, v4

    new-instance v4, Lcom/google/zxing/j;

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v10

    mul-float/2addr v8, v5

    add-float/2addr v8, v10

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v10

    mul-float/2addr v5, v9

    add-float/2addr v5, v10

    invoke-direct {v4, v8, v5}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-static {v2, v1}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v8, v7

    div-float v8, v5, v8

    invoke-static {v3, v0}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/j;->a()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v5

    div-float/2addr v9, v10

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v10

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v11

    sub-float/2addr v10, v11

    int-to-float v5, v5

    div-float/2addr v10, v5

    new-instance v5, Lcom/google/zxing/j;

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v11

    mul-float/2addr v9, v8

    add-float/2addr v9, v11

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v11

    mul-float/2addr v8, v10

    add-float/2addr v8, v11

    invoke-direct {v5, v9, v8}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-direct {p0, v4}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;)Z

    move-result v8

    if-nez v8, :cond_1b3

    invoke-direct {p0, v5}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;)Z

    move-result v4

    if-nez v4, :cond_1f3

    const/4 v4, 0x0

    .line 171
    :cond_162
    :goto_162
    if-nez v4, :cond_165

    move-object v4, v0

    .line 175
    :cond_165
    invoke-direct {p0, v1, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/b/b/b;->c()I

    move-result v5

    .line 176
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/b/b/b;->c()I

    move-result v6

    .line 178
    and-int/lit8 v0, v5, 0x1

    const/4 v7, 0x1

    if-ne v0, v7, :cond_17c

    .line 180
    add-int/lit8 v5, v5, 0x1

    .line 183
    :cond_17c
    and-int/lit8 v0, v6, 0x1

    const/4 v7, 0x1

    if-ne v0, v7, :cond_183

    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 188
    :cond_183
    iget-object v0, p0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/common/b;Lcom/google/zxing/j;Lcom/google/zxing/j;Lcom/google/zxing/j;Lcom/google/zxing/j;II)Lcom/google/zxing/common/b;

    move-result-object v0

    .line 217
    :goto_189
    new-instance v5, Lcom/google/zxing/common/i;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/j;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    invoke-direct {v5, v0, v6}, Lcom/google/zxing/common/i;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;)V

    return-object v5

    .line 128
    :cond_19e
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a7

    move-object v0, v6

    .line 129
    goto/16 :goto_c1

    .line 130
    :cond_1a7
    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    move-object v0, v7

    .line 131
    goto/16 :goto_c1

    :cond_1b0
    move-object v0, v8

    .line 133
    goto/16 :goto_c1

    .line 169
    :cond_1b3
    invoke-direct {p0, v5}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;)Z

    move-result v8

    if-eqz v8, :cond_162

    invoke-direct {p0, v1, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/b/b/b;->c()I

    move-result v8

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0, v3, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/b/b/b;->c()I

    move-result v9

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {p0, v1, v5}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/b/b/b;->c()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-direct {p0, v3, v5}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/b/b/b;->c()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    if-le v8, v6, :cond_162

    :cond_1f3
    move-object v4, v5

    goto/16 :goto_162

    .line 193
    :cond_1f6
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 195
    invoke-static {v2, v3}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v5

    div-float v6, v4, v6

    invoke-static {v1, v0}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v8

    sub-float/2addr v7, v8

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v8

    invoke-virtual {v1}, Lcom/google/zxing/j;->b()F

    move-result v9

    sub-float/2addr v8, v9

    int-to-float v4, v4

    div-float/2addr v8, v4

    new-instance v4, Lcom/google/zxing/j;

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v9

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v9

    mul-float/2addr v6, v8

    add-float/2addr v6, v9

    invoke-direct {v4, v7, v6}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-static {v2, v3}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-static {v3, v0}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)I

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/zxing/j;->a()F

    move-result v8

    sub-float/2addr v7, v8

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v9

    sub-float/2addr v8, v9

    int-to-float v5, v5

    div-float/2addr v8, v5

    new-instance v5, Lcom/google/zxing/j;

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v9

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v9

    mul-float/2addr v6, v8

    add-float/2addr v6, v9

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/j;-><init>(FF)V

    invoke-direct {p0, v4}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;)Z

    move-result v6

    if-nez v6, :cond_295

    invoke-direct {p0, v5}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;)Z

    move-result v4

    if-nez v4, :cond_2c7

    const/4 v4, 0x0

    .line 196
    :cond_26c
    :goto_26c
    if-nez v4, :cond_26f

    move-object v4, v0

    .line 201
    :cond_26f
    invoke-direct {p0, v1, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/b/b/b;->c()I

    move-result v0

    invoke-direct {p0, v3, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/b/b/b;->c()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    add-int/lit8 v5, v0, 0x1

    .line 204
    and-int/lit8 v0, v5, 0x1

    const/4 v6, 0x1

    if-ne v0, v6, :cond_28c

    .line 205
    add-int/lit8 v5, v5, 0x1

    .line 208
    :cond_28c
    iget-object v0, p0, Lcom/google/zxing/b/b/a;->b:Lcom/google/zxing/common/b;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/common/b;Lcom/google/zxing/j;Lcom/google/zxing/j;Lcom/google/zxing/j;Lcom/google/zxing/j;II)Lcom/google/zxing/common/b;

    move-result-object v0

    goto/16 :goto_189

    .line 195
    :cond_295
    invoke-direct {p0, v5}, Lcom/google/zxing/b/b/a;->a(Lcom/google/zxing/j;)Z

    move-result v6

    if-eqz v6, :cond_26c

    invoke-direct {p0, v1, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/b/b/b;->c()I

    move-result v6

    invoke-direct {p0, v3, v4}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/b/b/b;->c()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-direct {p0, v1, v5}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/b/b/b;->c()I

    move-result v7

    invoke-direct {p0, v3, v5}, Lcom/google/zxing/b/b/a;->b(Lcom/google/zxing/j;Lcom/google/zxing/j;)Lcom/google/zxing/b/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/b/b/b;->c()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_26c

    :cond_2c7
    move-object v4, v5

    goto :goto_26c
.end method
