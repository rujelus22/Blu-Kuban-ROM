.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
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
    const v5, 0x7f0c001d

    .line 426
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_9e

    .line 428
    check-cast p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3, p2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setPosition(ILandroid/view/View;)V

    .line 434
    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$102(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, lastUpdateString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .end local v0           #lastUpdateString:Ljava/lang/String;
    :cond_88
    if-eqz p2, :cond_9d

    .line 443
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 444
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 447
    :cond_9d
    return-void

    .line 430
    .restart local p1       #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_9e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt p3, v1, :cond_14

    .line 432
    check-cast p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3, p2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setPosition(ILandroid/view/View;)V

    goto/16 :goto_14
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
