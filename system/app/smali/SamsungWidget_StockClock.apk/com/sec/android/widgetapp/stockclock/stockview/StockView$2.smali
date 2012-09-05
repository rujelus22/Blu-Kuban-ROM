.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 261
    .local v0, action:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 263
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 264
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 268
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2c

    .line 275
    :cond_2b
    :goto_2b
    return v6

    .line 272
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mViewPosition:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$402(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I

    .line 273
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateDate(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$800(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V

    goto :goto_2b
.end method
