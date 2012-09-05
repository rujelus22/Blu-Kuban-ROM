.class Lcom/sec/android/widgetapp/dualclock/WCCities2$7;
.super Ljava/lang/Object;
.source "WCCities2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities2;->setCityList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V
    .registers 2
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 815
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-boolean v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isDown:Z

    if-eqz v6, :cond_8

    .line 865
    :cond_7
    :goto_7
    return-void

    .line 818
    :cond_8
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/dualclock/ListItem;

    .line 819
    .local v4, item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    const-string v5, ""

    .line 821
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v5

    .line 823
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 827
    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, arr:[Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    aget-object v8, v0, v7

    iput-object v8, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    .line 831
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v1

    .line 833
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v8, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    iput v8, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->checkedTempUniqueId:I

    .line 835
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities2;->checkedTempUniqueId:I

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities2;->offSetByCity:I
    invoke-static {v6, v8}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->access$502(Lcom/sec/android/widgetapp/dualclock/WCCities2;I)I

    .line 837
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getSelected()Z

    move-result v3

    .line 839
    .local v3, isChecked:Z
    if-nez v3, :cond_99

    .line 842
    :try_start_49
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    if-eq p3, v6, :cond_70

    .line 843
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    if-nez v3, :cond_5c

    const/4 v7, 0x1

    :cond_5c
    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 844
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v6, v3}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V
    :try_end_70
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_70} :catch_8c

    .line 860
    :cond_70
    :goto_70
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    const/4 v7, -0x1

    iput v7, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDST:I

    .line 861
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->save()V

    .line 863
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "dualclock.add_city"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iput p3, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    goto/16 :goto_7

    .line 846
    :catch_8c
    move-exception v2

    .line 848
    .local v2, ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 853
    .end local v2           #ie:Ljava/lang/IndexOutOfBoundsException;
    :cond_99
    :try_start_99
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    if-eq p3, v6, :cond_70

    .line 854
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v6, v3}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V
    :try_end_ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_99 .. :try_end_ac} :catch_ad

    goto :goto_70

    .line 856
    :catch_ad
    move-exception v2

    .line 857
    .restart local v2       #ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method
