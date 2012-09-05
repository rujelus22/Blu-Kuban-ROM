.class final Lcom/sdgtl/mediahub/spr/download/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_68

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_258

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i(Lcom/sdgtl/mediahub/spr/download/DownloadService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v2

    if-eqz v2, :cond_1ed

    :try_start_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i(Lcom/sdgtl/mediahub/spr/download/DownloadService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ds;

    if-eqz v0, :cond_69

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->a:I

    if-nez v2, :cond_69

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->g:J

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    :cond_68
    :goto_68
    return-void

    :cond_69
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1aa

    :goto_7a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_93

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;I)V

    :cond_93
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-gtz v1, :cond_107

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v3, "Downloadable"

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    :cond_107
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v0, :cond_1dd

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ds;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ds;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b:Landroid/os/Handler;

    move-object v1, v0

    :goto_122
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    :cond_13a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_15c
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_15c} :catch_15e

    goto/16 :goto_68

    :catch_15e
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "order_Item_Id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "video_attr_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;J)V

    goto/16 :goto_68

    :cond_1aa
    :try_start_1aa
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->c()I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v2, v3, :cond_1d9

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7a

    :cond_1d9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6e

    :cond_1dd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c:Landroid/os/Handler;
    :try_end_1ea
    .catch Ljava/lang/ClassCastException; {:try_start_1aa .. :try_end_1ea} :catch_15e

    move-object v1, v0

    goto/16 :goto_122

    :cond_1ed
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k(Lcom/sdgtl/mediahub/spr/download/DownloadService;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v1

    if-eqz v1, :cond_68

    :try_start_1fe
    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/es;

    if-eqz v0, :cond_24a

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/es;->a:I

    if-nez v1, :cond_23d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v1

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/es;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J
    :try_end_21a
    .catch Ljava/lang/ClassCastException; {:try_start_1fe .. :try_end_21a} :catch_21c

    goto/16 :goto_68

    :catch_21c
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x22

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;J)V

    goto/16 :goto_68

    :cond_23d
    :try_start_23d
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/es;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/es;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b:Landroid/os/Handler;

    goto/16 :goto_68

    :cond_24a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getText(I)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c:Landroid/os/Handler;
    :try_end_256
    .catch Ljava/lang/ClassCastException; {:try_start_23d .. :try_end_256} :catch_21c

    goto/16 :goto_68

    :cond_258
    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->w()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    goto/16 :goto_68

    :cond_27b
    const-string v2, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "android.intent.action.REGISTRATION_CANCELED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "update_downloading"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_68

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->g()Ljava/io/File;

    move-result-object v2

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "pricing_type_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v1, "total"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v1, -0x1

    long-to-double v5, v5

    const-wide/high16 v9, 0x4059

    mul-double/2addr v5, v9

    long-to-double v7, v7

    div-double/2addr v5, v7

    double-to-int v0, v5

    if-ltz v0, :cond_31a

    :goto_2d3
    if-eqz v2, :cond_68

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    if-eqz v1, :cond_2e0

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C()Ljava/lang/String;

    :cond_2e0
    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->d()I

    move-result v1

    if-lt v0, v1, :cond_2ec

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->c()Z

    move-result v0

    if-nez v0, :cond_30c

    :cond_2ec
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->l(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->f()J

    move-result-wide v0

    const-wide/32 v5, 0x200000

    cmp-long v0, v0, v5

    if-lez v0, :cond_68

    :cond_30c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/g;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->m(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    goto/16 :goto_68

    :cond_31a
    move v0, v1

    goto :goto_2d3
.end method
