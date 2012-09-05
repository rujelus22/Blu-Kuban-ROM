.class public Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StockSearchListAdapter.java"


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
    .line 35
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mItems:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mItems:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    move-object v4, p2

    .line 50
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_15

    .line 52
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 53
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030020

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 55
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 56
    .local v3, p:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    if-eqz v3, :cond_55

    .line 58
    const v6, 0x7f0b00c4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, addRowName:Landroid/widget/TextView;
    const v6, 0x7f0b00c5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, addRowExchange:Landroid/widget/TextView;
    const v6, 0x7f0b00c6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, addRowSymbol:Landroid/widget/TextView;
    if-eqz v1, :cond_43

    .line 64
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_43
    if-eqz v0, :cond_4c

    .line 68
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_4c
    if-eqz v2, :cond_55

    .line 72
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .end local v0           #addRowExchange:Landroid/widget/TextView;
    .end local v1           #addRowName:Landroid/widget/TextView;
    .end local v2           #addRowSymbol:Landroid/widget/TextView;
    :cond_55
    return-object v4
.end method
