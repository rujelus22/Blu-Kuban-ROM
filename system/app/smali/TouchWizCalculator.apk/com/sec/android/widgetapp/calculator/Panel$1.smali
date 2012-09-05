.class Lcom/sec/android/widgetapp/calculator/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 316
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/calculator/Panel$State;->ANIMATING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v4, v5, :cond_f

    move v2, v3

    .line 363
    :cond_e
    :goto_e
    return v2

    .line 319
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 320
    .local v0, action:I
    if-nez v0, :cond_9d

    .line 322
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$102(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 325
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v5, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;
    invoke-static {v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$300(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-interface {v5, v6}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelClicked(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v5

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$202(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 326
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 329
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mBringToFront:Z
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$400(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 330
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->bringToFront()V

    .line 332
    :cond_40
    iput v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    .line 333
    iput v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    .line 334
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$500(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_64

    .line 335
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    if-ne v4, v2, :cond_8f

    .line 336
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    if-nez v4, :cond_8d

    :goto_62
    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    .line 340
    :cond_64
    :goto_64
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->setInitialPosition:Z

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 356
    :goto_69
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 357
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 360
    if-eq v0, v2, :cond_82

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8b

    .line 361
    :cond_82
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v2, v2, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->post(Ljava/lang/Runnable;)Z

    :cond_8b
    move v2, v3

    .line 363
    goto :goto_e

    :cond_8d
    move v1, v2

    .line 336
    goto :goto_62

    .line 338
    :cond_8f
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9b

    :goto_98
    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    goto :goto_64

    :cond_9b
    move v1, v2

    goto :goto_98

    .line 343
    :cond_9d
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 346
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->setInitialPosition:Z

    if-eqz v1, :cond_d8

    .line 347
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    mul-int/2addr v1, v4

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    .line 348
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    mul-int/2addr v1, v4

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    .line 349
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iget v5, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->setScroll(II)V

    .line 350
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->setInitialPosition:Z

    .line 351
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    .line 352
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    .line 354
    :cond_d8
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    int-to-float v1, v1

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    int-to-float v4, v4

    invoke-virtual {p2, v1, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_69
.end method
