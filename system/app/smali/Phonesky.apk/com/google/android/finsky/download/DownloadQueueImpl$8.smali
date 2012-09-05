.class Lcom/google/android/finsky/download/DownloadQueueImpl$8;
.super Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;
.source "DownloadQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field final synthetic val$download:Lcom/google/android/finsky/download/Download;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;)V

    return-void
.end method


# virtual methods
.method public updateListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-interface {p1, v0}, Lcom/google/android/finsky/download/DownloadQueueListener;->onStart(Lcom/google/android/finsky/download/Download;)V

    .line 329
    return-void
.end method
