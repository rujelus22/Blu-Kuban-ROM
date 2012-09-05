.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1171
    :cond_8
    :goto_8
    return-void

    .line 1163
    :cond_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1902(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1165
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1167
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->storeStockData2QueryResultArray(Ljava/lang/Object;)V

    .line 1168
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1800(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V

    goto :goto_8
.end method
