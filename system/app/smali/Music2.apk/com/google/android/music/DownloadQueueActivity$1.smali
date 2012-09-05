.class Lcom/google/android/music/DownloadQueueActivity$1;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/DownloadQueueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/music/DownloadQueueActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/DownloadQueueActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$1;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$1;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    invoke-virtual {v0}, Lcom/google/android/music/DownloadQueueActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/music/DownloadQueueActivity;->access$100()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$1;->c:Landroid/database/Cursor;

    .line 71
    return-void
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$1;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    invoke-virtual {v0}, Lcom/google/android/music/DownloadQueueActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$1;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    iget-object v1, p0, Lcom/google/android/music/DownloadQueueActivity$1;->c:Landroid/database/Cursor;

    #calls: Lcom/google/android/music/DownloadQueueActivity;->init(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/google/android/music/DownloadQueueActivity;->access$000(Lcom/google/android/music/DownloadQueueActivity;Landroid/database/Cursor;)V

    .line 66
    :cond_f
    return-void
.end method
