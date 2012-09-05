.class public Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WeatherClockList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherClockListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    .line 653
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 654
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->context:Landroid/content/Context;

    .line 655
    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->items:Ljava/util/ArrayList;

    .line 656
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 669
    move-object v3, p2

    .line 671
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_5

    if-nez p1, :cond_17

    .line 673
    :cond_5
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 674
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 676
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_17
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 677
    .local v2, p:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    if-eqz v2, :cond_45

    .line 679
    const v5, 0x7f0c0068

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 680
    .local v0, addRowCity:Landroid/widget/TextView;
    const v5, 0x7f0c0069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 682
    .local v1, addRowState:Landroid/widget/TextView;
    if-eqz v0, :cond_3c

    .line 684
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :cond_3c
    if-eqz v1, :cond_45

    .line 688
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    .end local v0           #addRowCity:Landroid/widget/TextView;
    .end local v1           #addRowState:Landroid/widget/TextView;
    :cond_45
    return-object v3
.end method
