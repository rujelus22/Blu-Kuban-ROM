.class public final Lcom/sdgtl/mediahub/spr/contentProvider/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private static d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/c;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/c;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(ILandroid/os/Bundle;)J
    .registers 4

    :try_start_0
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    invoke-interface {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/contentProvider/o;->a(ILandroid/os/Bundle;)J
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_16

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13
    :goto_13
    const-wide/16 v0, -0x1

    goto :goto_e

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_13
.end method

.method public static a(Ljava/util/ArrayList;I)J
    .registers 8

    const-wide/16 v1, -0x1

    :try_start_2
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    invoke-interface {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/o;->a()J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_1a

    move-result-wide v0

    :try_start_8
    invoke-static {v0, v1, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/util/ArrayList;)Z

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    invoke-interface {v2, v0, v1, p1}, Lcom/sdgtl/mediahub/spr/contentProvider/o;->a(JI)J
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_10} :catch_23

    :goto_10
    return-wide v0

    :catch_11
    move-exception v0

    move-object v3, v0

    move-wide v4, v1

    move-wide v0, v4

    move-object v2, v3

    :goto_16
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    :catch_1a
    move-exception v0

    move-object v3, v0

    move-wide v4, v1

    move-wide v0, v4

    move-object v2, v3

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10

    :catch_23
    move-exception v2

    goto :goto_1f

    :catch_25
    move-exception v2

    goto :goto_16
.end method

.method public static a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;
    .registers 2

    const-string v0, "req_message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 5

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    if-nez v0, :cond_22

    sput-object p0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.ContentProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/b;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_22
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method public static a(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_f

    :try_start_6
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    invoke-interface {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/contentProvider/o;->a(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_f} :catch_15

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/o;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b:Z

    return-void
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z
    .registers 5

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/contentProvider/b;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.DISCONNECTED"

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

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b:Z

    return v0
.end method

.method public static d()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b:Z

    sput-object v1, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    sput-object v1, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d:Lcom/sdgtl/mediahub/spr/contentProvider/o;

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a:Landroid/content/Context;

    return-object v0
.end method
