.class Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

.field final synthetic val$op:Lcom/google/android/apps/plus/api/DownloadImageOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;Lcom/google/android/apps/plus/api/DownloadImageOperation;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;->this$0:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;->val$op:Lcom/google/android/apps/plus/api/DownloadImageOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;->val$op:Lcom/google/android/apps/plus/api/DownloadImageOperation;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;->val$op:Lcom/google/android/apps/plus/api/DownloadImageOperation;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;->val$op:Lcom/google/android/apps/plus/api/DownloadImageOperation;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->getImageBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->onImageDownloadComplete(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 51
    return-void
.end method
