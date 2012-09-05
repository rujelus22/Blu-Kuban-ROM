.class public Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 4
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
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mItems:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mItems:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    move-object/from16 v9, p2

    .line 53
    .local v9, v:Landroid/view/View;
    if-nez v9, :cond_16

    .line 55
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 56
    .local v10, vi:Landroid/view/LayoutInflater;
    const v11, 0x7f030038

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 58
    .end local v10           #vi:Landroid/view/LayoutInflater;
    :cond_16
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 59
    .local v4, p:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    if-eqz v9, :cond_118

    if-eqz v4, :cond_118

    .line 61
    const v11, 0x7f0b00c7

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, nameTextView:Landroid/widget/TextView;
    const v11, 0x7f0b013f

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 63
    .local v6, priceTextView:Landroid/widget/TextView;
    const v11, 0x7f0b0141

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, changeTextView:Landroid/widget/TextView;
    const v11, 0x7f0b0143

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, changePercentTextView:Landroid/widget/TextView;
    const v11, 0x7f0b0140

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 66
    .local v8, rowUpImg:Landroid/widget/ImageView;
    const v11, 0x7f0b0142

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 68
    .local v7, rowPlusImg:Landroid/widget/ImageView;
    if-eqz v3, :cond_118

    if-eqz v6, :cond_118

    if-eqz v1, :cond_118

    if-eqz v0, :cond_118

    if-eqz v8, :cond_118

    if-eqz v7, :cond_118

    .line 70
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdown()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, changeVal:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changePercentFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changePercentFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, percent:Ljava/lang/String;
    if-eqz v5, :cond_119

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090050

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_119

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090050

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_cb
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_130

    .line 87
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ad

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 90
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ad

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    const v11, 0x7f020094

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    const v11, 0x7f020099

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ad

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    .end local v0           #changePercentTextView:Landroid/widget/TextView;
    .end local v1           #changeTextView:Landroid/widget/TextView;
    .end local v2           #changeVal:Ljava/lang/String;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v5           #percent:Ljava/lang/String;
    .end local v6           #priceTextView:Landroid/widget/TextView;
    .end local v7           #rowPlusImg:Landroid/widget/ImageView;
    .end local v8           #rowUpImg:Landroid/widget/ImageView;
    :cond_118
    :goto_118
    return-object v9

    .line 82
    .restart local v0       #changePercentTextView:Landroid/widget/TextView;
    .restart local v1       #changeTextView:Landroid/widget/TextView;
    .restart local v2       #changeVal:Ljava/lang/String;
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v5       #percent:Ljava/lang/String;
    .restart local v6       #priceTextView:Landroid/widget/TextView;
    .restart local v7       #rowPlusImg:Landroid/widget/ImageView;
    .restart local v8       #rowUpImg:Landroid/widget/ImageView;
    :cond_119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cb

    .line 95
    :cond_130
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_17e

    .line 97
    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200af

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 100
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200af

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 101
    const v11, 0x7f02009e

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v11, 0x7f02009e

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200af

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_118

    .line 105
    :cond_17e
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_1c9

    .line 107
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ae

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 110
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ae

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ae

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_118

    .line 119
    :cond_1c9
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200b0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200b0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    const v11, 0x7f0200a9

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    const v11, 0x7f0200a3

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200b0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_118
.end method
