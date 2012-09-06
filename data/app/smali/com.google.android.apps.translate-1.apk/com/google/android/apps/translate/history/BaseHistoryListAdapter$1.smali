.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;
.super Ljava/lang/Object;
.source "BaseHistoryListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 133
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_25
    return-void
.end method
