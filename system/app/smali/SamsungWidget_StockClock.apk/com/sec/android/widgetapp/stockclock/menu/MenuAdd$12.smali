.class Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 816
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 865
    :goto_a
    return-void

    .line 819
    :cond_b
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 821
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 824
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_95

    .line 826
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 828
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    :cond_37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 832
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 834
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 837
    :cond_5a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)V

    .line 855
    .end local v0           #i:I
    :goto_5f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 857
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 859
    :cond_72
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 861
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :cond_85
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 864
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->hideLoadingDialog()V

    goto/16 :goto_a

    .line 841
    :cond_95
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 843
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_b8
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)V

    .line 847
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 849
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 850
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 852
    :cond_d7
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)V

    goto :goto_5f
.end method
