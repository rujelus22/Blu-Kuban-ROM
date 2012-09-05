.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1403
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1501
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1486
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

    .line 1406
    const/4 v0, 0x0

    .line 1408
    .local v0, Zip_code_check:Z
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1409
    .local v2, strCityName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1410
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_62

    .line 1411
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    if-eqz v3, :cond_56

    .line 1413
    const-string v3, "strCityName.length() == 0"

    const-string v4, "citylist != null"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 1415
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1418
    :goto_44
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->notifyDataSetChanged()V

    .line 1419
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1483
    :cond_56
    :goto_56
    return-void

    .line 1417
    :cond_57
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_44

    .line 1422
    :cond_62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_56

    .line 1424
    const-string v3, "^[0-9a-zA-Z\'-]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 1426
    :cond_7a
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    if-eqz v3, :cond_83

    .line 1428
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1430
    :cond_83
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1431
    .local v1, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v7, :cond_11e

    .line 1433
    const-string v3, "CITYNAME LIKE \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1435
    const-string v3, "%\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    :goto_9b
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v3

    if-nez v3, :cond_af

    .line 1447
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$502(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 1450
    :cond_af
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->searchCity(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    .line 1451
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v3, "^[0-9]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 1454
    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12d

    if-nez v0, :cond_12d

    .line 1456
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_56

    .line 1439
    :cond_11e
    const-string v3, "CITYNAME LIKE \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1441
    const-string v3, "%\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_9b

    .line 1463
    :cond_12d
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_16f

    .line 1464
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1467
    :goto_13e
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1468
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1470
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1471
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1472
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->notifyDataSetChanged()V

    goto/16 :goto_56

    .line 1466
    :cond_16f
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_13e

    .line 1477
    .end local v1           #buf:Ljava/lang/StringBuffer;
    :cond_17a
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1478
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_56
.end method
