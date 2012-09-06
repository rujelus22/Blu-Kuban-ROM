.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;
.super Ljava/lang/Thread;
.source "BaseHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->removeHistoryEntry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;ILandroid/app/ProgressDialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iput p2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->val$position:I

    iput-object p3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v1, v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mDb:Lcom/google/android/apps/translate/history/BaseDb;

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget v3, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->val$position:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->remove(Lcom/google/android/apps/translate/history/Entry;)V

    .line 345
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getHistoryEntries()Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, historyEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    iget v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v1, v0, v4, v4}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->refreshHistoryList(Ljava/util/List;ZZ)V

    .line 348
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 349
    return-void
.end method
