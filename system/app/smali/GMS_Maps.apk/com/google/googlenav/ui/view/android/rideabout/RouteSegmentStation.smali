.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
.source "SourceFile"


# instance fields
.field private final j:Landroid/graphics/Bitmap;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;I)V

    .line 37
    iput p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    .line 39
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    const v1, 0x7f0203c8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    .line 43
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    .line 44
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne p3, v0, :cond_23

    .line 45
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->b:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    .line 47
    :cond_23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    if-ne v0, v1, :cond_2b

    .line 54
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    .line 58
    :goto_f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->d:Lcom/google/googlenav/ui/view/android/rideabout/m;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-eq v0, v1, :cond_1c

    .line 59
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;II)V

    .line 61
    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;III)V

    .line 62
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    return-void

    .line 56
    :cond_2b
    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    iget v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;IIILandroid/graphics/Bitmap;)V

    goto :goto_f
.end method
