.class Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->makeCallback(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)Landroid/accounts/AccountManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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
.field final synthetic this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

.field final synthetic val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    iput-object p2, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleResult(Landroid/os/Bundle;)V
    .registers 9
    .parameter "result"

    .prologue
    .line 162
    const-string v3, "authAccount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "authtoken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, authToken:Ljava/lang/String;
    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 166
    .local v1, authIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v3

    const-string v4, "Handling bundle: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    if-eqz v0, :cond_41

    if-eqz v2, :cond_41

    .line 168
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    #getter for: Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->authState:Lcom/google/android/apps/unveil/auth/AuthState;
    invoke-static {v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$100(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;)Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/apps/unveil/auth/AuthState;->setAccount(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    #getter for: Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->authState:Lcom/google/android/apps/unveil/auth/AuthState;
    invoke-static {v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$100(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;)Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->setAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onAuthSuccess()V

    .line 189
    :goto_40
    return-void

    .line 172
    :cond_41
    if-eqz v1, :cond_54

    .line 180
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x10000001

    and-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    invoke-interface {v3, v1}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onSignIn(Landroid/content/Intent;)V

    goto :goto_40

    .line 182
    :cond_54
    if-eqz v0, :cond_76

    .line 183
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/apps/unveil/auth/AuthState;->setAccount(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/auth/AuthState;->clearAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)V

    .line 185
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    iget-object v4, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->this$0:Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    #calls: Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->mapToSystemAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v4, v0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$200(Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->getAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_40

    .line 187
    :cond_76
    iget-object v3, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    sget-object v4, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->UNKNOWN:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    invoke-interface {v3, v4}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onAuthenticationError(Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;)V

    goto :goto_40
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 146
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 147
    .local v1, result:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->handleResult(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_a} :catch_b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_a} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_31

    .line 159
    .end local v1           #result:Landroid/os/Bundle;
    :goto_a
    return-void

    .line 148
    :catch_b
    move-exception v0

    .line 149
    .local v0, e:Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "User canceled"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    invoke-interface {v2}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onSignInCanceled()V

    goto :goto_a

    .line 151
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1d
    move-exception v0

    .line 152
    .local v0, e:Landroid/accounts/AuthenticatorException;
    invoke-static {}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Authenticator error while fetching auth token."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    sget-object v3, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->GOOGLE_LOGIN_SERVICE_AUTHENTICATOR_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    invoke-interface {v2, v3}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onAuthenticationError(Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;)V

    goto :goto_a

    .line 154
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_31
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Error fetching auth token."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$1;->val$callback:Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;

    sget-object v3, Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;->GOOGLE_LOGIN_SERVICE_AUTHENTICATION_SERVER_ERROR:Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;

    invoke-interface {v2, v3}, Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;->onAuthenticationError(Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;)V

    goto :goto_a
.end method
