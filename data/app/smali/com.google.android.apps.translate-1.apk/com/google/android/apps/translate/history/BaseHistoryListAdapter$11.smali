.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$11;
.super Landroid/widget/Filter;
.source "BaseHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$11;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 625
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 626
    .local v1, results:Landroid/widget/Filter$FilterResults;
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$11;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->fetchEntriesFromDb(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 627
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 628
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 629
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 7
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 635
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$11;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->refreshHistoryList(Ljava/util/List;ZZ)V

    .line 636
    return-void
.end method
