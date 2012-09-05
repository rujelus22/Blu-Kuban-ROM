.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;
.super Landroid/os/Handler;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 1555
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1556
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "RESPONSE_BODY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    .local v2, responseBody:Ljava/lang/String;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1558
    .local v3, responseCode:I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_b3

    .line 1560
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseCityList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1561
    .local v1, lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 1562
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1565
    :goto_30
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1567
    :cond_38
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1568
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v4, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V

    .line 1583
    :goto_5c
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1584
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1587
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->notifyDataSetChanged()V

    .line 1588
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1589
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1599
    .end local v1           #lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_88
    :goto_88
    return-void

    .line 1564
    .restart local v1       #lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_89
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_30

    .line 1576
    :cond_94
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1577
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v4, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V

    .line 1578
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1581
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->disableEditField()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    goto :goto_5c

    .line 1593
    .end local v1           #lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_b3
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1594
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1596
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_88
.end method
