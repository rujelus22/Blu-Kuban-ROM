.class LIJ;
.super Ljava/lang/Object;
.source "AuthTokenManagerImpl.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIH;

.field final synthetic a:LII;


# direct methods
.method constructor <init>(LII;LIH;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, LIJ;->a:LII;

    iput-object p2, p0, LIJ;->a:LIH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 291
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 292
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 293
    iget-object v1, p0, LIJ;->a:LIH;

    invoke-interface {v1, v0}, LIH;->a(Landroid/content/Intent;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_80
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_1b} :catch_50
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_1b} :catch_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_70

    .line 309
    iget-object v0, p0, LIJ;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V

    .line 311
    :goto_24
    return-void

    .line 296
    :cond_25
    :try_start_25
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-nez v0, :cond_41

    .line 298
    iget-object v0, p0, LIJ;->a:LIH;

    new-instance v1, LJi;

    invoke-direct {v1}, LJi;-><init>()V

    invoke-interface {v0, v1}, LIH;->a(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_80
    .catch Landroid/accounts/OperationCanceledException; {:try_start_25 .. :try_end_37} :catch_50
    .catch Landroid/accounts/AuthenticatorException; {:try_start_25 .. :try_end_37} :catch_60
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_70

    .line 309
    iget-object v0, p0, LIJ;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V

    goto :goto_24

    .line 301
    :cond_41
    :try_start_41
    iget-object v0, p0, LIJ;->a:LIH;

    invoke-interface {v0}, LIH;->a()V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_80
    .catch Landroid/accounts/OperationCanceledException; {:try_start_41 .. :try_end_46} :catch_50
    .catch Landroid/accounts/AuthenticatorException; {:try_start_41 .. :try_end_46} :catch_60
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_70

    .line 309
    iget-object v0, p0, LIJ;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V

    goto :goto_24

    .line 302
    :catch_50
    move-exception v0

    .line 303
    :try_start_51
    iget-object v1, p0, LIJ;->a:LIH;

    invoke-interface {v1, v0}, LIH;->a(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_80

    .line 309
    iget-object v0, p0, LIJ;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V

    goto :goto_24

    .line 304
    :catch_60
    move-exception v0

    .line 305
    :try_start_61
    iget-object v1, p0, LIJ;->a:LIH;

    invoke-interface {v1, v0}, LIH;->a(Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_80

    .line 309
    iget-object v0, p0, LIJ;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V

    goto :goto_24

    .line 306
    :catch_70
    move-exception v0

    .line 307
    :try_start_71
    iget-object v1, p0, LIJ;->a:LIH;

    invoke-interface {v1, v0}, LIH;->a(Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_80

    .line 309
    iget-object v0, p0, LIJ;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V

    goto :goto_24

    :catchall_80
    move-exception v0

    iget-object v1, p0, LIJ;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    invoke-interface {v1}, LID;->b()V

    throw v0
.end method
