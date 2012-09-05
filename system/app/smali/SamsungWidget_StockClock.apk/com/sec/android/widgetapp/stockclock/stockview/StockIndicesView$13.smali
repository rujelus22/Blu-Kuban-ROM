.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;
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

.field final synthetic val$param:Ljava/lang/Object;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->val$param:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->val$result:Ljava/lang/Object;

    iput p4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1874
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->val$param:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 1875
    .local v1, params:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1876
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    aget-object v4, v1, v10

    check-cast v4, Ljava/lang/String;

    .line 1877
    .local v4, symbol:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/String;

    .line 1879
    .local v2, period:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1940
    :cond_1d
    :goto_1d
    return-void

    .line 1885
    :cond_1e
    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->val$resultCode:I

    if-nez v5, :cond_27

    .line 1887
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v5, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->storeGraphData2QueryResultArray(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1889
    :cond_27
    if-eqz v2, :cond_1d

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 1891
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 1894
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v5, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->saveQueryResultArray2Database(Ljava/lang/String;)Z

    move-result v3

    .line 1896
    .local v3, saveResult:Z
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v5

    if-eqz v5, :cond_d5

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_d5

    .line 1898
    if-eqz v3, :cond_ab

    .line 1900
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->forceSetLayout()V

    .line 1901
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v6

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateStockGraph(Landroid/view/View;)V
    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/view/View;)V

    .line 1902
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo()Z
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Z

    .line 1903
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 1906
    :cond_ab
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_d5

    .line 1908
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1912
    :cond_d5
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 1914
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_111

    .line 1916
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10a

    .line 1918
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshIndice()V

    goto/16 :goto_1d

    .line 1922
    :cond_10a
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->closeProgressDialog()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    goto/16 :goto_1d

    .line 1928
    :cond_111
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->closeProgressDialog()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    goto/16 :goto_1d

    .line 1936
    .end local v3           #saveResult:Z
    :cond_118
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method
