.class Lcom/google/android/music/download/AbstractSchedulingService$4;
.super Lcom/google/android/music/download/IDownloadProgressListener$Stub;
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
    .line 91
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService$4;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-direct {p0}, Lcom/google/android/music/download/IDownloadProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Lcom/google/android/music/download/DownloadProgress;)V
    .registers 3
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$4;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/download/AbstractSchedulingService;->sendUpdateProgressMessage(Lcom/google/android/music/download/DownloadProgress;)V

    .line 94
    return-void
.end method
