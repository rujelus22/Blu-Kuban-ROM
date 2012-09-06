.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
.source "SourceFile"


# instance fields
.field private final j:I

.field private final k:I

.field private final l:Landroid/graphics/Bitmap;

.field private final m:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;I)V

    .line 35
    iput p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->j:I

    .line 36
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02042a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->l:Landroid/graphics/Bitmap;

    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    .line 39
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->g:I

    .line 40
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f0203c7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->m:Landroid/graphics/Bitmap;

    .line 43
    return-void
.end method


# virtual methods
.method public a(IIF)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    if-ne p1, v0, :cond_e

    .line 65
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    add-int/2addr v0, p1

    .line 67
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    add-int/2addr v0, p1

    goto :goto_d
.end method

.method public i()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->j:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    .line 51
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->k:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->f:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    .line 52
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->j:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;II)V

    .line 53
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a(Landroid/graphics/Canvas;III)V

    .line 54
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method
