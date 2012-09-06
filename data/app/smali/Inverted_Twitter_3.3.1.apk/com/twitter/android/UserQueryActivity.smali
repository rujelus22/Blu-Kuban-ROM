.class public Lcom/twitter/android/UserQueryActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/gj;


# instance fields
.field protected e:J

.field protected f:Ljava/lang/String;

.field g:Z

.field private h:Lcom/twitter/android/gi;

.field private i:Lcom/twitter/android/gl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/gi;

    if-nez v0, :cond_20

    new-instance v0, Lcom/twitter/android/gi;

    invoke-virtual {p0}, Lcom/twitter/android/UserQueryActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/twitter/android/gi;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/gj;I)V

    iput-object v0, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/gi;

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/gi;

    iget-wide v1, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    iget-object v3, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/UserQueryActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/gi;->a(JLjava/lang/String;J)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/gi;

    iget-wide v1, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    iget-object v3, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/UserQueryActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/gi;->b(JLjava/lang/String;J)V

    goto :goto_1f
.end method

.method public final a(Landroid/os/Bundle;IZ)V
    .registers 9

    const-wide/16 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    new-instance v2, Lcom/twitter/android/gl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/android/gl;-><init>(Lcom/twitter/android/UserQueryActivity;Lcom/twitter/android/gk;)V

    iput-object v2, p0, Lcom/twitter/android/UserQueryActivity;->i:Lcom/twitter/android/gl;

    iget-object v2, p0, Lcom/twitter/android/UserQueryActivity;->a:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/UserQueryActivity;->i:Lcom/twitter/android/gl;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    if-eqz p1, :cond_27

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/twitter/android/UserQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    const-string v3, "screen_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v3, "twitter"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "user_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    :try_start_55
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_58} :catch_64

    move-result-wide v0

    :cond_59
    :goto_59
    const-string v3, "screen_name"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    iput-object v2, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    goto :goto_26

    :catch_64
    move-exception v3

    goto :goto_59
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 6

    iget-boolean v0, p0, Lcom/twitter/android/UserQueryActivity;->g:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/twitter/android/UserQueryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/twitter/android/api/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/twitter/android/UserQueryActivity;->b(Lcom/twitter/android/api/ac;)V

    goto :goto_a

    :cond_17
    iget-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/UserQueryActivity;->g:Z

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UserQueryActivity;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method protected b(Lcom/twitter/android/api/ac;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-wide v0, p1, Lcom/twitter/android/api/ac;->a:J

    iput-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    iget-object v0, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UserQueryActivity;->i:Lcom/twitter/android/gl;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_id"

    iget-wide v1, p0, Lcom/twitter/android/UserQueryActivity;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "username"

    iget-object v1, p0, Lcom/twitter/android/UserQueryActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
