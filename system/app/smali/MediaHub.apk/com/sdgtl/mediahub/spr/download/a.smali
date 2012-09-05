.class public final Lcom/sdgtl/mediahub/spr/download/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Lcom/sdgtl/mediahub/spr/download/a;

.field private static d:Lcom/sdgtl/mediahub/spr/download/s;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/download/a;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/a;->c:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/b;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/download/b;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :try_start_8
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    :cond_1f
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/download/s;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_24} :catch_26

    move-result-wide v0

    :goto_25
    return-wide v0

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2a
    :goto_2a
    const-wide/16 v0, -0x1

    goto :goto_25

    :cond_2d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    const v2, 0x7f0a0116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_2a
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/download/a;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->c:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 5

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->c:Lcom/sdgtl/mediahub/spr/download/a;

    if-nez v0, :cond_22

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/download/a;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/a;->c:Lcom/sdgtl/mediahub/spr/download/a;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/download/a;->b:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.DownloadService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_22
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->c:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/download/s;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/s;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/download/a;->b:Z

    return-void
.end method

.method public static a(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/download/s;->a(ILjava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public static b()I
    .registers 1

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v0}, Lcom/sdgtl/mediahub/spr/download/s;->d()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "downloading_product_id"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloading_video_attr_type_code"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    if-eqz v0, :cond_5c

    new-instance v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-direct {v2, p0, v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->E:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/c/a;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    if-eqz v0, :cond_58

    const-string v1, "charge_dialog_display_y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_48
    :try_start_48
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/download/s;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_7

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    :cond_58
    invoke-static {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_5c
    invoke-static {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v0}, Lcom/sdgtl/mediahub/spr/download/s;->e()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v1}, Lcom/sdgtl/mediahub/spr/download/s;->c()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public static e()J
    .registers 3

    const-wide/16 v0, -0x1

    :try_start_2
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v2}, Lcom/sdgtl/mediahub/spr/download/s;->f()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v0

    :cond_c
    :goto_c
    return-wide v0

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static f()Z
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v1}, Lcom/sdgtl/mediahub/spr/download/s;->b()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public static g()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    invoke-interface {v0}, Lcom/sdgtl/mediahub/spr/download/s;->a()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static h()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->j()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public static i()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/download/a;->b:Z

    return v0
.end method

.method public static j()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/download/a;->b:Z

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/a;->c:Lcom/sdgtl/mediahub/spr/download/a;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/a;->d:Lcom/sdgtl/mediahub/spr/download/s;

    return-void
.end method

.method static synthetic k()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/a;->a:Landroid/content/Context;

    return-object v0
.end method
