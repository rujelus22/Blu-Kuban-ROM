.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 276
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_d

    .line 281
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    .line 284
    :cond_d
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_16d

    move-object v1, p1

    .line 286
    check-cast v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1, p3, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setPosition(ILandroid/view/View;)V

    .line 293
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_16c

    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, second:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v1

    if-eqz v1, :cond_35

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_35
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$402(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mViewPosition:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I

    .line 302
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    .line 304
    :try_start_df
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_167

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_167

    .line 309
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->executeRefresh()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_167} :catch_183

    .line 314
    :cond_167
    :goto_167
    check-cast p1, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 316
    .end local v0           #second:I
    :cond_16c
    return-void

    .line 288
    .restart local p1       #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_16d
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt p3, v1, :cond_1f

    move-object v1, p1

    .line 290
    check-cast v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1, p3, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setPosition(ILandroid/view/View;)V

    goto/16 :goto_1f

    .line 312
    .restart local v0       #second:I
    :catch_183
    move-exception v1

    goto :goto_167
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    .line 322
    return-void
.end method
