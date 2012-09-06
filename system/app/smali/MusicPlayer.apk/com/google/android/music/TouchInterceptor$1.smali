.class Lcom/google/android/music/TouchInterceptor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TouchInterceptor;


# direct methods
.method constructor <init>(Lcom/google/android/music/TouchInterceptor;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #getter for: Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/music/TouchInterceptor;->access$000(Lcom/google/android/music/TouchInterceptor;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 84
    const/high16 v2, 0x447a

    cmpl-float v2, p3, v2

    if-lez v2, :cond_46

    .line 85
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #getter for: Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/google/android/music/TouchInterceptor;->access$100(Lcom/google/android/music/TouchInterceptor;)Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    .local v0, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #getter for: Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/music/TouchInterceptor;->access$000(Lcom/google/android/music/TouchInterceptor;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_46

    .line 89
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #calls: Lcom/google/android/music/TouchInterceptor;->stopDragging()V
    invoke-static {v2}, Lcom/google/android/music/TouchInterceptor;->access$200(Lcom/google/android/music/TouchInterceptor;)V

    .line 90
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #getter for: Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;
    invoke-static {v2}, Lcom/google/android/music/TouchInterceptor;->access$400(Lcom/google/android/music/TouchInterceptor;)Lcom/google/android/music/TouchInterceptor$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #getter for: Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I
    invoke-static {v3}, Lcom/google/android/music/TouchInterceptor;->access$300(Lcom/google/android/music/TouchInterceptor;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 91
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor$1;->this$0:Lcom/google/android/music/TouchInterceptor;

    #calls: Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lcom/google/android/music/TouchInterceptor;->access$500(Lcom/google/android/music/TouchInterceptor;Z)V

    .line 97
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_46
    :goto_46
    return v1

    :cond_47
    const/4 v1, 0x0

    goto :goto_46
.end method
