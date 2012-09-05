.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 738
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Z)Z

    .line 739
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 740
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_86

    .line 772
    :cond_16
    :goto_16
    return v8

    .line 742
    :pswitch_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 743
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 744
    .local v2, y:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->processDragMove(II)V
    invoke-static {v3, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;II)V

    goto :goto_16

    .line 750
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_27
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finalizeDrag()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    .line 751
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iput-boolean v8, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->perform:Z

    goto :goto_16

    .line 756
    :cond_31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_6e

    .line 757
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finalizeDrag()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    .line 762
    :cond_3c
    :goto_3c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    goto :goto_16

    .line 765
    :pswitch_44
    const v3, 0x7f0c007a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 766
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_16

    .line 768
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iput-boolean v7, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->perform:Z

    goto :goto_16

    .line 758
    .end local v0           #iv:Landroid/widget/ImageView;
    :cond_6e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3c

    .line 759
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 740
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_27
        :pswitch_17
        :pswitch_27
    .end packed-switch

    .line 762
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_44
    .end packed-switch
.end method
