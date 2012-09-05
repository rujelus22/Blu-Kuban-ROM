.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

.field final synthetic val$param:Ljava/lang/Object;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1823
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->val$param:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->val$result:Ljava/lang/Object;

    iput p4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 1826
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->val$param:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 1827
    .local v1, params:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1828
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    aget-object v4, v1, v7

    check-cast v4, Ljava/lang/String;

    .line 1829
    .local v4, symbol:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/String;

    .line 1831
    .local v2, period:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1894
    :goto_1d
    return-void

    .line 1837
    :cond_1e
    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->val$resultCode:I

    if-nez v5, :cond_27

    .line 1839
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v5, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->storeGraphData2QueryResultArray(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1845
    :cond_27
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1848
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v5, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->saveQueryResultArray2Database(Ljava/lang/String;)Z

    move-result v3

    .line 1849
    .local v3, saveResult:Z
    if-eqz v3, :cond_6d

    .line 1851
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 1852
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 1853
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->notifyDataSetChanged()V

    .line 1855
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->httpHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;)V

    const-wide/16 v7, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1869
    :cond_6d
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    if-eqz v5, :cond_91

    .line 1871
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8b

    .line 1873
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshIndice()V

    goto :goto_1d

    .line 1877
    :cond_8b
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    goto :goto_1d

    .line 1882
    :cond_91
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    goto :goto_1d

    .line 1887
    .end local v3           #saveResult:Z
    :cond_97
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v5

    if-eqz v5, :cond_a8

    .line 1889
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1891
    :cond_a8
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method
