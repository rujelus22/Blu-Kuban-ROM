.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;
.super Ljava/lang/Thread;
.source "BaseHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->loadListInBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

.field final synthetic val$dbChanged:Z

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;Ljava/lang/String;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->val$filter:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->val$force:Z

    iput-boolean p4, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->val$dbChanged:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->val$filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->fetchEntriesFromDb(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 215
    .local v0, historyEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iput-boolean v1, v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mIsLoadingList:Z

    .line 216
    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->val$force:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->val$dbChanged:Z

    if-eqz v2, :cond_16

    :cond_15
    const/4 v1, 0x1

    .line 217
    .local v1, scrollToTop:Z
    :cond_16
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->refreshHistoryList(Ljava/util/List;Z)V

    .line 218
    return-void
.end method
