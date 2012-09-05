.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 723
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 773
    :goto_a
    return-void

    .line 726
    :cond_b
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 728
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 731
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_95

    .line 733
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 735
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    :cond_37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 740
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 742
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 745
    :cond_5a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)V

    .line 763
    .end local v0           #i:I
    :goto_5f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 765
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 767
    :cond_72
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 769
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 771
    :cond_85
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 772
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->hideLoadingDialog()V

    goto/16 :goto_a

    .line 749
    :cond_95
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 751
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    :cond_b8
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)V

    .line 755
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 757
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 760
    :cond_ce
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)V

    goto :goto_5f
.end method
