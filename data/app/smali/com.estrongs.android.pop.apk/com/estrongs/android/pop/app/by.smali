.class Lcom/estrongs/android/pop/app/by;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/by;)Lcom/estrongs/android/pop/app/OneKeyBackupActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/estrongs/android/util/j;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->g(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/estrongs/android/util/j;-><init>(Ljava/util/List;)V

    move-wide v0, v2

    :cond_e
    :goto_e
    iget-object v5, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->h(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {v4}, Lcom/estrongs/android/util/j;->a()Lcom/estrongs/android/util/k;

    move-result-object v5

    if-nez v5, :cond_4a

    iget-object v4, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/estrongs/android/widget/ag;->a(J)V

    new-instance v0, Lcom/estrongs/android/util/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->g(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/j;-><init>(Ljava/util/List;)V

    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->h(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/estrongs/android/util/j;->a()Lcom/estrongs/android/util/k;

    move-result-object v1

    if-nez v1, :cond_5c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bz;-><init>(Lcom/estrongs/android/pop/app/by;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_16

    :cond_4a
    iget-object v6, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-interface {v5}, Lcom/estrongs/android/util/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Lcom/estrongs/android/util/k;->d()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_e

    :cond_5c
    iget-object v4, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-interface {v1}, Lcom/estrongs/android/util/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Lcom/estrongs/android/util/k;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v4

    invoke-interface {v1}, Lcom/estrongs/android/util/k;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/widget/ag;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/estrongs/android/widget/ag;->b(J)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1}, Lcom/estrongs/android/util/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0xa

    :try_start_92
    invoke-static {v4, v5}, Lcom/estrongs/android/pop/app/by;->sleep(J)V
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_31

    :catch_96
    move-exception v1

    goto :goto_31
.end method
