.class Lcom/google/android/apps/plus/fragments/EditPostFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EditPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditPostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$200(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$200(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_19

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditPostFragment;->handleEditPost(Lcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$300(Lcom/google/android/apps/plus/fragments/EditPostFragment;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 92
    :cond_19
    return-void
.end method

.method public onGetEditableActivityContent(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 16
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "editableContent"
    .parameter "result"

    .prologue
    .line 61
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq p1, v8, :cond_d

    .line 84
    :goto_c
    return-void

    .line 65
    :cond_d
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    const/4 v9, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;
    invoke-static {v8, v9}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$002(Lcom/google/android/apps/plus/fragments/EditPostFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 67
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EditPostActivity;

    .line 68
    .local v0, activity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 69
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setResult(I)V

    .line 70
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->finish()V

    .line 83
    :cond_28
    const v8, 0xed20b

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/phone/EditPostActivity;->dismissDialog(I)V

    goto :goto_c

    .line 72
    :cond_2f
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$100(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v8

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getEditableContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$100(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 74
    .local v7, text:Landroid/text/Editable;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getMentionCount()I

    move-result v4

    .local v4, size:I
    :goto_4b
    if-ge v2, v4, :cond_28

    .line 75
    invoke-virtual {p4, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v3

    .line 76
    .local v3, mention:Lcom/google/wireless/tacotruck/proto/Data$Mention;
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getIndex()I

    move-result v6

    .line 77
    .local v6, start:I
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getLength()I

    move-result v8

    add-int v1, v6, v8

    .line 78
    .local v1, end:I
    new-instance v5, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Ljava/lang/String;)V

    .line 79
    .local v5, span:Lcom/google/android/apps/plus/views/MentionSpan;
    const/16 v8, 0x21

    invoke-interface {v7, v5, v6, v1, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b
.end method
