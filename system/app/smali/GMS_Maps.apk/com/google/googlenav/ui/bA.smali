.class Lcom/google/googlenav/ui/bA;
.super Landroid/text/style/ReplacementSpan;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bA;->d:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/bx;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bA;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 17

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, p6

    iget v1, p0, Lcom/google/googlenav/ui/bA;->a:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    int-to-float v2, p8

    invoke-virtual {p1, p5, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v2, p0, Lcom/google/googlenav/ui/bA;->b:I

    iget v3, p0, Lcom/google/googlenav/ui/bA;->c:I

    int-to-float v5, p7

    iget-object v6, p0, Lcom/google/googlenav/ui/bA;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7

    iput p3, p0, Lcom/google/googlenav/ui/bA;->b:I

    iput p4, p0, Lcom/google/googlenav/ui/bA;->c:I

    iget-object v0, p0, Lcom/google/googlenav/ui/bA;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/bA;->a:I

    iget v0, p0, Lcom/google/googlenav/ui/bA;->a:I

    return v0
.end method
