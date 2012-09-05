.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->showDeleteDialog()V
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
    .line 2644
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2648
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2649
    .local v3, symbols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2c

    .line 2651
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2649
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2653
    :cond_2c
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2654
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteRows(Ljava/util/ArrayList;)I

    .line 2657
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->sendBroadcast(Landroid/content/Intent;)V

    .line 2660
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v4

    if-nez v4, :cond_80

    .line 2662
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2663
    .local v0, handle:Landroid/os/Handler;
    new-instance v4, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2679
    .end local v0           #handle:Landroid/os/Handler;
    :goto_7f
    return-void

    .line 2673
    :cond_80
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    .line 2674
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$3000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    .line 2675
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$3100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    .line 2676
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setArrowVisibility()V

    goto :goto_7f
.end method
