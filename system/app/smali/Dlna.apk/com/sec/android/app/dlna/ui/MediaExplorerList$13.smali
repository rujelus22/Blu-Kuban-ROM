.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$13;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$13;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 1444
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->cancelDownload(Z)Z

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$13;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$13;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->removeDialog(I)V

    .line 1448
    return-void
.end method
