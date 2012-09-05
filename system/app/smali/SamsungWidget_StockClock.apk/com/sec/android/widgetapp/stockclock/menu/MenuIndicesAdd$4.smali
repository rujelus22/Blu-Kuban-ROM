.class Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;
.super Ljava/lang/Object;
.source "MenuIndicesAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->val$result:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 253
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    :goto_21
    return-void

    .line 257
    :cond_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->itemMaxDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->access$002(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Z)Z

    .line 259
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->val$result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mMyMajorRows:Ljava/util/ArrayList;

    .line 260
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    const v3, 0x7f030021

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v4, v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    .line 262
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->indicesSearchListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_21
.end method
