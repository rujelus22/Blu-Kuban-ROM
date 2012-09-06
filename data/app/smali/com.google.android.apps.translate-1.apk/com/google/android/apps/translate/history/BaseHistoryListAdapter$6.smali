.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;
.super Ljava/lang/Object;
.source "BaseHistoryListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->refreshHistoryList(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

.field final synthetic val$historyEntries:Ljava/util/List;

.field final synthetic val$scrollToTop:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;Ljava/util/List;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->val$historyEntries:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->val$scrollToTop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->val$historyEntries:Ljava/util/List;

    if-nez v0, :cond_3f

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->clear()V

    .line 377
    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setEmptyMessage()V

    .line 383
    :cond_1d
    :goto_1d
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2c

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 387
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->updateDbModifiedTime()V

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->updateFavoriteDbModifiedTime()V

    .line 391
    :cond_3e
    return-void

    .line 375
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->val$historyEntries:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    goto :goto_9

    .line 380
    :cond_46
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->val$scrollToTop:Z

    if-eqz v0, :cond_1d

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$6;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1d
.end method
