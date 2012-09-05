.class Lcom/android/browser/NavScreen$LearnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/NavScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LearnGestureListener"
.end annotation


# instance fields
.field mContext:Lcom/android/browser/NavScreen;

.field final synthetic this$0:Lcom/android/browser/NavScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/browser/NavScreen$LearnGestureListener;->this$0:Lcom/android/browser/NavScreen;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 503
    const-string v0, "onDownd"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 510
    const-string v0, "Nav"

    const-string v1, "LearnGestureListener :onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/browser/NavScreen$LearnGestureListener;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/browser/NavTabScroller;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 518
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LearnGestureListener :onScroll distanceX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " distanceY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/browser/NavScreen$LearnGestureListener;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/browser/NavTabScroller;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public setContext(Lcom/android/browser/NavScreen;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/browser/NavScreen$LearnGestureListener;->mContext:Lcom/android/browser/NavScreen;

    .line 500
    return-void
.end method
