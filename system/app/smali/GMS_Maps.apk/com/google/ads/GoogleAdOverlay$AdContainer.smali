.class Lcom/google/ads/GoogleAdOverlay$AdContainer;
.super Landroid/widget/FrameLayout;
.source "GoogleAdOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/GoogleAdOverlay;


# direct methods
.method public constructor <init>(Lcom/google/ads/GoogleAdOverlay;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    .line 67
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    .line 92
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    #calls: Lcom/google/ads/GoogleAdOverlay;->sendCloseMessage()V
    invoke-static {v0}, Lcom/google/ads/GoogleAdOverlay;->access$100(Lcom/google/ads/GoogleAdOverlay;)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 73
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 75
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_27

    if-ltz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay$AdContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_21

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay$AdContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_27

    .line 77
    :cond_21
    iget-object v3, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    #calls: Lcom/google/ads/GoogleAdOverlay;->sendOutsideTouchMessage(II)V
    invoke-static {v3, v0, v1}, Lcom/google/ads/GoogleAdOverlay;->access$000(Lcom/google/ads/GoogleAdOverlay;II)V

    .line 83
    :goto_26
    return v2

    .line 79
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 80
    iget-object v3, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    #calls: Lcom/google/ads/GoogleAdOverlay;->sendOutsideTouchMessage(II)V
    invoke-static {v3, v0, v1}, Lcom/google/ads/GoogleAdOverlay;->access$000(Lcom/google/ads/GoogleAdOverlay;II)V

    goto :goto_26

    .line 83
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_26
.end method
