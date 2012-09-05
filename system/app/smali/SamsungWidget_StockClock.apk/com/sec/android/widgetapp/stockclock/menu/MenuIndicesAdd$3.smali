.class Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;
.super Ljava/lang/Object;
.source "MenuIndicesAdd.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
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
    const v6, 0x7f090043

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 159
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 160
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v1

    if-lt v1, v4, :cond_40

    .line 162
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iput-boolean v3, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->isIndicesExceeded:Z

    .line 163
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 228
    :goto_3f
    return-void

    .line 183
    :cond_40
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasIndices(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 185
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3f

    .line 190
    :cond_61
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addIndicesRow(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)I

    .line 191
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v0

    if-lt v0, v4, :cond_93

    .line 193
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_3f

    .line 215
    :cond_93
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "after_add_goto_list"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v1, "for_index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->startActivity(Landroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    goto :goto_3f

    .line 225
    :cond_bf
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    goto/16 :goto_3f
.end method
