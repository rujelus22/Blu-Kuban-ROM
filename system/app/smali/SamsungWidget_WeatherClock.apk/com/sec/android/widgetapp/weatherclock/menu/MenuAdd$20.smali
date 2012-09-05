.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;
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
    .line 1416
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f030024

    const/16 v4, 0x3e7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1419
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G_Btn response arrived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rt cd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_63

    .line 1424
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1425
    const-string v1, "flags"

    const/16 v2, -0x7530

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1426
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1427
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->startActivity(Landroid/content/Intent;)V

    .line 1428
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 1545
    :cond_62
    :goto_62
    return-void

    .line 1430
    :cond_63
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_7f

    .line 1432
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1433
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1434
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_62

    .line 1438
    :cond_7f
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_a4

    .line 1440
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1441
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1442
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/16 v2, 0x3f7

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20$1;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    goto :goto_62

    .line 1455
    :cond_a4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1e5

    .line 1457
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cityinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1459
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 1461
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_12e

    .line 1462
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1466
    :goto_cf
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_139

    .line 1471
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2302(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    .line 1472
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V

    .line 1473
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1475
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->notifyDataSetChanged()V

    .line 1485
    :goto_127
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    goto/16 :goto_62

    .line 1464
    :cond_12e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_cf

    .line 1480
    :cond_139
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1483
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V

    goto :goto_127

    .line 1499
    :cond_168
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1da

    .line 1500
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1503
    :goto_179
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_195

    .line 1506
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1508
    :cond_195
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2302(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    .line 1510
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1511
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1512
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1513
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->notifyDataSetChanged()V

    .line 1514
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    goto/16 :goto_62

    .line 1502
    :cond_1da
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_179

    .line 1516
    :cond_1e5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_213

    .line 1517
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1519
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1533
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_209

    .line 1534
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1536
    :cond_209
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v1, 0x7f09002a

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto/16 :goto_62

    .line 1540
    :cond_213
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_62

    .line 1541
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1542
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 1543
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    goto/16 :goto_62
.end method
