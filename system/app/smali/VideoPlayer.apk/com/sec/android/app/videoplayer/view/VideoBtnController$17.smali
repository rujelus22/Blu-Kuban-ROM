.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$17;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$17;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 2008
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 2009
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 2011
    .local v1, y:F
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$17;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F
    invoke-static {v2, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 2012
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$17;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F
    invoke-static {v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4502(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 2014
    const/4 v2, 0x0

    return v2
.end method
