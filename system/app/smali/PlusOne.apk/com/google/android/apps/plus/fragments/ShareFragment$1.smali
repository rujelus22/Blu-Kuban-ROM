.class Lcom/google/android/apps/plus/fragments/ShareFragment$1;
.super Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostActivityResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$002(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 139
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 140
    .local v0, activity:Landroid/app/Activity;
    const/16 v1, 0x409e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 142
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 143
    const-string v1, "ShareFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 144
    const-string v1, "ShareFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve preview: errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3c
    const/16 v1, 0x58a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 152
    :goto_41
    return-void

    .line 149
    :cond_42
    const v1, 0x7f070139

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_41
.end method
