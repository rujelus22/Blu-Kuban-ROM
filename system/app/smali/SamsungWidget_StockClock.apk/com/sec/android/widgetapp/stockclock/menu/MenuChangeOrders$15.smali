.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1211
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1224
    :goto_9
    return-void

    .line 1212
    :cond_a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1214
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    .line 1215
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 1219
    :cond_23
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    .line 1220
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    .line 1222
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finalizeDrag()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    goto :goto_9
.end method
