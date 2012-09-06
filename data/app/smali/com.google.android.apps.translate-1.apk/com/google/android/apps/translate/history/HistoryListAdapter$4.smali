.class Lcom/google/android/apps/translate/history/HistoryListAdapter$4;
.super Ljava/lang/Object;
.source "HistoryListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/HistoryListAdapter;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 237
    const-string v0, "HistoryListAdapter"

    const-string v1, "onTranslationDone SELECT LAST"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedItemPosition:I
    invoke-static {v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->access$300(Lcom/google/android/apps/translate/history/HistoryListAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItemPosition(I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;->this$0:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedItemPosition:I
    invoke-static {v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->access$300(Lcom/google/android/apps/translate/history/HistoryListAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 241
    return-void
.end method
