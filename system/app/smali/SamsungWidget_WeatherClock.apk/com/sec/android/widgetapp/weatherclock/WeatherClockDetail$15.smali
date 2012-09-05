.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setWebLink()V
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
    .line 2111
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 2114
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2116
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v4, 0x7f09001e

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 2160
    :goto_11
    return-void

    .line 2120
    :cond_12
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 2121
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapLocation:Ljava/lang/String;

    .line 2126
    :goto_32
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopHttpThread()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 2127
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->showRefreshDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 2129
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iput-boolean v6, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    .line 2131
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v3

    if-nez v3, :cond_54

    .line 2132
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2102(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 2134
    :cond_54
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    if-eqz v3, :cond_61

    .line 2135
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2137
    :cond_61
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    if-eqz v3, :cond_c0

    .line 2138
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2142
    :goto_6e
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getRegionCities(I)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    .line 2143
    const/4 v1, 0x0

    .line 2144
    .local v1, isin:Z
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    if-eqz v3, :cond_ca

    .line 2145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_84
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_ca

    .line 2146
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 2148
    const/4 v1, 0x1

    .line 2145
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 2123
    .end local v0           #i:I
    .end local v1           #isin:Z
    :cond_aa
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapLocation:Ljava/lang/String;

    goto/16 :goto_32

    .line 2140
    :cond_c0
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    goto :goto_6e

    .line 2151
    .restart local v1       #isin:Z
    :cond_ca
    if-nez v1, :cond_e9

    .line 2153
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    .line 2154
    .local v2, mapinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 2155
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setZoomlevel(I)V

    .line 2156
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    if-eqz v3, :cond_e9

    .line 2157
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    .end local v2           #mapinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    :cond_e9
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCities()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    goto/16 :goto_11
.end method
