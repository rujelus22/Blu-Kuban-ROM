.class public final Lcom/google/android/youtube/core/async/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field private final b:Landroid/accounts/AccountManager;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    .line 60
    sget-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/a;-><init>(Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "accountManager cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    .line 52
    const-string v0, "authMethod cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 53
    return-void
.end method

.method private a(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 206
    if-nez p1, :cond_4

    .line 225
    :goto_3
    return-object v0

    .line 211
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_e} :catch_3e
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_e} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_22

    move-result-object v1

    .line 221
    if-eqz v1, :cond_29

    .line 222
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :catch_1b
    move-exception v1

    .line 215
    const-string v2, "blockingGetUserAuth failed with AuthenticatorException"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 217
    :catch_22
    move-exception v1

    .line 218
    const-string v2, "blockingGetUserAuth failed with IOException"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 224
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got null authToken for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 213
    :catch_3e
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 81
    :goto_8
    return-object v0

    .line 75
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/a;->a()[Landroid/accounts/Account;

    move-result-object v2

    .line 76
    const/4 v0, 0x0

    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_21

    .line 77
    aget-object v3, v2, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 78
    aget-object v0, v2, v0

    goto :goto_8

    .line 76
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    move-object v0, v1

    .line 81
    goto :goto_8
.end method

.method public final a(Landroid/accounts/Account;Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "activity cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v1, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/async/b;

    invoke-direct {v5, p0, p3}, Lcom/google/android/youtube/core/async/b;-><init>(Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/bc;)V

    move-object v1, p1

    move-object v4, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 135
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 94
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p1, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/bc;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 113
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 115
    if-nez v1, :cond_f

    .line 116
    invoke-interface {p2}, Lcom/google/android/youtube/core/async/bc;->e_()V

    .line 120
    :goto_e
    return-void

    .line 118
    :cond_f
    const-string v0, "account cannot be null"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/youtube/core/async/b;

    invoke-direct {v4, p0, p2}, Lcom/google/android/youtube/core/async/b;-><init>(Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/bc;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_e
.end method

.method public final a()[Landroid/accounts/Account;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 3
    .parameter

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    return-object v0
.end method
