.class final Lcom/sdgtl/mediahub/spr/download/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_117

    if-eqz v0, :cond_117

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->b()I

    move-result v5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i()I

    move-result v0

    if-ne v0, v5, :cond_6e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_59

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    :cond_59
    :goto_59
    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_68
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    :cond_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j()Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_7a
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e()Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9b
    const-string v0, ""

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->b(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_b6

    if-eqz v1, :cond_b6

    move v1, v2

    :goto_aa
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_d6

    :cond_b6
    :goto_b6
    if-eqz v0, :cond_d2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_d2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    :cond_d2
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h()V

    goto :goto_59

    :cond_d6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/sdgtl/mediahub/spr/c/a;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f9

    const-string v6, "charge_dialog_display_n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_112

    :cond_f9
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e:Landroid/os/Handler;

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v7, v8, v9}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v6, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/a;

    move-object v0, v4

    goto :goto_b6

    :cond_112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_aa

    :cond_117
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h()V

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Z)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v0, v1, :cond_141

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->D:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v0, v1, :cond_141

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const v3, 0x7f0a01dc

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_141
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_198

    :goto_149
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1a6

    :goto_155
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.cancel_productId"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.sdgtl.mediahub.spr.download.playinfo"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_198
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_68

    :cond_1a6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->c()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v0, v1, :cond_1d3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/l;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_155

    :cond_1d3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_149
.end method
