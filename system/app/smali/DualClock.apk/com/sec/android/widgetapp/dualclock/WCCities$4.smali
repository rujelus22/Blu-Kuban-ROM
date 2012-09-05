.class Lcom/sec/android/widgetapp/dualclock/WCCities$4;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;->initControl()V
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
    .line 291
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

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
    .line 296
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-boolean v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->isDown:Z

    if-eqz v7, :cond_7

    .line 370
    :cond_6
    :goto_6
    return-void

    .line 302
    :cond_7
    :try_start_7
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_15} :catch_c7

    .line 310
    :goto_15
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/dualclock/ListItem;

    .line 312
    .local v5, item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    const-string v6, ""

    .line 314
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v6

    .line 316
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 320
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, arr:[Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    iput-object v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->mCity:Ljava/lang/String;

    .line 324
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 326
    .local v2, countries:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->mCity:Ljava/lang/String;

    const-string v8, "St. John\'s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    const-string v7, "Canada"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 327
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->mCity:Ljava/lang/String;

    .line 330
    :cond_67
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities;->mCity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v1

    .line 332
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v8, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    iput v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->checkedTempUniqueId:I

    .line 334
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities;->checkedTempUniqueId:I

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities;->offSetByCity:I
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$502(Lcom/sec/android/widgetapp/dualclock/WCCities;I)I

    .line 336
    invoke-virtual {v5}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getSelected()Z

    move-result v4

    .line 338
    .local v4, isChecked:Z
    if-nez v4, :cond_109

    .line 342
    :try_start_88
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 344
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    if-nez v4, :cond_e4

    const/4 v8, 0x1

    :goto_a7
    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 346
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iput p3, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I
    :try_end_ae
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_ae} :catch_e6

    .line 365
    :goto_ae
    new-instance v7, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->setUserSettingFlag(Z)V

    .line 367
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v8, -0x1

    iput v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->mDST:I

    .line 368
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/dualclock/WCCities;->save()V

    goto/16 :goto_6

    .line 304
    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v2           #countries:Ljava/lang/String;
    .end local v4           #isChecked:Z
    .end local v5           #item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    .end local v6           #str:Ljava/lang/String;
    :catch_c7
    move-exception v3

    .line 306
    .local v3, ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IndexOutOfBoundsException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 344
    .end local v3           #ie:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #arr:[Ljava/lang/String;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v2       #countries:Ljava/lang/String;
    .restart local v4       #isChecked:Z
    .restart local v5       #item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    .restart local v6       #str:Ljava/lang/String;
    :cond_e4
    const/4 v8, 0x0

    goto :goto_a7

    .line 348
    :catch_e6
    move-exception v3

    .line 350
    .restart local v3       #ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    if-nez v4, :cond_107

    const/4 v8, 0x1

    :goto_ff
    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 354
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iput p3, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    goto :goto_ae

    .line 352
    :cond_107
    const/4 v8, 0x0

    goto :goto_ff

    .line 360
    .end local v3           #ie:Ljava/lang/IndexOutOfBoundsException;
    :cond_109
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v7, v4}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 362
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iput p3, v7, Lcom/sec/android/widgetapp/dualclock/WCCities;->tempPos:I

    goto :goto_ae
.end method
