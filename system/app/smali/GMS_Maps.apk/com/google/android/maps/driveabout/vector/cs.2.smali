.class public Lcom/google/android/maps/driveabout/vector/cs;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/vector/cu;

.field public static final b:Lcom/google/android/maps/driveabout/vector/cu;

.field public static final c:Lcom/google/android/maps/driveabout/vector/cu;


# instance fields
.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Path;

.field private g:Lcom/google/android/maps/driveabout/vector/cx;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;-><init>(Lcom/google/android/maps/driveabout/vector/ct;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;-><init>(Lcom/google/android/maps/driveabout/vector/ct;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->b:Lcom/google/android/maps/driveabout/vector/cu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;-><init>(Lcom/google/android/maps/driveabout/vector/ct;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cs;->c:Lcom/google/android/maps/driveabout/vector/cu;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->f:Landroid/graphics/Path;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cx;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIIIZ)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 20

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    const/high16 v1, 0x3fc0

    mul-float/2addr v1, p4

    float-to-int v1, v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p8, :cond_10a

    const v1, 0x40066666

    :goto_12
    move/from16 v0, p8

    invoke-virtual {p0, p2, p3, v4, v0}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const v5, 0x3f820c4a

    mul-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/lit8 v8, v3, 0x1

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v9, v2

    const/16 v2, 0x8

    invoke-static {v8, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v3

    const/16 v2, 0x8

    invoke-static {v9, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->G()I

    move-result v5

    if-gt v3, v5, :cond_48

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->G()I

    move-result v5

    if-le v2, v5, :cond_114

    :cond_48
    const-string v5, "TextGenerator texture too large"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because of string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->G()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->G()I

    move-result v2

    move v4, v3

    move v3, v2

    :goto_82
    const/high16 v2, -0x100

    move/from16 v0, p5

    if-eq v0, v2, :cond_8d

    const/4 v2, -0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_10d

    :cond_8d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_8f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v2}, Lcom/google/android/maps/driveabout/vector/bV;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v3, v3

    add-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:Landroid/graphics/Paint;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:Landroid/graphics/Paint;

    const/high16 v5, 0x4000

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p6, :cond_110

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_110

    const/4 v6, 0x1

    :goto_dd
    if-eqz p5, :cond_112

    const/4 v7, 0x1

    :goto_e0
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-int v1, v1

    int-to-float v4, v1

    int-to-float v5, v3

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/cs;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFZZ)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cs;->h:Z

    if-eqz v2, :cond_fb

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Z)V

    :cond_fb
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    invoke-virtual {v1, v10, v8, v9}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;II)V

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cs;->h:Z

    if-nez v2, :cond_109

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_109
    return-object v1

    :cond_10a
    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_10d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_8f

    :cond_110
    const/4 v6, 0x0

    goto :goto_dd

    :cond_112
    const/4 v7, 0x0

    goto :goto_e0

    :cond_114
    move v4, v3

    move v3, v2

    goto/16 :goto_82
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;FFZZ)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cs;->f:Landroid/graphics/Path;

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    if-eqz p5, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_18
    if-eqz p6, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_21
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/cu;)V
    .registers 4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->b:Lcom/google/android/maps/driveabout/vector/cu;

    if-ne p1, v0, :cond_10

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->c:Lcom/google/android/maps/driveabout/vector/cu;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f
.end method

.method static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/16 v4, 0xa

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_16

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x1

    if-ne v2, v0, :cond_19

    aput-object p0, v3, v1

    :goto_15
    return-object v3

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    move v0, v1

    :goto_1a
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2e

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_15
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;F)F
    .registers 5

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 18

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v1, :cond_2f

    if-nez p6, :cond_1b

    if-eqz p7, :cond_33

    :cond_1b
    const/4 v9, 0x1

    :goto_1c
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIIIZ)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    return-object v1

    :cond_33
    const/4 v9, 0x0

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 14

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    :cond_18
    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cx;->f()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cx;->g()I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cx;->f()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cx;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cx;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F
    .registers 11

    const/high16 v5, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZF)[F

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZF)[F
    .registers 14

    const v7, 0x40066666

    const/high16 v6, 0x4000

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v4

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v0, v4, v0

    const/high16 v4, 0x3f80

    sub-float v4, p5, v4

    mul-float/2addr v4, v3

    if-eqz p4, :cond_41

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_41

    const v5, 0x40866666

    add-float/2addr v2, v5

    add-float/2addr v1, v7

    add-float/2addr v0, v7

    :cond_41
    add-float v5, v1, v0

    add-float/2addr v3, v5

    div-float v5, v4, v6

    sub-float/2addr v1, v5

    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    const/4 v2, 0x2

    aput v1, v4, v2

    const/4 v1, 0x3

    aput v0, v4, v1

    return-object v4
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cs;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cx;->g()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;->a(I)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F
    .registers 11

    const/4 v2, 0x0

    const v1, 0x40066666

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [F

    array-length v0, v5

    if-nez v0, :cond_11

    move-object v0, v5

    :goto_10
    return-object v0

    :cond_11
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    if-eqz p4, :cond_2f

    move v0, v1

    :goto_21
    move v3, v0

    move v0, v2

    :goto_23
    array-length v4, v5

    if-ge v0, v4, :cond_31

    aget v4, v5, v0

    add-float/2addr v4, v3

    aput v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_23

    :cond_2f
    const/4 v0, 0x0

    goto :goto_21

    :cond_31
    if-eqz p4, :cond_40

    aget v0, v5, v2

    sub-float/2addr v0, v1

    aput v0, v5, v2

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget v2, v5, v0

    add-float/2addr v1, v2

    aput v1, v5, v0

    :cond_40
    move-object v0, v5

    goto :goto_10
.end method
