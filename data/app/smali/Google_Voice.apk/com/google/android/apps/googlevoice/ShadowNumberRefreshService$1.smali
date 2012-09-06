.class Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;
.super Ljava/lang/Object;
.source "ShadowNumberRefreshService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

.field final synthetic val$getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

    iput p3, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;->hasException()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 73
    invoke-static {}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$000()Lcom/google/android/apps/common/log/GLog;

    move-result-object v3

    const-string v4, "Failed to get backend info!"

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    #getter for: Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$100(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->refreshFailed(Ljava/lang/Exception;)V

    .line 96
    :goto_27
    return-void

    .line 76
    :cond_28
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;->getShadowNumberMappings()[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    move-result-object v0

    .line 79
    .local v0, mappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    if-nez v0, :cond_60

    new-array v1, v7, [Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    .line 81
    .local v1, nonNullMappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :goto_32
    invoke-static {}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$000()Lcom/google/android/apps/common/log/GLog;

    move-result-object v3

    const-string v4, "ShadowNumberRefreshService\'s GetBackendInfoRpc fetched %d mappings"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    #getter for: Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$200(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;->createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v2

    .line 84
    .local v2, thread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    new-instance v3, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;-><init>(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V

    .line 94
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/BackgroundThread;->quitAfterProcessingQueue(Ljava/lang/Runnable;)V

    goto :goto_27

    .end local v1           #nonNullMappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    .end local v2           #thread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    :cond_60
    move-object v1, v0

    .line 79
    goto :goto_32
.end method
