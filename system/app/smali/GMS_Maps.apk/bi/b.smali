.class public Lbi/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:Ljava/util/ArrayList;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:[Landroid/graphics/Bitmap;

.field private final g:[Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:Lbn/f;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(FII[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Lbn/f;Landroid/graphics/Bitmap;)V
    .registers 11

    const/4 v0, 0x0

    const/16 v2, 0x32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lbi/b;->j:I

    iput v0, p0, Lbi/b;->k:I

    const/16 v0, 0x1e

    iput v0, p0, Lbi/b;->l:I

    iput p1, p0, Lbi/b;->a:F

    iput-object p4, p0, Lbi/b;->f:[Landroid/graphics/Bitmap;

    iput-object p5, p0, Lbi/b;->g:[Landroid/graphics/Bitmap;

    iput-object p6, p0, Lbi/b;->i:Lbn/f;

    iput-object p7, p0, Lbi/b;->h:Landroid/graphics/Bitmap;

    iput p2, p0, Lbi/b;->c:I

    iput p3, p0, Lbi/b;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbi/b;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lbi/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbi/b;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lbi/b;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbi/b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lbi/b;->k:I

    iput v0, p0, Lbi/b;->j:I

    iget-object v0, p0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi/a;

    invoke-virtual {v0}, Lbi/a;->b()V

    iget v0, p0, Lbi/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbi/b;->j:I

    goto :goto_13

    :cond_29
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lbi/b;->k:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbi/b;->k:I

    iget v2, p0, Lbi/b;->l:I

    if-le v0, v2, :cond_26

    iget v0, p0, Lbi/b;->j:I

    if-lez v0, :cond_26

    move v0, v1

    :goto_10
    iget v2, p0, Lbi/b;->j:I

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v2, p0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    iput v1, p0, Lbi/b;->j:I

    :cond_26
    iget-object v0, p0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    iget-object v0, p0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi/a;

    invoke-virtual {v0, p1, p2}, Lbi/a;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_34

    :cond_44
    return-void
.end method

.method public a(Lbn/f;Lbi/c;Lbi/e;Z)V
    .registers 23

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lbi/b;->j:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lbi/b;->k:I

    invoke-virtual/range {p2 .. p2}, Lbi/c;->a()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v16, v4, v5

    if-lez v16, :cond_6e

    const/4 v4, 0x0

    move v15, v4

    :goto_1c
    move/from16 v0, v16

    if-ge v15, v0, :cond_8e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lbi/b;->f:[Landroid/graphics/Bitmap;

    array-length v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v5, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lbi/b;->g:[Landroid/graphics/Bitmap;

    array-length v4, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v10, v6

    new-instance v4, Lbi/a;

    move-object/from16 v0, p0

    iget v6, v0, Lbi/b;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Lbi/b;->d:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lbi/b;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbi/b;->f:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->g:[Landroid/graphics/Bitmap;

    aget-object v10, v5, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lbi/b;->i:Lbn/f;

    move-object/from16 v0, p0

    iget-object v13, v0, Lbi/b;->h:Landroid/graphics/Bitmap;

    move-object/from16 v5, p0

    move-object/from16 v11, p2

    move/from16 v14, p4

    invoke-direct/range {v4 .. v14}, Lbi/a;-><init>(Lbi/b;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lbi/c;Lbn/f;Landroid/graphics/Bitmap;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_1c

    :cond_6e
    if-gez v16, :cond_8e

    const/4 v4, 0x0

    :goto_71
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_8e

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8b

    move-object/from16 v0, p0

    iget v5, v0, Lbi/b;->j:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lbi/b;->j:I

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    :cond_8e
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v16

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_138

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v5, v4

    :goto_a6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_138

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbi/a;

    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lbi/b;->j:I

    if-le v5, v6, :cond_134

    invoke-virtual {v4}, Lbi/a;->a()Lbi/c;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lbi/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lbi/a;->a(Lbn/f;Lbi/c;Lbi/e;Z)V

    :goto_d1
    move v5, v15

    goto :goto_a6

    :cond_d3
    invoke-virtual {v4}, Lbi/a;->b()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lbi/b;->f:[Landroid/graphics/Bitmap;

    array-length v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v5, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lbi/b;->g:[Landroid/graphics/Bitmap;

    array-length v4, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v10, v6

    new-instance v4, Lbi/a;

    move-object/from16 v0, p0

    iget v6, v0, Lbi/b;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Lbi/b;->d:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lbi/b;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbi/b;->f:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lbi/b;->g:[Landroid/graphics/Bitmap;

    aget-object v10, v5, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lbi/b;->i:Lbn/f;

    move-object/from16 v0, p0

    iget-object v13, v0, Lbi/b;->h:Landroid/graphics/Bitmap;

    move-object/from16 v5, p0

    move-object/from16 v11, p2

    move/from16 v14, p4

    invoke-direct/range {v4 .. v14}, Lbi/a;-><init>(Lbi/b;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lbi/c;Lbn/f;Landroid/graphics/Bitmap;Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lbi/a;->a(Lbn/f;Lbi/c;Lbi/e;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v4, v0, Lbi/b;->j:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbi/b;->j:I

    goto :goto_d1

    :cond_134
    invoke-virtual {v4}, Lbi/a;->b()V

    goto :goto_d1

    :cond_138
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_147

    move-object/from16 v0, p0

    iget-object v4, v0, Lbi/b;->b:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_147
    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lbi/b;->a:F

    return v0
.end method
