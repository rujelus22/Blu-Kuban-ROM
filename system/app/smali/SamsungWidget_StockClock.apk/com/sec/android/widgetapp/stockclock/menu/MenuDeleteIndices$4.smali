.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;
.super Ljava/lang/Object;
.source "MenuDeleteIndices.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v0, deleteCheckArrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 443
    .local v4, sba:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3b

    .line 445
    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 447
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 451
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6f

    .line 453
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteIndicesRows(Ljava/util/ArrayList;)I

    move-result v3

    .line 454
    .local v3, result:I
    const/16 v5, -0x5a

    if-ne v3, v5, :cond_5a

    .line 456
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-virtual {v5, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setResult(I)V

    .line 457
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->finish()V

    .line 513
    .end local v3           #result:I
    :cond_59
    :goto_59
    return-void

    .line 459
    .restart local v3       #result:I
    :cond_5a
    if-nez v3, :cond_59

    .line 473
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 475
    .local v2, mHandler:Landroid/os/Handler;
    new-instance v5, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4$1;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->finish()V

    goto :goto_59

    .line 510
    .end local v2           #mHandler:Landroid/os/Handler;
    .end local v3           #result:I
    :cond_6f
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setResult(ILandroid/content/Intent;)V

    .line 511
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->finish()V

    goto :goto_59
.end method
