.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;
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

.field final synthetic val$resultObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->val$resultObject:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2031
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2052
    :goto_8
    return-void

    .line 2033
    :cond_9
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2100(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    .line 2034
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z

    .line 2036
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->val$resultObject:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2037
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    const/4 v1, 0x0

    .line 2038
    .local v1, result:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    .line 2040
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->saveStockMainInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Ljava/util/ArrayList;)I

    move-result v1

    .line 2043
    :cond_2d
    const/16 v2, -0x5a

    if-ne v1, v2, :cond_3c

    .line 2045
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 2046
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto :goto_8

    .line 2050
    :cond_3c
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2200(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    goto :goto_8
.end method
