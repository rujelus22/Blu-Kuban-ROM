.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuChangeOrders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderItemAdapter"
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
.field private mResourceID:I

.field private mVi:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    .line 632
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 634
    iput p3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->mResourceID:I

    .line 635
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    .line 637
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 644
    .local v1, item:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    if-nez p2, :cond_34

    .line 645
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 650
    .local v0, ItemView:Landroid/widget/LinearLayout;
    :goto_13
    const v4, 0x7f0c0079

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 651
    .local v3, textview:Landroid/widget/TextView;
    const v4, 0x7f0c001a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 653
    .local v2, textStateview:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    return-object v0

    .end local v0           #ItemView:Landroid/widget/LinearLayout;
    .end local v2           #textStateview:Landroid/widget/TextView;
    .end local v3           #textview:Landroid/widget/TextView;
    :cond_34
    move-object v0, p2

    .line 647
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0       #ItemView:Landroid/widget/LinearLayout;
    goto :goto_13
.end method
