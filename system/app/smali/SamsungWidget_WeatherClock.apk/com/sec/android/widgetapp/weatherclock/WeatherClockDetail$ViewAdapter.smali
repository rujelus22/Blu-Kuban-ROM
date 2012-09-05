.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeatherClockDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAdapter"
.end annotation


# instance fields
.field private fl:Landroid/widget/FrameLayout;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "c"

    .prologue
    .line 2626
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2627
    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$002(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2629
    iget-object v1, p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    if-eqz v1, :cond_29

    .line 2631
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v1, p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 2632
    iget-object v1, p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2633
    iget-object v1, p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2631
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2637
    .end local v0           #i:I
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/widget/FrameLayout;

    iput-object v1, p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    .line 2638
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2639
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2643
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 2646
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_d
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2620
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_29

    .line 2653
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 2657
    :goto_28
    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "pos"

    .prologue
    .line 2663
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v10, -0x2

    .line 2668
    move v4, p1

    .line 2670
    .local v4, realPosition:I
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_1a

    .line 2671
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int v4, p1, v7

    .line 2673
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->getCount()I

    move-result v1

    .line 2674
    .local v1, count:I
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    if-eqz v7, :cond_3e

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    array-length v7, v7

    if-eq v7, v1, :cond_3e

    .line 2676
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    .local v0, arr$:[Landroid/widget/FrameLayout;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_31
    if-ge v2, v3, :cond_38

    aget-object v6, v0, v2

    .local v6, v:Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 2679
    .end local v6           #v:Landroid/view/View;
    :cond_38
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-array v8, v1, [Landroid/widget/FrameLayout;

    iput-object v8, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    .line 2682
    .end local v0           #arr$:[Landroid/widget/FrameLayout;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3e
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_50

    .line 2684
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$202(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 2687
    :cond_50
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 2689
    .local v5, selLocCity:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p1

    if-eqz v7, :cond_80

    .line 2691
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p1

    iput-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    .line 2692
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->initWeatherClockView(Landroid/view/View;)V

    .line 2704
    :cond_7d
    :goto_7d
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    return-object v7

    .line 2696
    :cond_80
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    .line 2697
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->initWeatherClockView(Landroid/view/View;)V

    .line 2698
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v7, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setUiWithDatabaseData(Ljava/lang/String;)V

    .line 2699
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2700
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    if-eqz v7, :cond_7d

    .line 2701
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;->fl:Landroid/widget/FrameLayout;

    aput-object v8, v7, p1

    goto :goto_7d
.end method
