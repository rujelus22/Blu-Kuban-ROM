.class Lcom/google/googlenav/ui/bD;
.super Landroid/text/style/ReplacementSpan;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v0, 0x95

    const/16 v1, 0xd8

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bD;->a:I

    const/16 v0, 0xb7

    invoke-static {v0, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bD;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/bD;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/bD;->d:I

    iput v0, p0, Lcom/google/googlenav/ui/bD;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/bD;->d:I

    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1c

    iput v0, p0, Lcom/google/googlenav/ui/bD;->c:I

    iget v0, p0, Lcom/google/googlenav/ui/bD;->c:I

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/google/googlenav/ui/bD;->d:I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 20

    const/high16 v1, 0x4120

    add-float v2, p5, v1

    add-int/lit8 v7, p7, -0xc

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/google/googlenav/ui/bD;->c:I

    iget v3, p0, Lcom/google/googlenav/ui/bD;->d:I

    add-int v8, v1, v3

    iget v1, p0, Lcom/google/googlenav/ui/bD;->d:I

    mul-int/lit8 v1, v1, 0x64

    div-int v9, v1, v8

    sget v1, Lcom/google/googlenav/ui/bD;->b:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v7

    int-to-float v1, v9

    add-float v4, v2, v1

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p1

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v9

    add-float/2addr v2, v1

    const/4 v9, 0x1

    const/4 v1, -0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v7

    int-to-float v1, v9

    add-float v4, v2, v1

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p1

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v9

    add-float/2addr v2, v1

    iget v1, p0, Lcom/google/googlenav/ui/bD;->c:I

    mul-int/lit8 v1, v1, 0x64

    div-int v8, v1, v8

    sget v1, Lcom/google/googlenav/ui/bD;->a:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v7

    int-to-float v1, v8

    add-float v4, v2, v1

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p1

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v8

    add-float/2addr v1, v2

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7

    const/16 v0, 0x78

    return v0
.end method
