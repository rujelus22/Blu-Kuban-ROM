.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->onCreate(Landroid/os/Bundle;)V
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
    .line 375
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 378
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 380
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v3, 0x7f09001e

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 405
    :cond_10
    :goto_10
    return-void

    .line 384
    :cond_11
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 385
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 387
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getMccCode()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, mcc:Ljava/lang/String;
    const/4 v1, 0x7

    .line 391
    .local v1, region:I
    if-eqz v0, :cond_2f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 392
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->REGION_POINTS:[[I

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->point:[I

    .line 399
    :goto_3a
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->point:[I

    if-eqz v2, :cond_10

    if-ltz v1, :cond_10

    .line 401
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getRegionCities(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    .line 402
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    .line 403
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCities()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    goto :goto_10

    .line 395
    :cond_5b
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getRegionByMCC(Ljava/lang/String;)I

    move-result v1

    .line 396
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->REGION_POINTS:[[I

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->point:[I

    goto :goto_3a
.end method
