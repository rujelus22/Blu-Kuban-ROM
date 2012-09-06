.class Lcom/google/android/apps/translate/history/HistoryListAdapter$2;
.super Ljava/lang/Object;
.source "HistoryListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/HistoryListAdapter;->scroll(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

.field final synthetic val$position:I

.field final synthetic val$select:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iput-boolean p2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$select:Z

    iput p3, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$select:Z

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItemPosition(I)V

    .line 133
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/HistoryListAdapter;->mAnimateScroll:Z
    invoke-static {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/HistoryListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 135
    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$position:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v1, v1, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_34

    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v1, v1, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_41

    .line 148
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I
    invoke-static {v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->access$200(Lcom/google/android/apps/translate/history/HistoryListAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 150
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$position:I

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 159
    :goto_4d
    return-void

    .line 155
    :cond_4e
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_4d
.end method
