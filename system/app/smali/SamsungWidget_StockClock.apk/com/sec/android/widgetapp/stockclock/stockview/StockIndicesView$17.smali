.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 2
    .parameter

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    .local v3, symbols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2c

    .line 2487
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2485
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2489
    :cond_2c
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2490
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2491
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteIndicesRows(Ljava/util/ArrayList;)I

    .line 2492
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2493
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->sendBroadcast(Landroid/content/Intent;)V

    .line 2494
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v4

    if-nez v4, :cond_80

    .line 2496
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2497
    .local v0, handle:Landroid/os/Handler;
    new-instance v4, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2513
    .end local v0           #handle:Landroid/os/Handler;
    :goto_7f
    return-void

    .line 2507
    :cond_80
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$3200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    .line 2508
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$3300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    .line 2509
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$3400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    .line 2510
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setArrowVisibility()V

    goto :goto_7f
.end method
