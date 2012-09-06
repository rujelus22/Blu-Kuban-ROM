.class Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EditCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditCommentFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_15

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditCommentFragment;->handleEditComment(Lcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p5}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditCommentFragment;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 59
    :cond_15
    return-void
.end method

.method public onEditPhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_15

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditCommentFragment;->handleEditComment(Lcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p3}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditCommentFragment;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 67
    :cond_15
    return-void
.end method
