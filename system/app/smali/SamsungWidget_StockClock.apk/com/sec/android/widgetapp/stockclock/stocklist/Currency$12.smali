.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;
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
    .line 1732
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1735
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1763
    :cond_9
    :goto_9
    return-void

    .line 1738
    :cond_a
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1740
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1742
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->performGetGraphData(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1745
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    const/4 v1, 0x0

    .line 1747
    .local v1, result:I
    if-eqz v0, :cond_49

    .line 1750
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1752
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->saveStocCurrencykMainInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Ljava/util/ArrayList;)I

    move-result v1

    .line 1755
    :cond_3a
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    .line 1758
    :cond_49
    const/16 v2, -0x5a

    if-ne v1, v2, :cond_9

    .line 1760
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setResult(I)V

    .line 1761
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->finish()V

    goto :goto_9
.end method
