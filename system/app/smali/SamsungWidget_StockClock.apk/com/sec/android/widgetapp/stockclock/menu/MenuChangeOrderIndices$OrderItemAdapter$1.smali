.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;
.super Ljava/lang/Object;
.source "MenuChangeOrderIndices.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

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

    .line 781
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 783
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z

    .line 784
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finalizeDrag()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    .line 791
    :cond_16
    :goto_16
    return v4

    .line 786
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 788
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method
