.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAdapter"
.end annotation


# instance fields
.field private convertView:[Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field private mGraphDataLength:I

.field private realPosition:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 2048
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1979
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    .line 1980
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    .line 2049
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2050
    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 2051
    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_37

    .line 2053
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 2055
    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2053
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2058
    .end local v0           #i:I
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    .line 2059
    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1975
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->switchItem()V

    return-void
.end method

.method private drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 15
    .parameter "graphData"
    .parameter "symbol"
    .parameter "range"
    .parameter "v"

    .prologue
    const/16 v9, 0x8

    const v8, 0x7f0b00f7

    const v7, 0x7f0b00f0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2203
    const v2, 0x7f0b00f6

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    .line 2204
    .local v1, lineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v2

    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    .line 2206
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    if-gt v2, v6, :cond_70

    .line 2208
    invoke-virtual {p4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2209
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2210
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2211
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2213
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v2

    const v3, 0x12c00

    if-ne v2, v3, :cond_60

    .line 2214
    const v2, 0x7f0b00ef

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 2263
    :goto_5f
    return-void

    .line 2216
    :cond_60
    const v2, 0x7f0b00ef

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const v3, 0x7f02007b

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    goto :goto_5f

    .line 2222
    :cond_70
    invoke-virtual {p4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2223
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2224
    invoke-virtual {v1, v5}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setVisibility(I)V

    .line 2225
    const v2, 0x7f0b00ef

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const v3, 0x7f02004f

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 2226
    invoke-virtual {p4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2228
    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setCurrencyData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 2230
    const v2, 0x7f0b00f2

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2232
    iget-object v2, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f0b00f2

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v2, v6, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2235
    const v2, 0x7f0b00f3

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v3, v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2237
    iget-object v2, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v2, v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f0b00f3

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v2, v6, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2240
    const v2, 0x7f0b00f4

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v4, 0x2

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2242
    iget-object v2, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f0b00f4

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v2, v6, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2244
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I
    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3102(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I

    .line 2245
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    div-int/lit8 v0, v2, 0x1

    .line 2246
    .local v0, gap:I
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    if-lez v2, :cond_161

    if-nez v0, :cond_161

    .line 2247
    const/4 v0, 0x1

    .line 2248
    :cond_161
    if-nez v0, :cond_16c

    .line 2249
    invoke-virtual {p4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2250
    :cond_16c
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_1a0

    .line 2252
    invoke-virtual {p4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2253
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    add-int/2addr v3, v0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3102(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I

    .line 2254
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    .line 2261
    :goto_195
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5f

    .line 2258
    :cond_1a0
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->mGraphDataLength:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    goto :goto_195
.end method

.method private initStockClockView(Landroid/view/View;I)V
    .registers 10
    .parameter "v"
    .parameter "position"

    .prologue
    const v6, 0x7f0b00ed

    const v5, 0x7f0b00eb

    const v4, 0x7f090050

    const/16 v3, 0x78

    const/4 v2, 0x1

    .line 2354
    if-eqz p1, :cond_f2

    .line 2356
    const v0, 0x7f0b00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_36

    .line 2357
    const v0, 0x7f0b00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2358
    const v0, 0x7f0b00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onScrollTocuchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2360
    :cond_36
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2361
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2362
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2363
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2364
    const v0, 0x7f0b00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2365
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2366
    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onClickToListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2368
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2379
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2381
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x7a

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2382
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2383
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x7a

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2384
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2386
    :cond_f2
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const v2, 0x7f0b00d5

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->leftArrowImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3302(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2387
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const v2, 0x7f0b00d6

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->rightArrowImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3402(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2388
    return-void
.end method

.method private makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;
    .registers 12
    .parameter "string"
    .parameter "tag"
    .parameter "imgID"
    .parameter "view"

    .prologue
    const v6, 0x7f0b00ef

    .line 2132
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2133
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 2134
    .local v1, layout:Landroid/widget/LinearLayout;
    const/4 v2, -0x1

    .line 2135
    .local v2, layoutId:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2137
    const v2, 0x7f030026

    .line 2154
    :cond_25
    :goto_25
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2156
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    const v4, 0x7f0b0109

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2158
    .local v3, tab:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2159
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2164
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    invoke-virtual {v5, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f0b00f0

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2166
    return-object v3

    .line 2139
    .end local v3           #tab:Landroid/widget/TextView;
    :cond_5e
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2140
    const v2, 0x7f030027

    goto :goto_25

    .line 2142
    :cond_71
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 2143
    const v2, 0x7f030028

    goto :goto_25

    .line 2145
    :cond_84
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2146
    const v2, 0x7f030029

    goto :goto_25

    .line 2148
    :cond_97
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 2149
    const v2, 0x7f03002a

    goto/16 :goto_25

    .line 2151
    :cond_ab
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2152
    const v2, 0x7f03002b

    goto/16 :goto_25
.end method

.method private makeTab(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const/4 v9, 0x3

    const v8, 0x7f0b00ef

    const/4 v7, 0x0

    const v6, 0x7f0200b9

    const/4 v5, 0x1

    .line 2171
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 2173
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2174
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2175
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2176
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2177
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2178
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2180
    const/4 v1, 0x0

    .line 2181
    .local v1, nCurrentTabIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d9
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_113

    .line 2183
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$3000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 2185
    move v1, v0

    .line 2181
    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 2189
    :cond_113
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2191
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2199
    return-void
.end method

.method private switchItem()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 2327
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v2

    if-nez v2, :cond_f4

    move v2, v3

    :goto_c
    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$302(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I

    .line 2329
    const/4 v1, 0x1

    .line 2330
    .local v1, second:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v2

    if-eqz v2, :cond_19

    .line 2331
    const/4 v1, 0x0

    .line 2334
    :cond_19
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v4

    aget-object v0, v2, v4

    .line 2335
    .local v0, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v4

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeFlipper(Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V
    invoke-static {v2, v0, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V

    .line 2336
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 2337
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$402(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 2338
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 2339
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 2343
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2344
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1802(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Z)Z

    .line 2345
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->executeRefresh()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 2349
    :goto_f3
    return-void

    .line 2327
    .end local v0           #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .end local v1           #second:I
    :cond_f4
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 2347
    .restart local v0       #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .restart local v1       #second:I
    :cond_f7
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_f3
.end method

.method private updateGraphWithDb(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 6
    .parameter "symbol"
    .parameter "period"
    .parameter "v"

    .prologue
    .line 2267
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 2268
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 2269
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 2270
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2064
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 2067
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_27

    .line 2069
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2073
    :goto_26
    return v0

    :cond_27
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_26
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1975
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2080
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 2083
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3e

    .line 2085
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 2088
    :goto_3d
    return-object v0

    :cond_3e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "pos"

    .prologue
    .line 2094
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v5, -0x2

    .line 2099
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    .line 2101
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_10

    .line 2102
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 2105
    :cond_10
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2c

    .line 2106
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    .line 2109
    :cond_2c
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    array-length v2, v2

    if-ge p1, v2, :cond_4d

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v2, v2, p1

    if-eqz v2, :cond_4d

    .line 2111
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v3, v3, p1

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2112
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v2, v2, p1

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2126
    :goto_4c
    return-object v2

    .line 2116
    :cond_4d
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2117
    .local v0, fl:Landroid/widget/RelativeLayout;
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->initStockClockView(Landroid/view/View;I)V

    .line 2118
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    aget-object v1, v2, v3

    .line 2119
    .local v1, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeFlipper(Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V
    invoke-static {v2, v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V

    .line 2121
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->makeTab(Landroid/view/View;)V

    .line 2122
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->realPosition:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2123
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aput-object v0, v2, p1

    .line 2125
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    .line 2126
    goto :goto_4c
.end method

.method public refreshAllList()V
    .registers 11

    .prologue
    const v9, 0x7f0b00f6

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0b00e5

    .line 1983
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    if-eqz v4, :cond_131

    .line 1985
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_131

    .line 1987
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    if-eqz v4, :cond_12d

    .line 1989
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 1990
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    if-eqz v4, :cond_48

    .line 1992
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->close()V

    .line 1993
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1995
    :cond_48
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1996
    .local v2, ll1:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_5b

    .line 1998
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1999
    const/4 v2, 0x0

    .line 2002
    :cond_5b
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2003
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 2004
    .local v0, host:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 2005
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 2006
    .local v3, sc1:Landroid/widget/ScrollView;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_c6

    .line 2008
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2009
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_c6

    .line 2011
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2014
    :cond_c6
    invoke-virtual {v0}, Landroid/widget/TabHost;->clearFocus()V

    .line 2015
    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->setFocusable(Z)V

    .line 2016
    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2017
    invoke-virtual {v0}, Landroid/widget/TabHost;->removeAllViews()V

    .line 2018
    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2019
    invoke-virtual {v0}, Landroid/widget/TabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_e6

    .line 2021
    invoke-virtual {v0}, Landroid/widget/TabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2023
    :cond_e6
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2024
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2025
    const/4 v0, 0x0

    .line 2026
    if-eqz v3, :cond_117

    .line 2027
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2028
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2029
    invoke-virtual {v3}, Landroid/widget/ScrollView;->clearFocus()V

    .line 2030
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 2031
    invoke-virtual {v3}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 2032
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_113

    .line 2034
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2036
    :cond_113
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2037
    const/4 v3, 0x0

    .line 2039
    :cond_117
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2040
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2041
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->convertView:[Landroid/view/View;

    aput-object v7, v4, v1

    .line 1985
    .end local v0           #host:Landroid/widget/TabHost;
    .end local v2           #ll1:Landroid/widget/LinearLayout;
    .end local v3           #sc1:Landroid/widget/ScrollView;
    :cond_12d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 2045
    .end local v1           #i:I
    :cond_131
    return-void
.end method

.method public selectTab(Ljava/lang/String;Landroid/view/View;I)V
    .registers 11
    .parameter "period"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b00ef

    .line 2274
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2500(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2500(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2323
    :cond_3c
    :goto_3c
    return-void

    .line 2280
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 2282
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2602(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 2283
    const/4 v1, 0x0

    .line 2284
    .local v1, periodNum:I
    const-string v2, "1d"

    if-ne p1, v2, :cond_65

    .line 2285
    const/4 v1, 0x0

    .line 2286
    :cond_65
    const-string v2, "5d"

    if-ne p1, v2, :cond_6a

    .line 2287
    const/4 v1, 0x1

    .line 2288
    :cond_6a
    const-string v2, "1m"

    if-ne p1, v2, :cond_6f

    .line 2289
    const/4 v1, 0x2

    .line 2290
    :cond_6f
    const-string v2, "3m"

    if-ne p1, v2, :cond_74

    .line 2291
    const/4 v1, 0x3

    .line 2292
    :cond_74
    const-string v2, "6m"

    if-ne p1, v2, :cond_79

    .line 2293
    const/4 v1, 0x4

    .line 2294
    :cond_79
    const-string v2, "1y"

    if-ne p1, v2, :cond_7e

    .line 2295
    const/4 v1, 0x5

    .line 2296
    :cond_7e
    if-eqz p2, :cond_3c

    .line 2298
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2299
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_96

    .line 2300
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 2304
    :cond_96
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    if-eqz v2, :cond_3c

    .line 2309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9f
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_cc

    .line 2312
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2310
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 2316
    :cond_cc
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2318
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_3c

    .line 2320
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->updateGraphWithDb(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_3c
.end method
