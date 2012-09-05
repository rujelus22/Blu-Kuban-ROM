.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1602
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1698
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1683
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 16
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const v10, 0x7f090025

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1605
    const/4 v0, 0x0

    .line 1607
    .local v0, Zip_code_check:Z
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1608
    .local v2, strCityName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1609
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5b

    .line 1610
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    if-eqz v3, :cond_4f

    .line 1612
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1613
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1616
    :goto_3d
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->notifyDataSetChanged()V

    .line 1617
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1680
    :cond_4f
    :goto_4f
    return-void

    .line 1615
    :cond_50
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_3d

    .line 1620
    :cond_5b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_4f

    .line 1622
    const-string v3, "^[0-9a-zA-Z\'-]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 1624
    :cond_73
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    if-eqz v3, :cond_7c

    .line 1626
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1628
    :cond_7c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1630
    .local v1, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v7, :cond_ef

    .line 1632
    const-string v3, "CITYNAME LIKE \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1633
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1634
    const-string v3, "%\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1643
    :goto_94
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v3

    if-nez v3, :cond_a8

    .line 1645
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$602(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 1648
    :cond_a8
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->searchCity(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    .line 1649
    const-string v3, "^[0-9]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 1651
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_fd

    if-nez v0, :cond_fd

    .line 1653
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1654
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_4f

    .line 1638
    :cond_ef
    const-string v3, "CITYNAME LIKE \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1639
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1640
    const-string v3, "%\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_94

    .line 1660
    :cond_fd
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_13f

    .line 1661
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1664
    :goto_10e
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1665
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1667
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1668
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1669
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4f

    .line 1663
    :cond_13f
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_10e

    .line 1674
    .end local v1           #buf:Ljava/lang/StringBuffer;
    :cond_14a
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1675
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_4f
.end method
