.class Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener$1;
.super Landroid/view/View$DragShadowBuilder;
.source "TabletFilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener$1;->this$1:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener$1;->this$1:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->mVideoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;->access$900(Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;)Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_11

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    :cond_11
    return-void
.end method
