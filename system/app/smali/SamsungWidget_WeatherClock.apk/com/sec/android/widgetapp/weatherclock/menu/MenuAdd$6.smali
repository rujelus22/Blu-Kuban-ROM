.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->onCreate(Landroid/os/Bundle;)V
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
    .line 380
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 385
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v2, 0x7f09001e

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 414
    :cond_10
    :goto_10
    return-void

    .line 389
    :cond_11
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    .line 390
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 392
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getMccCode()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, mcc:Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 396
    :cond_2e
    const-string v1, ""

    const-string v2, "useEur"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->REGION_POINTS:[[I

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->point:[I

    .line 408
    :goto_40
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->point:[I

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->region:I

    if-ltz v1, :cond_10

    .line 410
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->region:I

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getRegionCities(I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    .line 411
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    .line 412
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCities()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    goto :goto_10

    .line 403
    :cond_69
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getRegionByMCC(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->region:I

    .line 405
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->REGION_POINTS:[[I

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->region:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->point:[I

    goto :goto_40
.end method
