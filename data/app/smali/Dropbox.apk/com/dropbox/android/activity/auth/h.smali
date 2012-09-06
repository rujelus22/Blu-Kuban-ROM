.class final Lcom/dropbox/android/activity/auth/h;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/auth/DropboxAuth;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/auth/DropboxAuth;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    .line 466
    invoke-direct {p0, p2}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 467
    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ldbxyzptlk/p/o;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 471
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 473
    :try_start_5
    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->t(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/p/i;->g(Ljava/lang/String;)Ldbxyzptlk/p/o;
    :try_end_10
    .catch Ldbxyzptlk/m/g; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ldbxyzptlk/m/a; {:try_start_5 .. :try_end_10} :catch_2f

    move-result-object v0

    .line 484
    :goto_11
    return-object v0

    .line 474
    :catch_12
    move-exception v0

    .line 475
    iget v0, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_24

    .line 476
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    :goto_22
    const/4 v0, 0x0

    goto :goto_11

    .line 478
    :cond_24
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 480
    :catch_2f
    move-exception v0

    .line 481
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22
.end method

.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/auth/h;->a(Landroid/content/Context;[Ljava/lang/Void;)Ldbxyzptlk/p/o;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ldbxyzptlk/p/o;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 489
    if-eqz p2, :cond_7

    .line 490
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0, p2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/o;)V

    .line 492
    :cond_7
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/h;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->p(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    .line 497
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p2, Ldbxyzptlk/p/o;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/auth/h;->a(Landroid/content/Context;Ldbxyzptlk/p/o;)V

    return-void
.end method
