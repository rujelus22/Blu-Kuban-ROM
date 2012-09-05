.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1965
    :cond_8
    :goto_8
    return-void

    .line 1957
    :cond_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$702(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1959
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1961
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->storeStockData2QueryResultArray(Ljava/lang/Object;)V

    .line 1962
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)V

    goto :goto_8
.end method
