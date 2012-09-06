.class Lcom/google/android/apps/translate/history/HistoryListAdapter$1;
.super Ljava/lang/Object;
.source "HistoryListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/HistoryListAdapter;->refreshHistoryList(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

.field final synthetic val$historyEntries:Ljava/util/List;

.field final synthetic val$scrollToTop:Z

.field final synthetic val$selectTop:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;Ljava/util/List;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$historyEntries:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$scrollToTop:Z

    iput-boolean p4, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$selectTop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$historyEntries:Ljava/util/List;

    if-nez v0, :cond_3e

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->clear()V

    .line 99
    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setEmptyMessage()V

    .line 113
    :goto_1c
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2b

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 117
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->updateDbModifiedTime()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->updateFavoriteDbModifiedTime()V

    .line 121
    :cond_3d
    return-void

    .line 97
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$historyEntries:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mList:Ljava/util/List;

    goto :goto_a

    .line 103
    :cond_45
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$scrollToTop:Z

    if-eqz v0, :cond_51

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$selectTop:Z

    #calls: Lcom/google/android/apps/translate/history/HistoryListAdapter;->scroll(IZ)V
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/HistoryListAdapter;IZ)V

    goto :goto_1c

    .line 106
    :cond_51
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->val$selectTop:Z

    if-eqz v0, :cond_5a

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItemPosition(I)V

    .line 109
    :cond_5a
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    goto :goto_1c
.end method
