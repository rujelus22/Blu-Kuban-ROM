.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAddAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
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
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1800
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    .line 1801
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1802
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->context:Landroid/content/Context;

    .line 1803
    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->items:Ljava/util/ArrayList;

    .line 1804
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1808
    move-object v3, p2

    .line 1809
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_15

    .line 1811
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1813
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1815
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1816
    .local v2, p:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    if-eqz v2, :cond_49

    .line 1818
    const v5, 0x7f0c0083

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1819
    .local v0, addRowCity:Landroid/widget/TextView;
    const v5, 0x7f0c0084

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1820
    .local v1, addRowState:Landroid/widget/TextView;
    if-eqz v0, :cond_3a

    .line 1822
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    :cond_3a
    if-eqz v1, :cond_49

    .line 1826
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getProvider()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4a

    .line 1828
    const v5, 0x7f09002f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1836
    .end local v0           #addRowCity:Landroid/widget/TextView;
    .end local v1           #addRowState:Landroid/widget/TextView;
    :cond_49
    :goto_49
    return-object v3

    .line 1832
    .restart local v0       #addRowCity:Landroid/widget/TextView;
    .restart local v1       #addRowState:Landroid/widget/TextView;
    :cond_4a
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method
