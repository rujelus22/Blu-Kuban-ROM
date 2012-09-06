.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;
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
    .line 145
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-boolean v0, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mIsLoadingList:Z

    if-eqz v0, :cond_38

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->clear()V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$2;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v1, v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_loading:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_38
    return-void
.end method
