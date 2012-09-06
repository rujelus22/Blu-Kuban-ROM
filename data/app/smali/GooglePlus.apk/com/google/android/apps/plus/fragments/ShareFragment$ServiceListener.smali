.class Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    return-void
.end method


# virtual methods
.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->insertCameraPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$200(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$102(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 245
    :cond_23
    return-void
.end method

.method public onPostActivityResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->handlePostResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 253
    return-void
.end method
