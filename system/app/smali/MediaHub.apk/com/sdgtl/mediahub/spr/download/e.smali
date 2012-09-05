.class final Lcom/sdgtl/mediahub/spr/download/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/e;)Lcom/sdgtl/mediahub/spr/download/DownloadService;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v12, 0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "MediaHubAPP"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Service - mHandlerWorkFinish - p******Id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubAPP"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Service - mHandlerWorkFinish - msg.what = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_49
    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_da

    move v2, v4

    :goto_56
    iget v10, p1, Landroid/os/Message;->what:I

    if-nez v10, :cond_112

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    if-ltz v4, :cond_86

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_86
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_97

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0, v8, v9}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;ILjava/lang/String;)V

    :cond_97
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v2, "Downloaded"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iput v3, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_d3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    :cond_d3
    :goto_d3
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h()V

    :cond_d9
    :goto_d9
    return-void

    :cond_da
    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->c()I

    move-result v10

    if-ne v10, v8, :cond_10e

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10e

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->b()I

    move-result v4

    move v13, v4

    move v4, v2

    move v2, v13

    goto/16 :goto_56

    :cond_10e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_49

    :cond_112
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v12, :cond_2c8

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v8, v9}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-gez v2, :cond_123

    if-eqz v1, :cond_d9

    :cond_123
    const-string v11, "Archive"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_144

    if-ltz v4, :cond_136

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_136
    if-eqz v2, :cond_13d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1, v8, v9}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;ILjava/lang/String;)V

    :cond_13d
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_d9

    :cond_144
    if-eqz v1, :cond_15f

    sget-object v2, Lcom/sdgtl/mediahub/spr/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_232

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const v10, 0x7f0a011f

    invoke-virtual {v2, v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v2, v5

    :cond_15f
    :goto_15f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v10, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v1, v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    if-ne v2, v5, :cond_252

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget-object v11, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v11}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v11

    iget v11, v11, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v3, v10, v11}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v10

    iget v10, v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v1

    if-ne v1, v5, :cond_1d5

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v10

    iget v10, v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v12, v5, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    :cond_1d5
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v5, "Downloadable"

    invoke-static {v8, v1, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v8, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    :cond_1f7
    :goto_1f7
    if-ltz v4, :cond_202

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_202
    if-eqz v2, :cond_209

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1, v8, v9}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;ILjava/lang/String;)V

    :cond_209
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_d3

    if-nez v2, :cond_225

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d3

    :cond_225
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    goto/16 :goto_d3

    :cond_232
    const-string v2, "DownloadFileNotExistException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v2

    const v10, 0x7f0a0114

    invoke-virtual {v2, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v2, v5

    goto/16 :goto_15f

    :cond_24f
    const/4 v2, 0x4

    goto/16 :goto_15f

    :cond_252
    if-ne v2, v12, :cond_1f7

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v5, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v10

    cmp-long v1, v10, v6

    if-gtz v1, :cond_1f7

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v10, "Downloadable"

    invoke-static {v1, v5, v10}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v5, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    goto/16 :goto_1f7

    :cond_2c8
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v5, :cond_3bd

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e()Z

    move-result v0

    if-nez v0, :cond_d9

    if-ltz v4, :cond_2e0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2e0
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_302

    if-gez v2, :cond_2ff

    if-nez v1, :cond_2ff

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    move-wide v0, v6

    :goto_2f0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sdgtl/mediahub/spr/download/f;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/download/f;-><init>(Lcom/sdgtl/mediahub/spr/download/e;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d3

    :cond_2ff
    const-wide/16 v0, 0x7530

    goto :goto_2f0

    :cond_302
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_38e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    :cond_38e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.download.playinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_d3

    :cond_3bd
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const v4, 0x7f0a0112

    invoke-virtual {v2, v4}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-gtz v1, :cond_431

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v4, "Downloadable"

    invoke-static {v1, v2, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    :cond_431
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v3

    :goto_458
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_474

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    goto/16 :goto_d3

    :cond_474
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/e;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_458
.end method
