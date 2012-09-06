.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
.source "SourceFile"


# instance fields
.field private final j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 35
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020222

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->j:Landroid/graphics/Bitmap;

    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->g:I

    .line 39
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->a:I

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->f:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->a(Landroid/graphics/Canvas;III)V

    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 48
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method
