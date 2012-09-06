.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;
.super Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
.source "SourceFile"


# instance fields
.field private final j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020220

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->j:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->setMinimumHeight(I)V

    .line 29
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->setMinimumHeight(I)V

    .line 43
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 35
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method
