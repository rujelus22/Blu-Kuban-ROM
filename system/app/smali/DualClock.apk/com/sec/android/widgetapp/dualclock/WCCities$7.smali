.class Lcom/sec/android/widgetapp/dualclock/WCCities$7;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;->setCityList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 852
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-boolean v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->isDown:Z

    if-eqz v6, :cond_9

    .line 904
    :cond_8
    :goto_8
    return-void

    .line 855
    :cond_9
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/dualclock/ListItem;

    .line 857
    .local v4, item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    const-string v5, ""

    .line 859
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v5

    .line 861
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 865
    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, arr:[Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    aget-object v9, v0, v7

    iput-object v9, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->mCity:Ljava/lang/String;

    .line 869
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v9, v9, Lcom/sec/android/widgetapp/dualclock/WCCities;->mCity:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v1

    .line 871
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v9, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    iput v9, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->checkedTempUniqueId:I

    .line 873
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v9, v9, Lcom/sec/android/widgetapp/dualclock/WCCities;->checkedTempUniqueId:I

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities;->offSetByCity:I
    invoke-static {v6, v9}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$502(Lcom/sec/android/widgetapp/dualclock/WCCities;I)I

    .line 875
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getSelected()Z

    move-result v3

    .line 877
    .local v3, isChecked:Z
    if-nez v3, :cond_a6

    .line 880
    :try_start_4a
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    if-eq p3, v6, :cond_71

    .line 881
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    if-nez v3, :cond_5d

    move v7, v8

    :cond_5d
    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 882
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v6, v3}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V
    :try_end_71
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_71} :catch_99

    .line 898
    :cond_71
    :goto_71
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v7, -0x1

    iput v7, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->mDST:I

    .line 899
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/WCCities;->save()V

    .line 901
    new-instance v6, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->setUserSettingFlag(Z)V

    .line 902
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "dualclock.add_city"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/dualclock/WCCities;->sendBroadcast(Landroid/content/Intent;)V

    .line 903
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iput p3, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    goto/16 :goto_8

    .line 884
    :catch_99
    move-exception v2

    .line 886
    .local v2, ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 891
    .end local v2           #ie:Ljava/lang/IndexOutOfBoundsException;
    :cond_a6
    :try_start_a6
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    if-eq p3, v6, :cond_71

    .line 892
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v6, v3}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V
    :try_end_b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a6 .. :try_end_b9} :catch_ba

    goto :goto_71

    .line 894
    :catch_ba
    move-exception v2

    .line 895
    .restart local v2       #ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$7;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v6, v6, Lcom/sec/android/widgetapp/dualclock/WCCities;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method
