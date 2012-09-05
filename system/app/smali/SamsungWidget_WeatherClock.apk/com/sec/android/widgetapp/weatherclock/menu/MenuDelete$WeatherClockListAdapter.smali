.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;
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

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 554
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    .line 555
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 556
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->context:Landroid/content/Context;

    .line 557
    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->items:Ljava/util/ArrayList;

    .line 558
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 561
    move-object v4, p2

    .line 562
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_15

    .line 563
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 564
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f03001d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 566
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 567
    .local v2, p:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    if-eqz v2, :cond_58

    .line 568
    const v6, 0x7f0c0019

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 569
    .local v1, nameTextView:Landroid/widget/TextView;
    const v6, 0x7f0c001a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 570
    .local v3, stateTextView:Landroid/widget/TextView;
    const v6, 0x7f0c001b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 571
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 575
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 581
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #nameTextView:Landroid/widget/TextView;
    .end local v3           #stateTextView:Landroid/widget/TextView;
    :cond_58
    :goto_58
    return-object v4

    .line 577
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v1       #nameTextView:Landroid/widget/TextView;
    .restart local v3       #stateTextView:Landroid/widget/TextView;
    :cond_59
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_58
.end method
