.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "StockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;
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

.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 2301
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2227
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    .line 2228
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    .line 2302
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2303
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2304
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3f

    .line 2306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 2308
    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 2311
    .end local v0           #i:I
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    .line 2312
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

    .line 2457
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    .line 2459
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    if-gt v1, v5, :cond_6d

    .line 2461
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2462
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2463
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2464
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2466
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0x12c00

    if-ne v1, v2, :cond_5d

    .line 2467
    const v1, 0x7f0b00ef

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 2548
    :goto_5c
    return-void

    .line 2469
    :cond_5d
    const v1, 0x7f0b00ef

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    goto :goto_5c

    .line 2475
    :cond_6d
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2476
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2477
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2478
    const v1, 0x7f0b00ef

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 2481
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2483
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 2484
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v1, p1, p3}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V

    .line 2486
    const v1, 0x7f0b010f

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2487
    const v1, 0x7f0b0113

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2489
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2602(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I

    .line 2490
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    div-int/lit8 v0, v1, 0x1

    .line 2491
    .local v0, gap:I
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    if-lez v1, :cond_e3

    if-nez v0, :cond_e3

    .line 2492
    const/4 v0, 0x1

    .line 2493
    :cond_e3
    if-nez v0, :cond_f1

    .line 2494
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2495
    :cond_f1
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)I

    move-result v2

    add-int/2addr v2, v0

    if-le v1, v2, :cond_289

    .line 2497
    const v1, 0x7f0b00f7

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2498
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)I

    move-result v2

    add-int/2addr v2, v0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2602(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I

    .line 2499
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setDrawIndex(I)V

    .line 2500
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    .line 2508
    :goto_133
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2509
    const v1, 0x7f0b0110

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2511
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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2514
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b00f2

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2518
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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2521
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    aget-wide v1, v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b00f3

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2525
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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2528
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b00f4

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 2532
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_238

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a1

    .line 2534
    :cond_238
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

    .line 2535
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

    .line 2536
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

    goto/16 :goto_5c

    .line 2504
    :cond_289
    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setDrawIndex(I)V

    .line 2505
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->mGraphDataLength:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    goto/16 :goto_133

    .line 2541
    :cond_2a1
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

    .line 2543
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

    .line 2545
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

    goto/16 :goto_5c
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

    .line 2607
    if-eqz p1, :cond_e2

    .line 2609
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2610
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onScrollTocuchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2611
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2612
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2613
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2614
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2615
    const v0, 0x7f0b00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2616
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2617
    const v0, 0x7f0b0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2618
    const v0, 0x7f0b010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onClickToListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2622
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2624
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x7a

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2625
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2626
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x7a

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2627
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    .line 2629
    :cond_e2
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const v2, 0x7f0b00d5

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->leftArrowImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2702(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2630
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const v2, 0x7f0b00d6

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->rightArrowImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2802(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2631
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

    .line 2386
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2387
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 2388
    .local v1, layout:Landroid/widget/LinearLayout;
    const/4 v2, -0x1

    .line 2389
    .local v2, layoutId:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2391
    const v2, 0x7f030026

    .line 2408
    :cond_25
    :goto_25
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2410
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    const v4, 0x7f0b0109

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2412
    .local v3, tab:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2413
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2414
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2418
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

    .line 2420
    return-object v3

    .line 2393
    .end local v3           #tab:Landroid/widget/TextView;
    :cond_5e
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2394
    const v2, 0x7f030027

    goto :goto_25

    .line 2396
    :cond_71
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 2397
    const v2, 0x7f030028

    goto :goto_25

    .line 2399
    :cond_84
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2400
    const v2, 0x7f030029

    goto :goto_25

    .line 2402
    :cond_97
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 2403
    const v2, 0x7f03002a

    goto/16 :goto_25

    .line 2405
    :cond_ab
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2406
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

    .line 2425
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 2427
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2428
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2429
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2430
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2431
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2432
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Landroid/widget/TextView;

    .line 2434
    const/4 v1, 0x0

    .line 2435
    .local v1, nCurrentTabIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d9
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_113

    .line 2437
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 2439
    move v1, v0

    .line 2435
    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 2443
    :cond_113
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2445
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2453
    return-void
.end method

.method private updateGraphWithDb(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Landroid/view/View;)V
    .registers 5
    .parameter "symbol"
    .parameter "period"
    .parameter "graphData"
    .parameter "v"

    .prologue
    .line 2552
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 2553
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2317
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2320
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_31

    .line 2322
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2326
    :goto_30
    return v0

    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_30
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2223
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2333
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2336
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_40

    .line 2338
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 2341
    :goto_3f
    return-object v0

    :cond_40
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "pos"

    .prologue
    .line 2347
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

    .line 2352
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    .line 2354
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 2355
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2358
    :cond_1a
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_36

    .line 2359
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    .line 2362
    :cond_36
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 2364
    .local v1, symbol:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    array-length v2, v2

    if-ge p1, v2, :cond_69

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v2, v2, p1

    if-eqz v2, :cond_69

    .line 2366
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v3, v3, p1

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2367
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v2, v2, p1

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2380
    :goto_68
    return-object v2

    .line 2371
    :cond_69
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2372
    .local v0, fl:Landroid/widget/RelativeLayout;
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->initStockClockView(Landroid/view/View;I)V

    .line 2373
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeFlipper(Ljava/lang/String;Landroid/view/View;)V
    invoke-static {v2, v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;Landroid/view/View;)V

    .line 2375
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->makeTab(Landroid/view/View;)V

    .line 2376
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->realPosition:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 2377
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aput-object v0, v2, p1

    .line 2379
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    .line 2380
    goto :goto_68
.end method

.method public refreshAllList()V
    .registers 12

    .prologue
    const v10, 0x7f0b0112

    const v9, 0x7f0b00f6

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0b00e5

    .line 2231
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    if-eqz v4, :cond_15b

    .line 2233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_15b

    .line 2235
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    if-eqz v4, :cond_157

    .line 2237
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2238
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    if-eqz v4, :cond_4b

    .line 2240
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->close()V

    .line 2241
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2243
    :cond_4b
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    if-eqz v4, :cond_74

    .line 2245
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->close()V

    .line 2246
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b0111

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2248
    :cond_74
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2249
    .local v2, ll1:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_87

    .line 2251
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2252
    const/4 v2, 0x0

    .line 2255
    :cond_87
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2256
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b00ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 2257
    .local v0, host:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 2258
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    const v5, 0x7f0b010c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 2259
    .local v3, sc1:Landroid/widget/ScrollView;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_f2

    .line 2261
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2262
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f2

    .line 2264
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2267
    :cond_f2
    invoke-virtual {v0}, Landroid/widget/TabHost;->clearFocus()V

    .line 2268
    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->setFocusable(Z)V

    .line 2269
    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2270
    invoke-virtual {v0}, Landroid/widget/TabHost;->removeAllViews()V

    .line 2271
    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2272
    invoke-virtual {v0}, Landroid/widget/TabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_112

    .line 2274
    invoke-virtual {v0}, Landroid/widget/TabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2276
    :cond_112
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2277
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2278
    const/4 v0, 0x0

    .line 2280
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2281
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2282
    invoke-virtual {v3}, Landroid/widget/ScrollView;->clearFocus()V

    .line 2283
    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 2284
    invoke-virtual {v3}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 2285
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_13d

    .line 2287
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2289
    :cond_13d
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 2290
    const/4 v3, 0x0

    .line 2292
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2293
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aget-object v4, v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2294
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->convertView:[Landroid/view/View;

    aput-object v7, v4, v1

    .line 2233
    .end local v0           #host:Landroid/widget/TabHost;
    .end local v2           #ll1:Landroid/widget/LinearLayout;
    .end local v3           #sc1:Landroid/widget/ScrollView;
    :cond_157
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 2298
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

    .line 2557
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2302(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)Ljava/lang/String;

    .line 2558
    const/4 v2, 0x0

    .line 2559
    .local v2, periodNum:I
    const-string v3, "1d"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2560
    const/4 v2, 0x0

    .line 2561
    :cond_13
    const-string v3, "5d"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2562
    const/4 v2, 0x1

    .line 2563
    :cond_1c
    const-string v3, "1m"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2564
    const/4 v2, 0x2

    .line 2565
    :cond_25
    const-string v3, "3m"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2566
    const/4 v2, 0x3

    .line 2567
    :cond_2e
    const-string v3, "6m"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2568
    const/4 v2, 0x4

    .line 2569
    :cond_37
    const-string v3, "1y"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2570
    const/4 v2, 0x5

    .line 2571
    :cond_40
    if-eqz p2, :cond_6a

    .line 2573
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_59

    .line 2574
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2577
    :cond_59
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2578
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    if-nez v3, :cond_6b

    .line 2600
    :cond_6a
    :goto_6a
    return-void

    .line 2583
    :cond_6b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6c
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_99

    .line 2586
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

    .line 2584
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 2590
    :cond_99
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

    .line 2592
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 2594
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_6a

    .line 2596
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, p1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 2597
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1, v0, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->updateGraphWithDb(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Landroid/view/View;)V

    goto/16 :goto_6a
.end method
