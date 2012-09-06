.class Lcom/google/android/apps/translate/history/HistoryListAdapter$3;
.super Ljava/lang/Thread;
.source "HistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/HistoryListAdapter;->loadListInBackground(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

.field final synthetic val$dbChanged:Z

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$force:Z

.field final synthetic val$selectTop:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;Ljava/lang/String;ZZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$filter:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$force:Z

    iput-boolean p4, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$dbChanged:Z

    iput-boolean p5, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$selectTop:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v3, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->fetchEntriesFromDb(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    .local v0, historyEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iput-boolean v1, v2, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mIsLoadingList:Z

    .line 193
    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$force:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$dbChanged:Z

    if-eqz v2, :cond_16

    :cond_15
    const/4 v1, 0x1

    .line 194
    .local v1, scrollToTop:Z
    :cond_16
    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-boolean v3, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->val$selectTop:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->refreshHistoryList(Ljava/util/List;ZZ)V

    .line 195
    return-void
.end method
