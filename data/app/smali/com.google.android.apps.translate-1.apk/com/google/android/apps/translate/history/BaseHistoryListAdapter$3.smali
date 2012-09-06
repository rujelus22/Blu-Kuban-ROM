.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;
.super Ljava/lang/Object;
.source "BaseHistoryListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setEmptyMessage()V
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
    .line 167
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$000(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    #getter for: Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->access$100(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_no_history:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_36
    return-void

    .line 174
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$3;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v0, v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_no_favorite_translation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method
