.class Lcom/sec/android/widgetapp/dualclock/WCCities2$4;
.super Ljava/lang/Object;
.source "WCCities2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities2;->initControl()V
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
    .line 257
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

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
    .line 262
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-boolean v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->isDown:Z

    if-eqz v7, :cond_7

    .line 334
    :cond_6
    :goto_6
    return-void

    .line 268
    :cond_7
    :try_start_7
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_15} :catch_ba

    .line 276
    :goto_15
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/dualclock/ListItem;

    .line 278
    .local v5, item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    const-string v6, ""

    .line 280
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v6

    .line 282
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 286
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, arr:[Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    iput-object v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    .line 290
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 292
    .local v2, countries:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    const-string v8, "St. John\'s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    const-string v7, "Canada"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 293
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

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

    iput-object v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    .line 296
    :cond_67
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mCity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v1

    .line 298
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v8, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    iput v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->checkedTempUniqueId:I

    .line 300
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities2;->checkedTempUniqueId:I

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities2;->offSetByCity:I
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->access$502(Lcom/sec/android/widgetapp/dualclock/WCCities2;I)I

    .line 302
    invoke-virtual {v5}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getSelected()Z

    move-result v4

    .line 304
    .local v4, isChecked:Z
    if-nez v4, :cond_fc

    .line 308
    :try_start_88
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget v8, v8, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 310
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    if-nez v4, :cond_d7

    const/4 v8, 0x1

    :goto_a7
    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 312
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iput p3, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I
    :try_end_ae
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_ae} :catch_d9

    .line 331
    :goto_ae
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    const/4 v8, -0x1

    iput v8, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mDST:I

    .line 332
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->save()V

    goto/16 :goto_6

    .line 270
    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v2           #countries:Ljava/lang/String;
    .end local v4           #isChecked:Z
    .end local v5           #item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    .end local v6           #str:Ljava/lang/String;
    :catch_ba
    move-exception v3

    .line 272
    .local v3, ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

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

    .line 310
    .end local v3           #ie:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #arr:[Ljava/lang/String;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v2       #countries:Ljava/lang/String;
    .restart local v4       #isChecked:Z
    .restart local v5       #item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    .restart local v6       #str:Ljava/lang/String;
    :cond_d7
    const/4 v8, 0x0

    goto :goto_a7

    .line 314
    :catch_d9
    move-exception v3

    .line 316
    .restart local v3       #ie:Ljava/lang/IndexOutOfBoundsException;
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    if-nez v4, :cond_fa

    const/4 v8, 0x1

    :goto_f2
    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 320
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iput p3, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    goto :goto_ae

    .line 318
    :cond_fa
    const/4 v8, 0x0

    goto :goto_f2

    .line 326
    .end local v3           #ie:Ljava/lang/IndexOutOfBoundsException;
    :cond_fc
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v7, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v7, v4}, Lcom/sec/android/widgetapp/dualclock/ListItem;->setSelected(Z)V

    .line 328
    iget-object v7, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$4;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iput p3, v7, Lcom/sec/android/widgetapp/dualclock/WCCities2;->tempPos:I

    goto :goto_ae
.end method
