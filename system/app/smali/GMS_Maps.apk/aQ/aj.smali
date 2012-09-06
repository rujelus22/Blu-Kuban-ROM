.class LaQ/aj;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# static fields
.field private static final a:Landroid/graphics/RectF;


# instance fields
.field private final b:I

.field private final c:Lcom/google/googlenav/cn;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 285
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, LaQ/aj;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/cn;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 299
    iput-object p1, p0, LaQ/aj;->c:Lcom/google/googlenav/cn;

    .line 300
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, LaQ/aj;->d:Z

    .line 301
    iput p2, p0, LaQ/aj;->b:I

    .line 302
    return-void

    .line 300
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 315
    iget-boolean v1, p0, LaQ/aj;->d:Z

    if-eqz v1, :cond_33

    .line 316
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    const/high16 v1, -0x100

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    :goto_12
    sub-int v1, p5, p3

    add-int/lit8 v1, v1, 0x1

    .line 323
    iget v2, p0, LaQ/aj;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 326
    sget-object v2, LaQ/aj;->a:Landroid/graphics/RectF;

    add-int v3, p3, v1

    int-to-float v3, v3

    iget v4, p0, LaQ/aj;->b:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    sget-object v1, LaQ/aj;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 328
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    return-void

    .line 319
    :cond_33
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    iget-object v1, p0, LaQ/aj;->c:Lcom/google/googlenav/cn;

    invoke-virtual {v1}, Lcom/google/googlenav/cn;->l()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 19
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
    .line 334
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 335
    invoke-direct/range {v1 .. v7}, LaQ/aj;->a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    .line 336
    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    iget v0, p0, LaQ/aj;->b:I

    return v0
.end method
