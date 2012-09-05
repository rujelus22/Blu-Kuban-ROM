.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    .line 331
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 332
    .local v0, action:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    .line 334
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_14

    .line 335
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 338
    :cond_14
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mViewPosition:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I

    .line 339
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    .line 341
    :cond_6a
    const/4 v1, 0x0

    return v1
.end method
