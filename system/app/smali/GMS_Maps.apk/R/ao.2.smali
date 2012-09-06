.class public Lr/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lr/aH;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lr/aH;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lr/ao;->a:Lr/aH;

    .line 55
    return-void
.end method

.method static synthetic a(F)F
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lr/ao;->b(F)F

    move-result v0

    return v0
.end method

.method private a(Ln/aF;Lr/ap;I)Lr/ap;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4234

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p2}, Lr/ap;->a()Ln/Q;

    move-result-object v3

    .line 270
    invoke-virtual {p2}, Lr/ap;->b()F

    move-result v4

    .line 271
    mul-int v0, p3, p3

    int-to-float v5, v0

    move v1, v2

    .line 272
    :goto_f
    invoke-virtual {p1}, Ln/aF;->j()I

    move-result v0

    if-ge v1, v0, :cond_7e

    .line 273
    invoke-virtual {p1, v1}, Ln/aF;->a(I)Ln/l;

    move-result-object v0

    .line 274
    instance-of v6, v0, Ln/ac;

    if-eqz v6, :cond_23

    .line 275
    check-cast v0, Ln/ac;

    .line 276
    iget-object v6, p2, Lr/ap;->a:Ln/ac;

    if-ne v0, v6, :cond_27

    .line 272
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 279
    :cond_27
    invoke-virtual {v0}, Ln/ac;->b()Ln/U;

    move-result-object v6

    .line 281
    iget-object v7, p2, Lr/ap;->a:Ln/ac;

    invoke-virtual {v7}, Ln/ac;->f()I

    move-result v7

    invoke-virtual {v0}, Ln/ac;->f()I

    move-result v8

    if-ne v7, v8, :cond_23

    invoke-virtual {p2, v0}, Lr/ap;->a(Ln/ac;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 285
    invoke-virtual {v6, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v7

    invoke-virtual {v3, v7}, Ln/Q;->d(Ln/Q;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_5b

    invoke-virtual {v6, v2}, Ln/U;->d(I)F

    move-result v7

    invoke-static {v4, v7}, Ln/S;->a(FF)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_5b

    .line 289
    const/4 v2, 0x1

    .line 298
    :goto_56
    iput-boolean v2, p2, Lr/ap;->b:Z

    .line 299
    iput-object v0, p2, Lr/ap;->a:Ln/ac;

    .line 303
    :goto_5a
    return-object p2

    .line 290
    :cond_5b
    invoke-virtual {v6}, Ln/U;->c()Ln/Q;

    move-result-object v7

    invoke-virtual {v3, v7}, Ln/Q;->d(Ln/Q;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_23

    invoke-virtual {v6}, Ln/U;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ln/U;->d(I)F

    move-result v6

    invoke-static {v6}, Lr/ao;->b(F)F

    move-result v6

    invoke-static {v4, v6}, Ln/S;->a(FF)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_23

    goto :goto_56

    .line 303
    :cond_7e
    const/4 p2, 0x0

    goto :goto_5a
.end method

.method private a(Lr/ap;I)Lr/ap;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Lr/ap;->a()Ln/Q;

    move-result-object v0

    invoke-static {v0, p2}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    invoke-static {v0}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ln/am;->a(Ln/aL;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 251
    iget-object v3, p0, Lr/ao;->a:Lr/aH;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_32

    .line 253
    check-cast v0, Ln/aF;

    invoke-direct {p0, v0, p1, p2}, Lr/ao;->a(Ln/aF;Lr/ap;I)Lr/ap;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_32

    .line 260
    :goto_31
    return-object v0

    .line 247
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 260
    :cond_36
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private a(Ln/aF;Ln/f;ZLr/an;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    .line 131
    new-instance v15, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    const/4 v1, 0x0

    move v13, v1

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ln/aF;->j()I

    move-result v1

    if-ge v13, v1, :cond_88

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ln/aF;->a(I)Ln/l;

    move-result-object v1

    .line 134
    instance-of v2, v1, Ln/ac;

    if-eqz v2, :cond_41

    .line 135
    check-cast v1, Ln/ac;

    .line 136
    invoke-virtual {v1}, Ln/ac;->b()Ln/U;

    move-result-object v2

    .line 137
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v15}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    .line 139
    const/4 v2, 0x0

    move v3, v2

    :goto_25
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3a

    .line 140
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/U;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lr/an;->a(Ln/ac;Ln/U;)V

    .line 139
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_25

    .line 142
    :cond_3a
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 132
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_8

    .line 143
    :cond_41
    if-eqz p3, :cond_3d

    instance-of v2, v1, Ln/J;

    if-eqz v2, :cond_3d

    move-object v12, v1

    .line 147
    check-cast v12, Ln/J;

    .line 148
    invoke-virtual {v12}, Ln/J;->b()Ln/U;

    move-result-object v1

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v15}, Ln/f;->a(Ln/U;Ljava/util/ArrayList;)V

    .line 150
    const/4 v1, 0x0

    new-array v11, v1, [I

    .line 152
    const/4 v1, 0x0

    move v14, v1

    :goto_58
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_84

    .line 153
    new-instance v1, Ln/ac;

    const/4 v2, 0x0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/U;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v12}, Ln/J;->i()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v11}, Ln/ac;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;III[I)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/U;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lr/an;->a(Ln/ac;Ln/U;)V

    .line 152
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_58

    .line 160
    :cond_84
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_3d

    .line 163
    :cond_88
    return-void
.end method

.method private static b(F)F
    .registers 3
    .parameter

    .prologue
    const/high16 v1, 0x4334

    .line 307
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
.method public a(Ln/ac;FFI)Ljava/util/List;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v0, Lr/ap;

    invoke-direct {v0, p1, p2}, Lr/ap;-><init>(Ln/ac;F)V

    .line 229
    :goto_a
    if-eqz v0, :cond_26

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_26

    .line 230
    iget-object v2, v0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v2, v0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v2}, Ln/ac;->b()Ln/U;

    move-result-object v2

    invoke-virtual {v2}, Ln/U;->d()F

    move-result v2

    sub-float/2addr p3, v2

    .line 232
    invoke-direct {p0, v0, p4}, Lr/ao;->a(Lr/ap;I)Lr/ap;

    move-result-object v0

    goto :goto_a

    .line 235
    :cond_26
    return-object v1
.end method

.method public a(Ln/aa;ZJ)Lr/an;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-static {p1}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ln/am;->a(Ln/aL;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    move v3, v0

    .line 78
    :goto_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 79
    iget-object v7, p0, Lr/ao;->a:Lr/aH;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-interface {v7, v0, v2}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_33

    .line 81
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v3, v3, -0x1

    .line 78
    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 89
    :cond_37
    if-lez v3, :cond_6a

    .line 90
    new-instance v7, Lr/a;

    invoke-direct {v7, v3}, Lr/a;-><init>(I)V

    move v1, v2

    .line 92
    :goto_3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 93
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 95
    iget-object v3, p0, Lr/ao;->a:Lr/aH;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-interface {v3, v0, v7}, Lr/aH;->a(Ln/am;Lr/aF;)V

    .line 92
    :cond_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 98
    :cond_5a
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_8e

    .line 99
    invoke-virtual {v7}, Lr/a;->b()V

    .line 105
    :cond_63
    invoke-virtual {v7}, Lr/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_6a
    iput-object v6, p0, Lr/ao;->b:Ljava/util/List;

    .line 112
    new-instance v1, Lr/an;

    invoke-direct {v1}, Lr/an;-><init>()V

    .line 113
    new-instance v3, Ln/f;

    invoke-direct {v3, p1}, Ln/f;-><init>(Ln/ab;)V

    .line 114
    :goto_76
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_96

    .line 115
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    .line 116
    instance-of v4, v0, Ln/aF;

    if-eqz v4, :cond_8b

    .line 117
    check-cast v0, Ln/aF;

    invoke-direct {p0, v0, v3, p2, v1}, Lr/ao;->a(Ln/aF;Ln/f;ZLr/an;)V

    .line 114
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 101
    :cond_8e
    invoke-virtual {v7, p3, p4}, Lr/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_63

    move-object v0, v4

    .line 120
    :goto_95
    return-object v0

    :cond_96
    move-object v0, v1

    goto :goto_95
.end method
