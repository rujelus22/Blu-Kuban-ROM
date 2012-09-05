.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;
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

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2156
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2159
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2160
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    .line 2171
    :goto_d
    return-void

    .line 2163
    :cond_e
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1502(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Z)Z

    .line 2164
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2165
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    .line 2167
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateIndicesRow(Ljava/util/ArrayList;)I

    .line 2168
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeIndicesFlipper()V

    .line 2170
    :cond_30
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    goto :goto_d
.end method
