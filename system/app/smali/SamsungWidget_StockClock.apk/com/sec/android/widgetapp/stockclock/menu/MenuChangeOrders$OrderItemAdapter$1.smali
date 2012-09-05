.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 782
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 784
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    .line 785
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finalizeDrag()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    .line 792
    :cond_16
    :goto_16
    return v4

    .line 787
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 789
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method
