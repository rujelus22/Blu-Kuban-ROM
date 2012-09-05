.class Lcom/google/googlenav/ui/by;
.super Landroid/text/style/ReplacementSpan;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/by;->a:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const-wide v2, 0x3fd999999999999aL

    invoke-virtual {v0, v2, v3}, Laf/b;->a(D)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/by;->b:I

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x8

    :goto_26
    sput v0, Lcom/google/googlenav/ui/by;->c:I

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x4

    :goto_33
    sput v0, Lcom/google/googlenav/ui/by;->d:I

    return-void

    :cond_36
    const/16 v0, 0xa

    goto :goto_26

    :cond_39
    move v0, v1

    goto :goto_33
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/by;->e:Ljava/lang/String;

    iput p2, p0, Lcom/google/googlenav/ui/by;->f:I

    if-eqz p3, :cond_e

    sget v0, Lcom/google/googlenav/ui/by;->c:I

    :goto_b
    iput v0, p0, Lcom/google/googlenav/ui/by;->g:I

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 18

    iget v1, p0, Lcom/google/googlenav/ui/by;->g:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    iget v4, p0, Lcom/google/googlenav/ui/by;->f:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/by;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/by;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ah()Landroid/graphics/Rect;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ah()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget v5, Lcom/google/googlenav/ui/by;->d:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int v5, p8, p6

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ah()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ai()Landroid/graphics/RectF;

    move-result-object v6

    add-int v7, p6, v5

    int-to-float v7, v7

    int-to-float v4, v4

    add-float/2addr v4, v1

    sub-int v5, p8, v5

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v6, v1, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ai()Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_66
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v2, p0, Lcom/google/googlenav/ui/by;->e:Ljava/lang/String;

    sget v3, Lcom/google/googlenav/ui/by;->d:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sget v3, Lcom/google/googlenav/ui/by;->b:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, p7

    move-object/from16 v0, p9

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_84
    invoke-static {}, Lcom/google/googlenav/ui/bw;->ai()Landroid/graphics/RectF;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/by;->a:I

    int-to-float v5, v5

    sget v6, Lcom/google/googlenav/ui/by;->a:I

    int-to-float v6, v6

    move-object/from16 v0, p9

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_66
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 10

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/by;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ah()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ah()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/by;->g:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/googlenav/ui/by;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
