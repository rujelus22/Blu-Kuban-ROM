.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;
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
    .line 1238
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1242
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    .line 1254
    :goto_d
    return-void

    .line 1245
    :cond_e
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$202(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Z)Z

    .line 1246
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1247
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    .line 1249
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateIndicesRow(Ljava/util/ArrayList;)I

    .line 1250
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makeIndicesFlipper()V

    .line 1253
    :cond_30
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    goto :goto_d
.end method
