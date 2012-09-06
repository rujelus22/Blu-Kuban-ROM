.class public LaW/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:Ljava/util/ArrayList;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:[Landroid/graphics/Bitmap;

.field private final g:[Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:Lbb/f;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(FII[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Lbb/f;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x32

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, LaW/b;->j:I

    .line 36
    iput v0, p0, LaW/b;->k:I

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, LaW/b;->l:I

    .line 41
    iput p1, p0, LaW/b;->a:F

    .line 42
    iput-object p4, p0, LaW/b;->f:[Landroid/graphics/Bitmap;

    .line 43
    iput-object p5, p0, LaW/b;->g:[Landroid/graphics/Bitmap;

    .line 44
    iput-object p6, p0, LaW/b;->i:Lbb/f;

    .line 45
    iput-object p7, p0, LaW/b;->h:Landroid/graphics/Bitmap;

    .line 46
    iput p2, p0, LaW/b;->c:I

    .line 47
    iput p3, p0, LaW/b;->d:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaW/b;->e:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, LaW/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 50
    iget-object v0, p0, LaW/b;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, LaW/b;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaW/b;->b:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 160
    iput v0, p0, LaW/b;->k:I

    .line 161
    iput v0, p0, LaW/b;->j:I

    .line 163
    iget-object v0, p0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 164
    iget-object v0, p0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 165
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaW/a;

    invoke-virtual {v0}, LaW/a;->b()V

    .line 167
    iget v0, p0, LaW/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaW/b;->j:I

    goto :goto_13

    .line 170
    :cond_29
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    iget v0, p0, LaW/b;->k:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LaW/b;->k:I

    iget v2, p0, LaW/b;->l:I

    if-le v0, v2, :cond_26

    .line 59
    iget v0, p0, LaW/b;->j:I

    if-lez v0, :cond_26

    move v0, v1

    .line 60
    :goto_10
    iget v2, p0, LaW/b;->j:I

    if-ge v0, v2, :cond_24

    .line 61
    iget-object v2, p0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 62
    iget-object v2, p0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 65
    :cond_24
    iput v1, p0, LaW/b;->j:I

    .line 70
    :cond_26
    iget-object v0, p0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 71
    iget-object v0, p0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaW/a;

    invoke-virtual {v0, p1, p2}, LaW/a;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_34

    .line 76
    :cond_44
    return-void
.end method

.method public a(Lbb/f;LaW/c;LaW/e;Z)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, LaW/b;->j:I

    .line 83
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, LaW/b;->k:I

    .line 85
    invoke-virtual/range {p2 .. p2}, LaW/c;->a()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v16, v4, v5

    .line 86
    if-lez v16, :cond_6e

    .line 89
    const/4 v4, 0x0

    move v15, v4

    :goto_1c
    move/from16 v0, v16

    if-ge v15, v0, :cond_8e

    .line 92
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, LaW/b;->f:[Landroid/graphics/Bitmap;

    array-length v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v5, v4

    .line 93
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, LaW/b;->g:[Landroid/graphics/Bitmap;

    array-length v4, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v10, v6

    .line 94
    new-instance v4, LaW/a;

    move-object/from16 v0, p0

    iget v6, v0, LaW/b;->c:I

    move-object/from16 v0, p0

    iget v7, v0, LaW/b;->d:I

    move-object/from16 v0, p0

    iget-object v8, v0, LaW/b;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, LaW/b;->f:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->g:[Landroid/graphics/Bitmap;

    aget-object v10, v5, v10

    move-object/from16 v0, p0

    iget-object v12, v0, LaW/b;->i:Lbb/f;

    move-object/from16 v0, p0

    iget-object v13, v0, LaW/b;->h:Landroid/graphics/Bitmap;

    move-object/from16 v5, p0

    move-object/from16 v11, p2

    move/from16 v14, p4

    invoke-direct/range {v4 .. v14}, LaW/a;-><init>(LaW/b;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;LaW/c;Lbb/f;Landroid/graphics/Bitmap;Z)V

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_1c

    .line 99
    :cond_6e
    if-gez v16, :cond_8e

    .line 103
    const/4 v4, 0x0

    :goto_71
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_8e

    .line 106
    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8b

    .line 107
    move-object/from16 v0, p0

    iget v5, v0, LaW/b;->j:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, LaW/b;->j:I

    .line 103
    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 112
    :cond_8e
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v16

    .line 113
    const/4 v4, 0x0

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_138

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v5, v4

    .line 116
    :goto_a6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 117
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LaW/a;

    .line 118
    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, LaW/b;->j:I

    if-le v5, v6, :cond_134

    .line 126
    invoke-virtual {v4}, LaW/a;->a()LaW/c;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, LaW/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, LaW/a;->a(Lbb/f;LaW/c;LaW/e;Z)V

    :goto_d1
    move v5, v15

    .line 150
    goto :goto_a6

    .line 133
    :cond_d3
    invoke-virtual {v4}, LaW/a;->b()V

    .line 136
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, LaW/b;->f:[Landroid/graphics/Bitmap;

    array-length v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v5, v4

    .line 137
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, LaW/b;->g:[Landroid/graphics/Bitmap;

    array-length v4, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v10, v6

    .line 138
    new-instance v4, LaW/a;

    move-object/from16 v0, p0

    iget v6, v0, LaW/b;->c:I

    move-object/from16 v0, p0

    iget v7, v0, LaW/b;->d:I

    move-object/from16 v0, p0

    iget-object v8, v0, LaW/b;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, LaW/b;->f:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, LaW/b;->g:[Landroid/graphics/Bitmap;

    aget-object v10, v5, v10

    move-object/from16 v0, p0

    iget-object v12, v0, LaW/b;->i:Lbb/f;

    move-object/from16 v0, p0

    iget-object v13, v0, LaW/b;->h:Landroid/graphics/Bitmap;

    move-object/from16 v5, p0

    move-object/from16 v11, p2

    move/from16 v14, p4

    invoke-direct/range {v4 .. v14}, LaW/a;-><init>(LaW/b;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;LaW/c;Lbb/f;Landroid/graphics/Bitmap;Z)V

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, LaW/a;->a(Lbb/f;LaW/c;LaW/e;Z)V

    .line 143
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v0, p0

    iget v4, v0, LaW/b;->j:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, LaW/b;->j:I

    goto :goto_d1

    .line 148
    :cond_134
    invoke-virtual {v4}, LaW/a;->b()V

    goto :goto_d1

    .line 154
    :cond_138
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_147

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, LaW/b;->b:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    :cond_147
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 179
    iget v0, p0, LaW/b;->a:F

    return v0
.end method
