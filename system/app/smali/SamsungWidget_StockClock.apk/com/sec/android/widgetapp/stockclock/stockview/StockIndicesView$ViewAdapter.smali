.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "StockIndicesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;
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

.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 2129
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2055
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    .line 2056
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    .line 2130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2131
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2132
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3f

    .line 2134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 2136
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 2139
    .end local v0           #i:I
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    .line 2140
    return-void
.end method

.method private drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 13
    .parameter "graphData"
    .parameter "symbol"
    .parameter "range"
    .parameter "v"

    .prologue
    const v3, 0x7f0b00f0

    const v7, 0x7f0b0112

    const v6, 0x7f0b00f6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2297
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    .line 2299
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    if-gt v1, v5, :cond_6f

    .line 2301
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2302
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2303
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2304
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2306
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0x12c00

    if-ne v1, v2, :cond_5f

    .line 2307
    const v1, 0x7f0b00ef

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 2382
    :goto_5e
    return-void

    .line 2309
    :cond_5f
    const v1, 0x7f0b00ef

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    goto :goto_5e

    .line 2315
    :cond_6f
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2316
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2317
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2318
    const v1, 0x7f0b00ef

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 2321
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2323
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 2324
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v1, p1, p3}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V

    .line 2326
    const v1, 0x7f0b010f

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2327
    const v1, 0x7f0b0113

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2329
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2902(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)I

    .line 2330
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    div-int/lit8 v0, v1, 0x1

    .line 2331
    .local v0, gap:I
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    if-lez v1, :cond_e5

    if-nez v0, :cond_e5

    .line 2332
    const/4 v0, 0x1

    .line 2333
    :cond_e5
    if-nez v0, :cond_f3

    .line 2334
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2335
    :cond_f3
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)I

    move-result v2

    add-int/2addr v2, v0

    if-le v1, v2, :cond_28c

    .line 2337
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2338
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)I

    move-result v2

    add-int/2addr v2, v0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2902(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)I

    .line 2339
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setDrawIndex(I)V

    .line 2340
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    .line 2348
    :goto_136
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2349
    const v1, 0x7f0b0110

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2351
    const v1, 0x7f0b00f2

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2353
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b00f2

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2356
    const v1, 0x7f0b00f3

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2358
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v1, v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b00f3

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2361
    const v1, 0x7f0b00f4

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2363
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b00f4

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2366
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23b

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a4

    .line 2368
    :cond_23b
    const v1, 0x7f0b0114

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2369
    const v1, 0x7f0b0115

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2370
    const v1, 0x7f0b0116

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5e

    .line 2344
    :cond_28c
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setDrawIndex(I)V

    .line 2345
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->mGraphDataLength:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    goto/16 :goto_136

    .line 2375
    :cond_2a4
    const v1, 0x7f0b0114

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2377
    const v1, 0x7f0b0115

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2379
    const v1, 0x7f0b0116

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5e
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

    .line 2444
    if-eqz p1, :cond_e2

    .line 2446
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2447
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onScrollTocuchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2448
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2449
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2450
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2451
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2452
    const v0, 0x7f0b00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2453
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2454
    const v0, 0x7f0b0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2455
    const v0, 0x7f0b010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onClickToListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2459
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2461
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x7a

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2462
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2463
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x7a

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2464
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    .line 2466
    :cond_e2
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    const v2, 0x7f0b00d5

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->leftArrowImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$3002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2467
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    const v2, 0x7f0b00d6

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->rightArrowImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$3102(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2468
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

    .line 2226
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2227
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 2228
    .local v1, layout:Landroid/widget/LinearLayout;
    const/4 v2, -0x1

    .line 2229
    .local v2, layoutId:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2231
    const v2, 0x7f030026

    .line 2248
    :cond_25
    :goto_25
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2250
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    const v4, 0x7f0b0109

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2252
    .local v3, tab:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2253
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2254
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2258
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

    .line 2260
    return-object v3

    .line 2233
    .end local v3           #tab:Landroid/widget/TextView;
    :cond_5e
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2234
    const v2, 0x7f030027

    goto :goto_25

    .line 2236
    :cond_71
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 2237
    const v2, 0x7f030028

    goto :goto_25

    .line 2239
    :cond_84
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2240
    const v2, 0x7f030029

    goto :goto_25

    .line 2242
    :cond_97
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 2243
    const v2, 0x7f03002a

    goto/16 :goto_25

    .line 2245
    :cond_ab
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2246
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

    .line 2265
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 2267
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2268
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2269
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2270
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2271
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2272
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2274
    const/4 v1, 0x0

    .line 2275
    .local v1, nCurrentTabIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d9
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_113

    .line 2277
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2800(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 2279
    move v1, v0

    .line 2275
    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 2283
    :cond_113
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2285
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2293
    return-void
.end method

.method private updateGraphWithDb(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Landroid/view/View;)V
    .registers 5
    .parameter "symbol"
    .parameter "period"
    .parameter "graphData"
    .parameter "v"

    .prologue
    .line 2386
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 2387
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2145
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2148
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_31

    .line 2150
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2154
    :goto_30
    return v0

    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_30
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2051
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 5
    .parameter "pos"

    .prologue
    .line 2160
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_17

    .line 2161
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2164
    :cond_17
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_43

    .line 2168
    :try_start_23
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_23 .. :try_end_3e} :catch_40

    move-result-object v1

    .line 2175
    :goto_3f
    return-object v1

    .line 2169
    :catch_40
    move-exception v0

    .line 2171
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_3f

    .line 2175
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_43
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    goto :goto_3f
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "pos"

    .prologue
    .line 2181
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

    .line 2186
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    .line 2188
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 2189
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2192
    :cond_1a
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_36

    .line 2193
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    .line 2196
    :cond_36
    const-string v1, ""

    .line 2199
    .local v1, symbol:Ljava/lang/String;
    :try_start_38
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_49} :catch_9d

    move-result-object v1

    .line 2204
    :goto_4a
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    array-length v2, v2

    if-ge p1, v2, :cond_6b

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v2, v2, p1

    if-eqz v2, :cond_6b

    .line 2206
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v3, v3, p1

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2207
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v2, v2, p1

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2220
    :goto_6a
    return-object v2

    .line 2211
    :cond_6b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2212
    .local v0, fl:Landroid/widget/RelativeLayout;
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->initStockClockView(Landroid/view/View;I)V

    .line 2213
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->makeFlipper(Ljava/lang/String;Landroid/view/View;)V
    invoke-static {v2, v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;Landroid/view/View;)V

    .line 2215
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->makeTab(Landroid/view/View;)V

    .line 2216
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->realPosition:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2217
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aput-object v0, v2, p1

    .line 2219
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    .line 2220
    goto :goto_6a

    .line 2200
    .end local v0           #fl:Landroid/widget/RelativeLayout;
    :catch_9d
    move-exception v2

    goto :goto_4a
.end method

.method public refreshAllList()V
    .registers 12

    .prologue
    const v10, 0x7f0b0112

    const v9, 0x7f0b00f6

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0b00e5

    .line 2059
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    if-eqz v4, :cond_15b

    .line 2061
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_15b

    .line 2063
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    if-eqz v4, :cond_157

    .line 2065
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2066
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    if-eqz v4, :cond_4b

    .line 2068
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->close()V

    .line 2069
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2071
    :cond_4b
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    if-eqz v4, :cond_74

    .line 2073
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->close()V

    .line 2074
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b0111

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2076
    :cond_74
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2077
    .local v2, ll1:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_87

    .line 2079
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2080
    const/4 v2, 0x0

    .line 2083
    :cond_87
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2084
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 2085
    .local v0, host:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 2086
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b010c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 2087
    .local v3, sc1:Landroid/widget/ScrollView;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_f2

    .line 2089
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2090
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f2

    .line 2092
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2095
    :cond_f2
    invoke-virtual {v0}, Landroid/widget/TabHost;->clearFocus()V

    .line 2096
    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->setFocusable(Z)V

    .line 2097
    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2098
    invoke-virtual {v0}, Landroid/widget/TabHost;->removeAllViews()V

    .line 2099
    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2100
    invoke-virtual {v0}, Landroid/widget/TabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_112

    .line 2102
    invoke-virtual {v0}, Landroid/widget/TabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2104
    :cond_112
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2105
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2106
    const/4 v0, 0x0

    .line 2108
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2109
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2110
    invoke-virtual {v3}, Landroid/widget/ScrollView;->clearFocus()V

    .line 2111
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 2112
    invoke-virtual {v3}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 2113
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_13d

    .line 2115
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2117
    :cond_13d
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2118
    const/4 v3, 0x0

    .line 2120
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2121
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2122
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->convertView:[Landroid/view/View;

    aput-object v7, v4, v1

    .line 2061
    .end local v0           #host:Landroid/widget/TabHost;
    .end local v2           #ll1:Landroid/widget/LinearLayout;
    .end local v3           #sc1:Landroid/widget/ScrollView;
    :cond_157
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 2126
    .end local v1           #i:I
    :cond_15b
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

    .line 2391
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$2302(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)Ljava/lang/String;

    .line 2392
    const/4 v2, 0x0

    .line 2393
    .local v2, periodNum:I
    const-string v3, "1d"

    if-ne p1, v3, :cond_f

    .line 2394
    const/4 v2, 0x0

    .line 2395
    :cond_f
    const-string v3, "5d"

    if-ne p1, v3, :cond_14

    .line 2396
    const/4 v2, 0x1

    .line 2397
    :cond_14
    const-string v3, "1m"

    if-ne p1, v3, :cond_19

    .line 2398
    const/4 v2, 0x2

    .line 2399
    :cond_19
    const-string v3, "3m"

    if-ne p1, v3, :cond_1e

    .line 2400
    const/4 v2, 0x3

    .line 2401
    :cond_1e
    const-string v3, "6m"

    if-ne p1, v3, :cond_23

    .line 2402
    const/4 v2, 0x4

    .line 2403
    :cond_23
    const-string v3, "1y"

    if-ne p1, v3, :cond_28

    .line 2404
    const/4 v2, 0x5

    .line 2405
    :cond_28
    if-eqz p2, :cond_52

    .line 2407
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_41

    .line 2408
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2411
    :cond_41
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2412
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    if-nez v3, :cond_53

    .line 2439
    :cond_52
    :goto_52
    return-void

    .line 2417
    :cond_53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_54
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_81

    .line 2420
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0200b9

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2418
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 2424
    :cond_81
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0200b8

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2426
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 2429
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :try_start_a0
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, p1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V
    :try_end_b9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a0 .. :try_end_b9} :catch_da

    .line 2434
    :goto_b9
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_52

    .line 2436
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1, v0, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->updateGraphWithDb(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Landroid/view/View;)V

    goto/16 :goto_52

    .line 2430
    :catch_da
    move-exception v3

    goto :goto_b9
.end method
