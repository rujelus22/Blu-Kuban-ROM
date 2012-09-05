.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;
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
    .line 1798
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1800
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1801
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1803
    .local v1, y:F
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F
    invoke-static {v2, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4002(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 1804
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F
    invoke-static {v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 1806
    const/4 v2, 0x0

    return v2
.end method
