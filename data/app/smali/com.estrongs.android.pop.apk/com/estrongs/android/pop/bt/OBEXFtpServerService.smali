.class public Lcom/estrongs/android/pop/bt/OBEXFtpServerService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/estrongs/android/pop/bt/e;

.field private b:Lcom/estrongs/android/pop/bt/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_14
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->a()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/f;->a()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    if-nez v0, :cond_3e

    new-instance v0, Lcom/estrongs/android/pop/bt/e;

    new-instance v1, Lcom/estrongs/android/pop/bt/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/bt/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/bt/e;-><init>(Lcom/estrongs/android/pop/bt/OBEXFtpServerService;Lcom/estrongs/android/pop/bt/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->start()V

    :cond_3e
    const v0, 0x7f090123

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    :cond_19
    const v0, 0x7f090124

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a()V

    return-void
.end method
