.class public abstract Lr/c;
.super Lr/f;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/dg;

.field private volatile h:Z

.field private final i:I

.field private final j:Ljava/util/List;

.field private final k:I

.field private final l:I

.field private final m:F


# direct methods
.method protected constructor <init>(Lac/p;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/dg;ILjava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lr/t;)V
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/vector/dg;->d()Lr/aE;

    move-result-object v5

    move/from16 v0, p11

    move-object/from16 v1, p13

    invoke-static {p2, p3, v0, v1}, Lr/c;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/dg;ZLr/t;)Lr/s;

    move-result-object v6

    invoke-static {p3}, Lr/c;->a(Lcom/google/android/maps/driveabout/vector/dg;)I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p9

    move/from16 v9, p7

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    invoke-direct/range {v2 .. v11}, Lr/f;-><init>(Lac/p;Ljava/lang/String;Lr/aE;Lr/s;IZILjava/util/Locale;Ljava/io/File;)V

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lr/c;->h:Z

    .line 227
    iput-object p3, p0, Lr/c;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 228
    move/from16 v0, p4

    iput v0, p0, Lr/c;->i:I

    .line 229
    move-object/from16 v0, p5

    iput-object v0, p0, Lr/c;->j:Ljava/util/List;

    .line 230
    move/from16 v0, p6

    iput v0, p0, Lr/c;->l:I

    .line 235
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 240
    :cond_74
    const/4 v2, 0x0

    iput v2, p0, Lr/c;->k:I

    .line 244
    :goto_77
    move/from16 v0, p8

    iput v0, p0, Lr/c;->m:F

    .line 245
    return-void

    .line 242
    :cond_7c
    invoke-static/range {p4 .. p4}, Lr/c;->a(I)I

    move-result v2

    iput v2, p0, Lr/c;->k:I

    goto :goto_77
.end method

.method static a(I)I
    .registers 4
    .parameter

    .prologue
    const/16 v2, 0x80

    .line 277
    const/4 v0, 0x0

    move v1, p0

    .line 278
    :goto_4
    if-le v1, v2, :cond_b

    .line 279
    shr-int/lit8 v1, v1, 0x1

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 282
    :cond_b
    :goto_b
    if-ge v1, v2, :cond_12

    .line 283
    shl-int/lit8 v1, v1, 0x1

    .line 284
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 286
    :cond_12
    return v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/dg;)I
    .registers 2
    .parameter

    .prologue
    .line 267
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x3e8

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xbb8

    goto :goto_6
.end method

.method static synthetic a(Lr/c;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lr/c;->i:I

    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/dg;ZLr/t;)Lr/s;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-static {}, Lh/a;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 255
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/maps/driveabout/vector/dg;->a(Ljava/lang/String;ZLr/t;)Lr/s;

    move-result-object v0

    .line 257
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic b(Lr/c;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lr/c;->l:I

    return v0
.end method

.method static synthetic c(Lr/c;)F
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lr/c;->m:F

    return v0
.end method

.method static synthetic d(Lr/c;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lr/c;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lr/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lr/c;->h:Z

    return v0
.end method

.method static synthetic f(Lr/c;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lr/c;->k:I

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-boolean p1, p0, Lr/c;->h:Z

    .line 291
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lr/c;->a:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method
