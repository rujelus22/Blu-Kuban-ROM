.class Lcom/android/browser/NavScreen$4;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 281
    const-string v6, "Nav"

    const-string v7, "NavScreen :mPageIndicatorView onTouch"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    iget-object v6, v6, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 283
    .local v0, count:I
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    .line 284
    .local v2, mPageIndicatorViewWidth:I
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 285
    .local v1, mPageIndicatorViewHeight:I
    div-int v3, v2, v0

    .line 286
    .local v3, mPageIndicatorWidth:I
    const/4 v4, 0x0

    .line 287
    .local v4, newselectedPage:I
    const/4 v5, 0x0

    .line 289
    .local v5, selectedPage:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_35

    .line 292
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z
    invoke-static {v6, v8}, Lcom/android/browser/NavScreen;->access$402(Lcom/android/browser/NavScreen;Z)Z

    .line 321
    :cond_34
    :goto_34
    return v8

    .line 294
    :cond_35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v8, v6, :cond_79

    .line 297
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z
    invoke-static {v6}, Lcom/android/browser/NavScreen;->access$400(Lcom/android/browser/NavScreen;)Z

    move-result v6

    if-ne v6, v8, :cond_34

    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    iget-object v6, v6, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v6}, Lcom/android/browser/NavTabScroller;->getIsScrollingToSelectedPage()Z

    move-result v6

    if-nez v6, :cond_34

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v3

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 300
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    iget-object v6, v6, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v6}, Lcom/android/browser/NavTabScroller;->getmSelectedPosition()I

    move-result v5

    .line 301
    int-to-float v6, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_73

    int-to-float v6, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_73

    .line 304
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    invoke-virtual {v6, v4, v5}, Lcom/android/browser/NavScreen;->setscrollToChild(II)Z

    .line 306
    :cond_73
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z
    invoke-static {v6, v9}, Lcom/android/browser/NavScreen;->access$402(Lcom/android/browser/NavScreen;Z)Z

    goto :goto_34

    .line 310
    :cond_79
    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v6, v7, :cond_34

    .line 313
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/android/browser/NavScreen;->access$500(Lcom/android/browser/NavScreen;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 315
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z
    invoke-static {v6}, Lcom/android/browser/NavScreen;->access$400(Lcom/android/browser/NavScreen;)Z

    move-result v6

    if-ne v6, v8, :cond_34

    .line 316
    iget-object v6, p0, Lcom/android/browser/NavScreen$4;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z
    invoke-static {v6, v9}, Lcom/android/browser/NavScreen;->access$402(Lcom/android/browser/NavScreen;Z)Z

    goto :goto_34
.end method
