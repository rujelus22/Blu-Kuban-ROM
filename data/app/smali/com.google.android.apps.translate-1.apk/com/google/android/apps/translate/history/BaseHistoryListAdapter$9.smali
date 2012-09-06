.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;
.super Ljava/lang/Thread;
.source "BaseHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->removeAllEntries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;Landroid/app/ProgressDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isFiltered()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 566
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v2, v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 567
    .local v0, entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v2, v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    iget-object v3, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/history/BaseDb;->remove(Lcom/google/android/apps/translate/history/Entry;)V

    goto :goto_11

    .line 570
    .end local v0           #entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_27
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v2, v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/BaseDb;->removeAll()V

    .line 572
    :cond_2e
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    sget-object v3, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->EMPTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->refreshHistoryList(Ljava/util/List;ZZ)V

    .line 573
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 574
    return-void
.end method
