.class final Lcom/sdgtl/mediahub/spr/common/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/bv;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/common/bv;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/bv;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/bv;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.cancel_productId"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.attr_type"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/bv;->b:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/bv;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_72
    return-void
.end method
