.class final Lcom/sdgtl/mediahub/spr/download/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/m;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    const-string v2, "com.sdgtl.stamhubb.PAUSED_POSITION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "com.sec.android.app.videoplayer.PAUSED_POSITION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_1c
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->c()J

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "paused_position"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/m;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v0, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoPlayerReceiver - paused position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method
