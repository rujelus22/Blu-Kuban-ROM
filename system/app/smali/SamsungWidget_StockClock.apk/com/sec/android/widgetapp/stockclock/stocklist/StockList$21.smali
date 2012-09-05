.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 2
    .parameter

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2101
    :goto_8
    return-void

    .line 2097
    :cond_9
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2100(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    .line 2098
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z

    .line 2100
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadCurrencyList()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    goto :goto_8
.end method
