.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;
.super Ljava/lang/Object;
.source "MenuChangeOrderIndices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1212
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1214
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z

    .line 1215
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1217
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1230
    :cond_21
    :goto_21
    return-void

    .line 1222
    :cond_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z

    .line 1223
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1225
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1227
    :cond_38
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z

    .line 1228
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finalizeDrag()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    goto :goto_21
.end method
