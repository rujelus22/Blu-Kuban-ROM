.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;
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

.field final synthetic val$param:Ljava/lang/Object;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->val$param:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->val$result:Ljava/lang/Object;

    iput p4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2035
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->val$param:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 2036
    .local v1, params:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 2037
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    aget-object v4, v1, v8

    check-cast v4, Ljava/lang/String;

    .line 2038
    .local v4, symbol:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/String;

    .line 2040
    .local v2, period:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2096
    :cond_1d
    :goto_1d
    return-void

    .line 2046
    :cond_1e
    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->val$resultCode:I

    if-nez v5, :cond_27

    .line 2048
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v5, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->storeGraphData2QueryResultArray(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2050
    :cond_27
    if-eqz v2, :cond_1d

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 2052
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 2055
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v5, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->saveQueryResultArray2Database(Ljava/lang/String;)Z

    move-result v3

    .line 2057
    .local v3, saveResult:Z
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v5

    if-eqz v5, :cond_98

    .line 2059
    if-eqz v3, :cond_66

    .line 2062
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->forceSetLayout()V

    .line 2063
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo(Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)Z

    .line 2066
    :cond_66
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_98

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_98

    .line 2068
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2072
    :cond_98
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    if-eqz v5, :cond_be

    .line 2074
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b7

    .line 2076
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshIndice()V

    goto/16 :goto_1d

    .line 2080
    :cond_b7
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    goto/16 :goto_1d

    .line 2085
    :cond_be
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    goto/16 :goto_1d

    .line 2092
    .end local v3           #saveResult:Z
    :cond_c5
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method
