.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->setButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v0, deleteCheckArrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 522
    .local v3, sba:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3b

    .line 524
    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 526
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 530
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6e

    .line 532
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteRows(Ljava/util/ArrayList;)I

    move-result v2

    .line 533
    .local v2, result:I
    const/16 v4, -0x5a

    if-ne v2, v4, :cond_5a

    .line 535
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->setResult(I)V

    .line 536
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->finish()V

    .line 577
    .end local v2           #result:I
    :cond_59
    :goto_59
    return-void

    .line 538
    .restart local v2       #result:I
    :cond_5a
    if-nez v2, :cond_59

    .line 541
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    iget-object v4, v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->finish()V

    goto :goto_59

    .line 574
    .end local v2           #result:I
    :cond_6e
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->setResult(ILandroid/content/Intent;)V

    .line 575
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->finish()V

    goto :goto_59
.end method
