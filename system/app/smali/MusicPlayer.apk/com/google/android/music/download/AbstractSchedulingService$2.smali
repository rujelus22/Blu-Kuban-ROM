.class Lcom/google/android/music/download/AbstractSchedulingService$2;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "AbstractSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/AbstractSchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/AbstractSchedulingService;


# direct methods
.method constructor <init>(Lcom/google/android/music/download/AbstractSchedulingService;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService$2;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$2;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-static {p2}, Lcom/google/android/music/download/IDownloadQueueManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/IDownloadQueueManager;

    move-result-object v1

    #setter for: Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadQueueManager:Lcom/google/android/music/download/IDownloadQueueManager;
    invoke-static {v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;->access$202(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/IDownloadQueueManager;)Lcom/google/android/music/download/IDownloadQueueManager;

    .line 72
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$2;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    #calls: Lcom/google/android/music/download/AbstractSchedulingService;->updateServiceState()V
    invoke-static {v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$100(Lcom/google/android/music/download/AbstractSchedulingService;)V

    .line 73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$2;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadQueueManager:Lcom/google/android/music/download/IDownloadQueueManager;
    invoke-static {v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;->access$202(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/IDownloadQueueManager;)Lcom/google/android/music/download/IDownloadQueueManager;

    .line 77
    return-void
.end method
