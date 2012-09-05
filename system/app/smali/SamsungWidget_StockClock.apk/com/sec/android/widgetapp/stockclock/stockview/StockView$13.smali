.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2104
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2121
    :cond_8
    :goto_8
    return-void

    .line 2113
    :cond_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$702(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2115
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2117
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->storeStockData2QueryResultArray(Ljava/lang/Object;)V

    .line 2118
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V

    goto :goto_8
.end method
