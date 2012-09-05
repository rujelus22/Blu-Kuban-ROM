.class Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;
.super Ljava/lang/Object;
.source "PaintSelectorPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "event"

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, bRet:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_33

    .line 367
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 368
    .local v2, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 369
    .local v1, x:F
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mBottomContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$5(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_2d

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mBottomContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$5(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_33

    .line 371
    :cond_2d
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->dismiss()V

    .line 372
    const/4 v0, 0x1

    .line 375
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_33
    return v0
.end method
