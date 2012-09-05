.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;
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

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1910
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1911
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 1923
    :goto_d
    return-void

    .line 1914
    :cond_e
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1802(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Z)Z

    .line 1915
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1916
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    .line 1918
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateIndicesRow(Ljava/util/ArrayList;)I

    .line 1919
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeIndicesFlipper()V

    .line 1922
    :cond_30
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    goto :goto_d
.end method
