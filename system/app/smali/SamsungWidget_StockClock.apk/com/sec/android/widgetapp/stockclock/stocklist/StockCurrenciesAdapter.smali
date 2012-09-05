.class public Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StockCurrenciesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryName:[Ljava/lang/String;

.field private mFalgIDs:[I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 8
    .parameter "context"
    .parameter "layoutid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;>;"
    const/16 v3, 0x8

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "USD"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "JPY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KRW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mCountryName:[Ljava/lang/String;

    .line 22
    new-array v0, v3, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mFalgIDs:[I

    .line 28
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mItems:Ljava/util/ArrayList;

    .line 30
    return-void

    .line 22
    nop

    :array_3e
    .array-data 0x4
        0x60t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    move-object v7, p2

    .line 43
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_15

    .line 45
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 46
    .local v8, vi:Landroid/view/LayoutInflater;
    const v9, 0x7f030025

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 48
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;

    .line 49
    .local v4, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;
    if-eqz v4, :cond_16d

    .line 51
    const v9, 0x7f0b0104

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, countryName:Landroid/widget/TextView;
    const v9, 0x7f0b0105

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, price:Landroid/widget/TextView;
    const v9, 0x7f0b0106

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 54
    .local v2, flag:Landroid/widget/ImageView;
    const v9, 0x7f0b0107

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, countryName2:Landroid/widget/TextView;
    const v9, 0x7f0b0108

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 56
    .local v6, price2:Landroid/widget/TextView;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 57
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 58
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstCounName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondCounName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstPrice()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondPrice()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstChangePercent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f6

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstChangePercent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_f6

    .line 64
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200b0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
    :goto_a4
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondChangePercent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_131

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondChangePercent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_131

    .line 77
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200b0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 88
    :goto_cc
    const/4 v3, 0x0

    .local v3, i:I
    :goto_cd
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mCountryName:[Ljava/lang/String;

    array-length v9, v9

    if-ge v3, v9, :cond_16d

    .line 90
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondCounName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f3

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondCounName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mCountryName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 92
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mFalgIDs:[I

    aget v9, v9, v3

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 66
    .end local v3           #i:I
    :cond_f6
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstChangePercent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11f

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getFirstChangePercent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_11f

    .line 68
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200ad

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_a4

    .line 72
    :cond_11f
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200af

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_a4

    .line 79
    :cond_131
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondChangePercent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15b

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getSecondChangePercent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_15b

    .line 81
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200ad

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_cc

    .line 85
    :cond_15b
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200af

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_cc

    .line 96
    .end local v0           #countryName:Landroid/widget/TextView;
    .end local v1           #countryName2:Landroid/widget/TextView;
    .end local v2           #flag:Landroid/widget/ImageView;
    .end local v5           #price:Landroid/widget/TextView;
    .end local v6           #price2:Landroid/widget/TextView;
    :cond_16d
    return-object v7
.end method
