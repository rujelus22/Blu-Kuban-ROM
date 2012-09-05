.class Lcom/android/providers/downloads/ui/SecDownloadList$10;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$10;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/SecDownloadList$10;->val$downloadId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$10;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1800(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/app/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$10;->val$downloadId:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->secrestartDownload([J)Z

    .line 696
    return-void
.end method
