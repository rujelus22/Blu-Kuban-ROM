.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 979
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 981
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 982
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Z)Z

    .line 983
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 989
    :goto_19
    return-void

    .line 985
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Z)Z

    .line 986
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 987
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finalizeDrag()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    goto :goto_19
.end method
