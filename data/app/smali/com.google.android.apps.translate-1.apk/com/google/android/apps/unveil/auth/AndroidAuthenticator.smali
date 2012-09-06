.class public Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Lcom/google/android/apps/unveil/auth/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;,
        Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;
    }
.end annotation


# static fields
.field public static final GOOGLE_ACCOUNT:Ljava/lang/String; = "com.google"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field protected final accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

.field private final authState:Lcom/google/android/apps/unveil/auth/AuthState;

.field private final historyUserKey:Ljava/lang/String;

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;Lcom/google/android/apps/unveil/auth/AuthState;)V
    .registers 5
    .parameter "context"
    .parameter "bridge"
    .parameter "authState"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->preferences:Landroid/content/SharedPreferences;

    .line 127
    sget v0, Lcom/google/android/apps/unveil/R$string;->history_user_key:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->historyUserKey:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    .line 129
    iput-object p3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/unveil/auth/AuthState;)V
    .registers 5
    .parameter "context"
    .parameter "authState"

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;-><init>(Landroid/content/Context;Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;Lcom/google/android/apps/unveil/auth/AuthState;)V

    .line 134
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;)Lcom/google/android/apps/unveil/auth/AuthState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->mapToSystemAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getPreferredHistoryAccount()Landroid/accounts/Account;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-object v6, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->preferences:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->historyUserKey:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, preferredAccountName:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    invoke-interface {v6}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_11
    if-ge v2, v3, :cond_21

    aget-object v0, v1, v2

    .line 259
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 263
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1d
    return-object v0

    .line 258
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v0           #account:Landroid/accounts/Account;
    :cond_21
    move-object v0, v5

    .line 263
    goto :goto_1d
.end method

.method private makeCallback(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)Landroid/accounts/AccountManagerCallback;
    .registers 3
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;",
            ")",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;-><init>(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V

    return-object v0
.end method

.method private mapToSystemAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 216
    if-nez p1, :cond_5

    move-object v1, v5

    .line 228
    :cond_4
    :goto_4
    return-object v1

    .line 219
    :cond_5
    iget-object v6, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    invoke-interface {v6}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 220
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_22

    array-length v6, v0

    if-lez v6, :cond_22

    .line 221
    move-object v2, v0

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_22

    aget-object v1, v2, v3

    .line 222
    .local v1, acct:Landroid/accounts/Account;
    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .end local v1           #acct:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_22
    move-object v1, v5

    .line 228
    goto :goto_4
.end method


# virtual methods
.method addAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;->addAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthToken()V
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/auth/AuthState;->clearAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)V

    .line 283
    return-void
.end method

.method public getAccounts()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 196
    iget-object v4, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    invoke-interface {v4}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 197
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_1b

    array-length v4, v1

    if-lez v4, :cond_1b

    .line 198
    array-length v4, v1

    new-array v3, v4, [Ljava/lang/String;

    .line 199
    .local v3, ret:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    array-length v4, v1

    if-ge v2, v4, :cond_1e

    .line 200
    aget-object v0, v1, v2

    .line 201
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 205
    .end local v0           #a:Landroid/accounts/Account;
    .end local v2           #i:I
    .end local v3           #ret:[Ljava/lang/String;
    :cond_1b
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    :cond_1e
    return-object v3
.end method

.method public getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    return-object v0
.end method

.method getAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)V
    .registers 5
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;->getAuthToken(Landroid/accounts/Account;ZLandroid/accounts/AccountManagerCallback;)V

    .line 273
    return-void
.end method

.method public getCredentials(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V
    .registers 6
    .parameter "resultHandler"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAccounts()[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, accounts:[Ljava/lang/String;
    array-length v3, v1

    packed-switch v3, :pswitch_data_3c

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getPreferredHistoryAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 248
    .local v2, preferredHistoryAccount:Landroid/accounts/Account;
    if-eqz v2, :cond_37

    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->makeCallback(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)V

    .line 254
    .end local v2           #preferredHistoryAccount:Landroid/accounts/Account;
    :goto_15
    return-void

    .line 236
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->makeCallback(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->addAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    goto :goto_15

    .line 239
    :pswitch_1e
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->mapToSystemAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 240
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_2f

    .line 241
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->makeCallback(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->addAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    goto :goto_15

    .line 243
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->makeCallback(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_15

    .line 251
    .end local v0           #account:Landroid/accounts/Account;
    .restart local v2       #preferredHistoryAccount:Landroid/accounts/Account;
    :cond_37
    invoke-interface {p1}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onMultipleAccounts()V

    goto :goto_15

    .line 234
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method public invalidateAuthToken(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V
    .registers 5
    .parameter "resultHandler"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->accountManagerBridge:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->getAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;->invalidateAuthToken(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/auth/AuthState;->clearAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)V

    .line 212
    invoke-interface {p1}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onAuthTokenInvalidated()V

    .line 213
    return-void
.end method

.method public onSignInResult(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;ILandroid/content/Intent;)V
    .registers 8
    .parameter "callback"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 288
    const/4 v2, -0x1

    if-ne p2, v2, :cond_31

    .line 289
    if-eqz p3, :cond_2d

    .line 290
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, account:Ljava/lang/String;
    const-string v2, "authtoken"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, authToken:Ljava/lang/String;
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/apps/unveil/auth/AuthState;->setAccount(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/unveil/auth/AuthState;->setAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onAuthSuccess()V

    .line 309
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #authToken:Ljava/lang/String;
    :goto_28
    return-void

    .line 300
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #authToken:Ljava/lang/String;
    :cond_29
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getCredentials(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V

    goto :goto_28

    .line 304
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #authToken:Ljava/lang/String;
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getCredentials(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V

    goto :goto_28

    .line 307
    :cond_31
    invoke-interface {p1}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onSignInCanceled()V

    goto :goto_28
.end method

.method public setPreferredHistoryAccount(Ljava/lang/String;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->historyUserKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/auth/AuthState;->setAccount(Ljava/lang/String;)V

    .line 317
    return-void
.end method
