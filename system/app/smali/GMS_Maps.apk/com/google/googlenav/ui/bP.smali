.class Lcom/google/googlenav/ui/bp;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 3728
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bp;->a:I

    .line 3729
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const-wide v2, 0x3fd999999999999aL

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/Config;->a(D)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bp;->b:I

    .line 3731
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x8

    :goto_26
    sput v0, Lcom/google/googlenav/ui/bp;->c:I

    .line 3732
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x4

    :goto_33
    sput v0, Lcom/google/googlenav/ui/bp;->d:I

    return-void

    .line 3731
    :cond_36
    const/16 v0, 0xa

    goto :goto_26

    :cond_39
    move v0, v1

    .line 3732
    goto :goto_33
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3737
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 3738
    iput-object p1, p0, Lcom/google/googlenav/ui/bp;->e:Ljava/lang/String;

    .line 3739
    iput p2, p0, Lcom/google/googlenav/ui/bp;->f:I

    .line 3740
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 18
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
    .line 3745
    sget v1, Lcom/google/googlenav/ui/bp;->c:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    .line 3747
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 3748
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 3750
    iget v4, p0, Lcom/google/googlenav/ui/bp;->f:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3751
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3752
    iget-object v4, p0, Lcom/google/googlenav/ui/bp;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/bp;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Lcom/google/googlenav/ui/bn;->X()Landroid/graphics/Rect;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3753
    invoke-static {}, Lcom/google/googlenav/ui/bn;->X()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget v5, Lcom/google/googlenav/ui/bp;->d:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 3754
    sub-int v5, p8, p6

    invoke-static {}, Lcom/google/googlenav/ui/bn;->X()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 3755
    invoke-static {}, Lcom/google/googlenav/ui/bn;->Y()Landroid/graphics/RectF;

    move-result-object v6

    add-int v7, p6, v5

    int-to-float v7, v7

    int-to-float v4, v4

    add-float/2addr v4, v1

    sub-int v5, p8, v5

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v6, v1, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3761
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 3762
    invoke-static {}, Lcom/google/googlenav/ui/bn;->Y()Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3767
    :goto_66
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3768
    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3769
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 3770
    iget-object v2, p0, Lcom/google/googlenav/ui/bp;->e:Ljava/lang/String;

    sget v3, Lcom/google/googlenav/ui/bp;->d:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sget v3, Lcom/google/googlenav/ui/bp;->b:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, p7

    move-object/from16 v0, p9

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3771
    return-void

    .line 3764
    :cond_84
    invoke-static {}, Lcom/google/googlenav/ui/bn;->Y()Landroid/graphics/RectF;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/bp;->a:I

    int-to-float v5, v5

    sget v6, Lcom/google/googlenav/ui/bp;->a:I

    int-to-float v6, v6

    move-object/from16 v0, p9

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_66
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3776
    iget-object v0, p0, Lcom/google/googlenav/ui/bp;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/bp;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/bn;->X()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3779
    invoke-static {}, Lcom/google/googlenav/ui/bn;->X()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v1, Lcom/google/googlenav/ui/bp;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/googlenav/ui/bp;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
