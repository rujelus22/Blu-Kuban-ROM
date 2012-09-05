.class Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$1;
.super Ljava/lang/Object;
.source "DownloadProgressNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$1;->this$0:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$1;->this$0:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    #calls: Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->updateFileSize()J
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->access$000(Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;)J

    .line 57
    return-void
.end method
