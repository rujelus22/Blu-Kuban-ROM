.class Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;
.super Ljava/lang/Object;
.source "FreeDrawOverlayView.java"

# interfaces
.implements Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public onMultiTouchDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchDrag(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string v0, "FreeDrawOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPenEvent : action down x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 54
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    iget v2, v2, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mPenMode:I

    if-ne v2, v5, :cond_4e

    .line 56
    const-string v2, "FreeDrawOverlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPenEvent : pen move : x: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 59
    .local v0, N:I
    if-lez v0, :cond_9a

    const/16 v2, 0x64

    if-ge v0, v2, :cond_9a

    .line 60
    const/4 v1, 0x0

    .local v1, j:I
    :goto_39
    if-lt v1, v0, :cond_4f

    .line 66
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$0(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$1(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenPosition([I[II)V

    .line 74
    .end local v0           #N:I
    .end local v1           #j:I
    :cond_4e
    :goto_4e
    return v5

    .line 61
    .restart local v0       #N:I
    .restart local v1       #j:I
    :cond_4f
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$0(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 62
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$1(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 63
    const-string v2, "FreeDrawOverlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPenEvent : pen hist_move x: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$0(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$1(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 67
    .end local v1           #j:I
    :cond_9a
    if-nez v0, :cond_4e

    .line 68
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$0(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    .line 69
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$1(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    .line 70
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$0(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    #getter for: Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->access$1(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenPosition([I[II)V

    goto :goto_4e
.end method

.method public onSingleTouchUp(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    .line 47
    const-string v0, "FreeDrawOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPenEvent : action up x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
