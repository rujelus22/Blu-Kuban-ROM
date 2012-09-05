.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuChangeOrderCurrency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceID:I

.field private mVi:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Landroid/content/Context;ILjava/util/List;)V
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
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    .line 720
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 722
    iput p3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->mResourceID:I

    .line 723
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    .line 725
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 731
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    .line 733
    .local v4, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    if-nez p2, :cond_84

    .line 735
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->mResourceID:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 741
    .local v0, ItemView:Landroid/widget/RelativeLayout;
    :goto_13
    const v6, 0x7f0b00d1

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 742
    .local v2, iconview:Landroid/widget/ImageView;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 743
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/view/View$OnLongClickListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 744
    new-instance v6, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 762
    const v6, 0x7f0b00d0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 763
    .local v5, textview:Landroid/widget/TextView;
    const v6, 0x7f0b00cf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 764
    .local v3, imageview:Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getFirstItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4e
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCountryName:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_88

    .line 767
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCountryName:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getSecondItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 769
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_76

    .line 771
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    :cond_76
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mFalgIDs:[I
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 765
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .end local v0           #ItemView:Landroid/widget/RelativeLayout;
    .end local v1           #i:I
    .end local v2           #iconview:Landroid/widget/ImageView;
    .end local v3           #imageview:Landroid/widget/ImageView;
    .end local v5           #textview:Landroid/widget/TextView;
    :cond_84
    move-object v0, p2

    .line 739
    check-cast v0, Landroid/widget/RelativeLayout;

    .restart local v0       #ItemView:Landroid/widget/RelativeLayout;
    goto :goto_13

    .line 776
    .restart local v1       #i:I
    .restart local v2       #iconview:Landroid/widget/ImageView;
    .restart local v3       #imageview:Landroid/widget/ImageView;
    .restart local v5       #textview:Landroid/widget/TextView;
    :cond_88
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getFirstItem()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_93

    .line 778
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :cond_93
    return-object v0
.end method
