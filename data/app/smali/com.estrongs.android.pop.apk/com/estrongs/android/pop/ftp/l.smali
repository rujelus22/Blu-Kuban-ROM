.class public Lcom/estrongs/android/pop/ftp/l;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/estrongs/android/pop/ftp/l;


# instance fields
.field public a:Ljava/lang/Integer;

.field b:Z

.field private c:Lcom/estrongs/android/pop/ftp/ESFtpService;

.field private e:Lcom/estrongs/android/pop/ftp/n;

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/ftp/l;->d:Lcom/estrongs/android/pop/ftp/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/ftp/l;->b:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/l;->e:Lcom/estrongs/android/pop/ftp/n;

    new-instance v0, Lcom/estrongs/android/pop/ftp/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/m;-><init>(Lcom/estrongs/android/pop/ftp/l;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/l;)Lcom/estrongs/android/pop/ftp/ESFtpService;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/pop/ftp/l;
    .registers 2

    const-class v1, Lcom/estrongs/android/pop/ftp/l;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/ftp/l;->d:Lcom/estrongs/android/pop/ftp/l;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/ftp/l;

    invoke-direct {v0}, Lcom/estrongs/android/pop/ftp/l;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/ftp/l;->d:Lcom/estrongs/android/pop/ftp/l;

    :cond_e
    sget-object v0, Lcom/estrongs/android/pop/ftp/l;->d:Lcom/estrongs/android/pop/ftp/l;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/l;Lcom/estrongs/android/pop/ftp/ESFtpService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/l;Lcom/estrongs/android/pop/ftp/n;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/l;->e:Lcom/estrongs/android/pop/ftp/n;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/ftp/l;)Lcom/estrongs/android/pop/ftp/n;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->e:Lcom/estrongs/android/pop/ftp/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_24

    iget-boolean v0, p0, Lcom/estrongs/android/pop/ftp/l;->b:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_23

    :try_start_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_27

    :cond_23
    :goto_23
    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :catch_27
    move-exception v0

    goto :goto_23
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    .registers 6

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_26

    iget-boolean v0, p0, Lcom/estrongs/android/pop/ftp/l;->b:Z

    if-nez v0, :cond_29

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/l;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-object p2, p0, Lcom/estrongs/android/pop/ftp/l;->e:Lcom/estrongs/android/pop/ftp/n;

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    invoke-interface {p2}, Lcom/estrongs/android/pop/ftp/n;->a()V

    goto :goto_25
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/estrongs/android/pop/ftp/a;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->c()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->d()V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->e()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->g()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/l;->c:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->h()Z

    move-result v0

    return v0
.end method
