.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;
.super Landroid/os/Handler;
.source "StockSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V
    .registers 2
    .parameter

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    .line 1364
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_ae

    .line 1396
    :goto_6
    return-void

    .line 1368
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v3

    div-int/lit8 v0, v3, 0xa

    .line 1369
    .local v0, gap:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v3

    if-lez v3, :cond_1a

    if-nez v0, :cond_1a

    .line 1370
    const/4 v0, 0x1

    .line 1371
    :cond_1a
    if-nez v0, :cond_48

    .line 1373
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    const v4, 0x7f0b00f0

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1374
    .local v1, mTab1:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1375
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setVisibility(I)V

    .line 1376
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setVisibility(I)V

    .line 1377
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1379
    .end local v1           #mTab1:Landroid/widget/LinearLayout;
    :cond_48
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v4

    add-int/2addr v4, v0

    if-le v3, v4, :cond_8d

    .line 1381
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v4

    add-int/2addr v4, v0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2402(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;I)I

    .line 1382
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setDrawIndex(I)V

    .line 1383
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    .line 1385
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1386
    .local v2, msg1:Landroid/os/Message;
    const-wide/16 v3, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .line 1390
    .end local v2           #msg1:Landroid/os/Message;
    :cond_8d
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setDrawIndex(I)V

    .line 1391
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setDrawIndex(I)V

    goto/16 :goto_6

    .line 1364
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
