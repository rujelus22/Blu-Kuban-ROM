.class final Lcom/anddoes/launcher/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ig;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ig;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ih;->a:Lcom/anddoes/launcher/ig;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 6
    .parameter

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;
    :try_end_7
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_1c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_7} :catch_26

    .line 132
    :goto_7
    if-eqz v0, :cond_11

    array-length v1, v0

    if-lez v1, :cond_11

    .line 133
    iget-object v1, p0, Lcom/anddoes/launcher/ih;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/ig;->a(Lcom/anddoes/launcher/ig;[Landroid/accounts/Account;)V

    .line 135
    :cond_11
    return-void

    .line 125
    :catch_12
    move-exception v0

    .line 126
    const-string v2, "Notifier"

    const-string v3, "Got OperationCanceledException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_7

    .line 127
    :catch_1c
    move-exception v0

    .line 128
    const-string v2, "Notifier"

    const-string v3, "Got OperationCanceledException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_7

    .line 129
    :catch_26
    move-exception v0

    .line 130
    const-string v2, "Notifier"

    const-string v3, "Got OperationCanceledException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_7
.end method
