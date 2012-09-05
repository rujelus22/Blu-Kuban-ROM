.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;
.super Landroid/os/Handler;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1355
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1356
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "RESPONSE_BODY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, responseBody:Ljava/lang/String;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1359
    .local v3, responseCode:I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_b3

    .line 1361
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseCityList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1362
    .local v1, lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 1363
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1366
    :goto_31
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-ne v4, v8, :cond_94

    .line 1368
    :cond_39
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v4, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Z)V

    .line 1384
    :goto_5d
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1385
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1388
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->notifyDataSetChanged()V

    .line 1389
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1390
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1400
    .end local v1           #lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_88
    :goto_88
    return-void

    .line 1365
    .restart local v1       #lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_89
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_31

    .line 1377
    :cond_94
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1378
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v4, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Z)V

    .line 1379
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1382
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->disableEditField()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    goto :goto_5d

    .line 1394
    .end local v1           #lstResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_b3
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1395
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1397
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_88
.end method
