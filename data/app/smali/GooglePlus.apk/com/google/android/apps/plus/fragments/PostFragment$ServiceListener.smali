.class Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/fragments/PostFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$100(Lcom/google/android/apps/plus/fragments/PostFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 187
    return-void
.end method

.method public onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$100(Lcom/google/android/apps/plus/fragments/PostFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 196
    return-void
.end method

.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$200(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$200(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->insertCameraPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$202(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 205
    :cond_23
    return-void
.end method
