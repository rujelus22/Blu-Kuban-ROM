.class public Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StockListCurrencyCountryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountry:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V
    .registers 5
    .parameter "context"
    .parameter "layoutid"
    .parameter
    .parameter "bool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mItems:Ljava/util/ArrayList;

    .line 29
    iput p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mViewId:I

    .line 30
    iput-boolean p4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mCountry:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 36
    move-object v8, p2

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 37
    .local v8, view:Landroid/widget/RelativeLayout;
    if-nez v8, :cond_18

    .line 39
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 40
    .local v7, vi:Landroid/view/LayoutInflater;
    iget v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mViewId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .end local v8           #view:Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 43
    .end local v7           #vi:Landroid/view/LayoutInflater;
    .restart local v8       #view:Landroid/widget/RelativeLayout;
    :cond_18
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    .line 44
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    if-eqz v2, :cond_73

    .line 49
    const v9, 0x7f0b0147

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 50
    .local v3, layout:Landroid/widget/LinearLayout;
    const v9, 0x7f0b0144

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 51
    .local v4, layout2:Landroid/widget/LinearLayout;
    const v9, 0x7f0b0149

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, country:Landroid/widget/TextView;
    const v9, 0x7f0b0148

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, symbol:Landroid/widget/TextView;
    const v9, 0x7f0b0146

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, country2:Landroid/widget/TextView;
    const v9, 0x7f0b0145

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 56
    .local v6, symbol2:Landroid/widget/TextView;
    iget-boolean v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->mCountry:Z

    if-eqz v9, :cond_74

    .line 58
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getFirstItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getSecondItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .end local v0           #country:Landroid/widget/TextView;
    .end local v1           #country2:Landroid/widget/TextView;
    .end local v3           #layout:Landroid/widget/LinearLayout;
    .end local v4           #layout2:Landroid/widget/LinearLayout;
    .end local v5           #symbol:Landroid/widget/TextView;
    .end local v6           #symbol2:Landroid/widget/TextView;
    :cond_73
    :goto_73
    return-object v8

    .line 65
    .restart local v0       #country:Landroid/widget/TextView;
    .restart local v1       #country2:Landroid/widget/TextView;
    .restart local v3       #layout:Landroid/widget/LinearLayout;
    .restart local v4       #layout2:Landroid/widget/LinearLayout;
    .restart local v5       #symbol:Landroid/widget/TextView;
    .restart local v6       #symbol2:Landroid/widget/TextView;
    :cond_74
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getSecondItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getFirstItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_73
.end method
