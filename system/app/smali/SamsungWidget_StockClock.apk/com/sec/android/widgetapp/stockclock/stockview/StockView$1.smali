.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 208
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 212
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_17

    .line 213
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 216
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_104

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, p3, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setPosition(ILandroid/view/View;)V

    .line 225
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 227
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$302(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mViewPosition:I
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$402(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I

    .line 232
    :try_start_79
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_fe

    :cond_af
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 238
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_fe} :catch_11a

    .line 243
    :cond_fe
    :goto_fe
    check-cast p1, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->fixSelectedItemMetadata()V

    .line 245
    :cond_103
    return-void

    .line 220
    .restart local p1       #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_104
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-lt p3, v0, :cond_29

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, p3, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setPosition(ILandroid/view/View;)V

    goto/16 :goto_29

    .line 241
    :catch_11a
    move-exception v0

    goto :goto_fe
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
    .line 250
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateDate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$800(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V

    .line 251
    return-void
.end method
