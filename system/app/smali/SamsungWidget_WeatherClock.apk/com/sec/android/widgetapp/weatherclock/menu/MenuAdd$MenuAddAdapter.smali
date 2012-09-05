.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;
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

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 2052
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    .line 2053
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2054
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->context:Landroid/content/Context;

    .line 2055
    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->items:Ljava/util/ArrayList;

    .line 2056
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2060
    move-object v3, p2

    .line 2061
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_15

    .line 2063
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 2065
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030024

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2067
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 2068
    .local v2, p:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    if-eqz v2, :cond_49

    .line 2070
    const v5, 0x7f0c0073

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2071
    .local v0, addRowCity:Landroid/widget/TextView;
    const v5, 0x7f0c0069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2072
    .local v1, addRowState:Landroid/widget/TextView;
    if-eqz v0, :cond_3a

    .line 2074
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    :cond_3a
    if-eqz v1, :cond_49

    .line 2078
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getProvider()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4a

    .line 2080
    const v5, 0x7f09002f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2088
    .end local v0           #addRowCity:Landroid/widget/TextView;
    .end local v1           #addRowState:Landroid/widget/TextView;
    :cond_49
    :goto_49
    return-object v3

    .line 2084
    .restart local v0       #addRowCity:Landroid/widget/TextView;
    .restart local v1       #addRowState:Landroid/widget/TextView;
    :cond_4a
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method
