.class final Lcom/dropbox/android/activity/auth/g;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/auth/DropboxAuth;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/auth/DropboxAuth;Lcom/dropbox/android/activity/auth/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/auth/g;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 394
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    .line 396
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 398
    :try_start_e
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    iget-object v2, v1, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v3}, Lcom/dropbox/android/activity/auth/DropboxAuth;->t(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldbxyzptlk/p/i;->f(Ljava/lang/String;)Ldbxyzptlk/p/u;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/u;)Ldbxyzptlk/p/u;
    :try_end_1f
    .catch Ldbxyzptlk/m/b; {:try_start_e .. :try_end_1f} :catch_af
    .catch Ldbxyzptlk/m/i; {:try_start_e .. :try_end_1f} :catch_ba
    .catch Ldbxyzptlk/m/g; {:try_start_e .. :try_end_1f} :catch_ca
    .catch Ldbxyzptlk/m/a; {:try_start_e .. :try_end_1f} :catch_e6

    .line 420
    :cond_1f
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->f(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/x;

    move-result-object v0

    if-nez v0, :cond_61

    .line 421
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/x;)Ldbxyzptlk/p/x;

    .line 423
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->f(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/x;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->f(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/x;

    move-result-object v0

    iget-wide v2, v0, Ldbxyzptlk/p/x;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_58

    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->f(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/x;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 426
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/x;)Ldbxyzptlk/p/x;
    :try_end_61
    .catch Ldbxyzptlk/m/a; {:try_start_58 .. :try_end_61} :catch_f1

    .line 435
    :cond_61
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->l(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->n(Lcom/dropbox/android/activity/auth/DropboxAuth;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 439
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/p/u;->e:Ljava/lang/String;

    .line 440
    if-eqz v0, :cond_8d

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 441
    :cond_8d
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/p/u;->d:Ljava/lang/String;

    .line 443
    :cond_95
    if-eqz v0, :cond_9f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 445
    :cond_9f
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0, v7}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Z)Z

    .line 458
    :goto_a4
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 460
    :cond_ae
    :goto_ae
    return-void

    .line 399
    :catch_af
    move-exception v0

    .line 400
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ae

    .line 402
    :catch_ba
    move-exception v0

    .line 403
    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->d()Z

    .line 404
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->v(Lcom/dropbox/android/activity/auth/DropboxAuth;)Lcom/dropbox/android/activity/delegate/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;)Z

    goto :goto_ae

    .line 406
    :catch_ca
    move-exception v0

    .line 407
    iget v0, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_db

    .line 408
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ae

    .line 410
    :cond_db
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ae

    .line 413
    :catch_e6
    move-exception v0

    .line 414
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ae

    .line 427
    :catch_f1
    move-exception v0

    .line 428
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ae

    .line 448
    :cond_fc
    :try_start_fc
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v1, v0}, Ldbxyzptlk/p/i;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_107
    .catch Ldbxyzptlk/m/b; {:try_start_fc .. :try_end_107} :catch_108
    .catch Ldbxyzptlk/m/a; {:try_start_fc .. :try_end_107} :catch_10a

    goto :goto_a4

    .line 449
    :catch_108
    move-exception v0

    goto :goto_a4

    .line 451
    :catch_10a
    move-exception v0

    .line 453
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/g;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0, v7}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Z)Z

    goto :goto_a4
.end method
