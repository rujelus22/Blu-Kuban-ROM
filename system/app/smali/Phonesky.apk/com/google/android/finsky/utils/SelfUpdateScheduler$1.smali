.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler;->checkForSelfUpdate(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field final synthetic val$response:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iput-object p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->val$response:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .registers 12
    .parameter "authToken"

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/google/android/finsky/download/DownloadImpl;

    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->val$response:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v4, "ANDROIDSECURE"

    const-wide/16 v7, -0x1

    move-object v5, p1

    move-object v6, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLcom/google/android/finsky/download/obb/Obb;)V

    .line 114
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    #setter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;
    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$002(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/download/Download;

    .line 115
    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    #getter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    #getter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 117
    return-void
.end method

.method public onErrorReceived(Lcom/android/volley/AuthFailureError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 106
    const-string v0, "Exception occured while getting auth token."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method
