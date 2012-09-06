.class Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EsWidgetCameraLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;->this$0:Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;->this$0:Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;

    #getter for: Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->access$000(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;->this$0:Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;

    #getter for: Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->access$000(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;->this$0:Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;

    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->insertCameraPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->access$100(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity$1;->this$0:Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;->access$002(Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 44
    :cond_23
    return-void
.end method
