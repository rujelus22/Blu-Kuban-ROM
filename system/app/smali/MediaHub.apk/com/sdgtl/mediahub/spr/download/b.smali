.class final Lcom/sdgtl/mediahub/spr/download/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaHubDownload"

    const-string v1, "DownloadHelper.mSrvConn.onServiceConnected()"

    invoke-static {v0, v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {p2}, Lcom/sdgtl/mediahub/spr/download/t;->a(Landroid/os/IBinder;)Lcom/sdgtl/mediahub/spr/download/s;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/s;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Z)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaHubDownload"

    const-string v1, "DownloadHelper.mSrvConn.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/s;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Z)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
