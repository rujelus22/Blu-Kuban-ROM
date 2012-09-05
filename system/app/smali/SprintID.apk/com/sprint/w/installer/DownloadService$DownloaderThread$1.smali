.class Lcom/sprint/w/installer/DownloadService$DownloaderThread$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DownloadService$DownloaderThread;->executeDownload(Lorg/apache/http/client/methods/HttpGet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/DownloadService$DownloaderThread;)V
    .registers 2
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$1;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 569
    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$1;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-object v1, v1, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v1}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060099

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 570
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 571
    return-void
.end method
