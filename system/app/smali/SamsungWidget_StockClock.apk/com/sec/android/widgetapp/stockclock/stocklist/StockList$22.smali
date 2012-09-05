.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;
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
    .line 2137
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->val$resultObject:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2141
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2172
    :cond_9
    :goto_9
    return-void

    .line 2143
    :cond_a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2100(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    .line 2144
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z

    .line 2145
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->val$resultObject:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1302(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2146
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->val$resultObject:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 2148
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2150
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2152
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateIndicesRow(Ljava/util/ArrayList;)I

    .line 2153
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const v3, 0x7f030021

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2402(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    .line 2155
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 2157
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2500(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2160
    :cond_6d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    .line 2163
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2165
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$2700(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/lang/String;)V

    goto/16 :goto_9
.end method
