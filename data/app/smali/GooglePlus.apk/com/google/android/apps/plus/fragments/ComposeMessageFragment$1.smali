.class Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$000(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$000(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->insertCameraPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$100(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$002(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 65
    :cond_23
    return-void
.end method
