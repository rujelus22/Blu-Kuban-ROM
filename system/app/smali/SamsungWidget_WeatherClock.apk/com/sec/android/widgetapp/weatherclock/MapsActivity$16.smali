.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;
.super Landroid/os/Handler;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field resultArrived:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->resultArrived:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const v7, 0x7f09001d

    const v6, -0x140b4

    const/4 v5, 0x1

    .line 814
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, -0x13d30

    if-ne v3, v4, :cond_1e

    .line 816
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1d

    .line 818
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 867
    :cond_1d
    :goto_1d
    return-void

    .line 821
    :cond_1e
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_31

    .line 823
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->resultArrived:Z

    if-nez v3, :cond_1d

    .line 825
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 826
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-static {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_1d

    .line 831
    :cond_31
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->resultArrived:Z

    .line 832
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESPONSE_BODY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, body:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 835
    .local v2, result:I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_88

    .line 837
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseCityList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 838
    .local v1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    if-eqz v1, :cond_1d

    .line 840
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_69

    .line 842
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 843
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v4, 0x7f090025

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_1d

    .line 847
    :cond_69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_7c

    .line 849
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->perform_Acity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_1d

    .line 851
    :cond_7c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1d

    .line 853
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showCities(Ljava/util/ArrayList;)V
    invoke-static {v3, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V

    goto :goto_1d

    .line 863
    .end local v1           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_88
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 864
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-static {v3, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_1d
.end method
