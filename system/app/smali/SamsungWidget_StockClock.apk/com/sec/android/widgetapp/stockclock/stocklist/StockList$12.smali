.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 2
    .parameter

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v7, 0x1

    .line 1474
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_18

    .line 1506
    :cond_17
    :goto_17
    return-void

    .line 1477
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 1478
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasIndices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1480
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    .line 1483
    :cond_48
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v0

    if-lt v0, v4, :cond_7d

    .line 1485
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1495
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iput-boolean v7, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->isIndicesExceeded:Z

    goto :goto_17

    .line 1499
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addIndicesRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1502
    const-string v1, "tab"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivity(Landroid/content/Intent;)V

    .line 1504
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_17
.end method
