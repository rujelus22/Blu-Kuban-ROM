.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;


# instance fields
.field private final j:Landroid/graphics/Bitmap;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;I)V
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;II)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;)V

    iput p5, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iput p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->e:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020353

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    if-ne p3, v0, :cond_29

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->b:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    :cond_29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    :goto_f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->k:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;II)V

    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;->a(Landroid/graphics/Canvas;III)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    return-void

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
