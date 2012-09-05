.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V
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
    .line 1381
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 1384
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1100(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1002(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;I)I

    .line 1385
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1000(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)I

    move-result v0

    packed-switch v0, :pswitch_data_128

    .line 1436
    :cond_18
    :goto_18
    return-void

    .line 1388
    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1200(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 1394
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1395
    const-string v2, "selSymbol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(ILandroid/content/Intent;)V

    .line 1397
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto :goto_18

    .line 1401
    :pswitch_40
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 1402
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 1403
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1404
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v0

    .line 1405
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const-class v5, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1406
    const-string v4, "symbol"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1407
    const-string v1, "name"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    const-string v1, "exchange"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/16 v1, 0x14

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_18

    .line 1414
    :pswitch_a5
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c2

    .line 1415
    :cond_b9
    const-string v0, ""

    const-string v1, "onItemClick : mMyCurrencyRows is null or size 0"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1419
    :cond_c2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1420
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstSymbol()Ljava/lang/String;

    move-result-object v2

    .line 1421
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondSymbol()Ljava/lang/String;

    move-result-object v0

    .line 1422
    const-string v3, "selFirstSymbol"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    const-string v2, "selSecondSymbol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    const-string v0, "currencyDefault"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1500(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    const-string v0, "loadCountryNames"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1428
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->bCheck:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Z

    move-result v0

    if-nez v0, :cond_11f

    .line 1429
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1431
    :cond_11f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->bCheck:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1702(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z

    goto/16 :goto_18

    .line 1385
    nop

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_19
        :pswitch_40
        :pswitch_a5
    .end packed-switch
.end method
