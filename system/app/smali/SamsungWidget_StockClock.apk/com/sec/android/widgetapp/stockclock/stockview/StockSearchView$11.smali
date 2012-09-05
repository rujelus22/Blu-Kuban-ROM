.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;
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

.field final synthetic val$param:Ljava/lang/Object;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->val$param:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->val$result:Ljava/lang/Object;

    iput p4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1100
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->val$param:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 1101
    .local v1, params:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1102
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/String;

    .line 1104
    .local v2, period:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1146
    :goto_18
    return-void

    .line 1110
    :cond_19
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->val$resultCode:I

    if-nez v3, :cond_2a

    .line 1112
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1113
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->storeGraphData2QueryResultArray(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 1119
    :cond_2a
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 1121
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z
    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1302(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Z)Z

    .line 1122
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->updateBasicStockInfo()Z
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z

    .line 1123
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mCurrentPeriod:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->selectTab(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V

    .line 1125
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 1127
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_74

    .line 1129
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->refreshIndice()V

    goto :goto_18

    .line 1133
    :cond_74
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    goto :goto_18

    .line 1138
    :cond_7a
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    goto :goto_18

    .line 1143
    :cond_80
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1800(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V

    goto :goto_18
.end method
