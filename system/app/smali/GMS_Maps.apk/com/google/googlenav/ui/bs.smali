.class Lcom/google/googlenav/ui/bs;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3652
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 3664
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bs;->d:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/bo;)V
    .registers 2
    .parameter

    .prologue
    .line 3652
    invoke-direct {p0}, Lcom/google/googlenav/ui/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 17
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
    .line 3669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3670
    int-to-float v0, p6

    iget v1, p0, Lcom/google/googlenav/ui/bs;->a:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    int-to-float v2, p8

    invoke-virtual {p1, p5, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3671
    iget v2, p0, Lcom/google/googlenav/ui/bs;->b:I

    iget v3, p0, Lcom/google/googlenav/ui/bs;->c:I

    int-to-float v5, p7

    iget-object v6, p0, Lcom/google/googlenav/ui/bs;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 3672
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3673
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
    .line 3677
    iput p3, p0, Lcom/google/googlenav/ui/bs;->b:I

    .line 3678
    iput p4, p0, Lcom/google/googlenav/ui/bs;->c:I

    .line 3679
    iget-object v0, p0, Lcom/google/googlenav/ui/bs;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 3680
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/bs;->a:I

    .line 3681
    iget v0, p0, Lcom/google/googlenav/ui/bs;->a:I

    return v0
.end method
