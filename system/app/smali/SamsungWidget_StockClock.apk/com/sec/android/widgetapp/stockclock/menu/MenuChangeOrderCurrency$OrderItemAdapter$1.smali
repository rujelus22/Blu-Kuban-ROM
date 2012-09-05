.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;
.super Ljava/lang/Object;
.source "MenuChangeOrderCurrency.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

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

    .line 748
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 750
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z

    .line 751
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finalizeDrag()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    .line 758
    :cond_16
    :goto_16
    return v4

    .line 753
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 755
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method
