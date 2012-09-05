.class final Lcom/sdgtl/mediahub/spr/download/d;
.super Lcom/sdgtl/mediahub/spr/download/t;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/download/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J
    .registers 11

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(ILjava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_c9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_23
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2c
    move v1, v2

    :goto_2d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_d8

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    if-ne v4, v7, :cond_109

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v4, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    :goto_58
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Service - requestDownload - mDownloadThread.size() = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->b(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_117

    if-gez v3, :cond_117

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->b(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_117

    if-eqz v0, :cond_a7

    const-string v1, "charge_dialog_display_n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    :cond_a7
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e:Landroid/os/Handler;

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    iget-wide v4, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_ba
    :goto_ba
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_c9
    if-eq v4, v7, :cond_cd

    if-eqz p2, :cond_23

    :cond_cd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    :cond_d8
    const-string v5, "MediaHubAPP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Service - requestDownload - index = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", p******I* = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2d

    :cond_109
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v5, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v4, v1, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    goto/16 :goto_58

    :cond_117
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_ba

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v3, "Downloading"

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    goto/16 :goto_ba
.end method

.method public final a(I)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_17

    :goto_10
    if-eqz v1, :cond_16

    if-eqz v3, :cond_16

    const-string v1, "09"

    :cond_16
    return-object v1

    :cond_17
    if-nez v1, :cond_3c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v0, p1, :cond_3c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    :goto_37
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_4

    :cond_3c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v0, p1, :cond_5b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    goto :goto_10

    :cond_5b
    move-object v0, v1

    goto :goto_37
.end method

.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_29

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    return-void

    :cond_29
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public final a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V
    .registers 11

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service - cancelDownload - cause = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->c()I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->d()Ljava/lang/String;

    move-result-object v2

    packed-switch p2, :pswitch_data_196

    :cond_4b
    :goto_4b
    :pswitch_4b
    return-void

    :pswitch_4c
    iget v3, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v1, v3, :cond_74

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {p2}, Lcom/sdgtl/mediahub/spr/download/n;->a(I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4b

    :cond_74
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v4, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v5, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    :cond_9f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;ILjava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.cancel_productId"

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.attr_type"

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4b

    :pswitch_ee
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->e()Z

    move-result v2

    if-eqz v2, :cond_10d

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->b()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4b

    :cond_10d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {p2}, Lcom/sdgtl/mediahub/spr/download/n;->a(I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_4b

    :cond_12a
    const/4 v1, 0x5

    if-eq p2, v1, :cond_4b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v3, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v3, "Downloadable"

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v2, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;ILjava/lang/String;)V

    iget v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.cancel_productId"

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.attr_type"

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4b

    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_ee
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_ee
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->d()I

    move-result v0

    if-lt p2, v0, :cond_13

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;J)V

    :cond_13
    return-void
.end method

.method public final a(ILjava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    :goto_e
    return v2

    :cond_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v0, p1, :cond_37

    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_35
    const/4 v2, 0x1

    goto :goto_e

    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final b()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final c()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public final d()I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    :goto_27
    return v0

    :cond_28
    const/4 v0, -0x1

    goto :goto_27
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public final f()J
    .registers 7

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c()I

    move-result v3

    if-gt v2, v3, :cond_13

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->a()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/d;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->b()I

    move-result v3

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v3, v2, :cond_3d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->f()J

    move-result-wide v2

    :goto_35
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    move-wide v0, v2

    goto :goto_12

    :cond_3d
    move-wide v2, v0

    goto :goto_35
.end method
