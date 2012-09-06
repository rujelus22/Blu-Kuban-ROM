.class public abstract Lcom/google/android/accounts/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/accounts/AccountManager$1;,
        Lcom/google/android/accounts/AccountManager$Future2Task;,
        Lcom/google/android/accounts/AccountManager$BaseFutureTask;,
        Lcom/google/android/accounts/AccountManager$TaskExecutor;
    }
.end annotation


# static fields
.field public static final ACTION_AUTHENTICATOR_INTENT:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final AUTHENTICATOR_ATTRIBUTES_NAME:Ljava/lang/String; = "account-authenticator"

.field public static final AUTHENTICATOR_META_DATA_NAME:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final ERROR_CODE_BAD_ARGUMENTS:I = 0x7

.field public static final ERROR_CODE_BAD_REQUEST:I = 0x8

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_REMOTE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_UNSUPPORTED_OPERATION:I = 0x6

.field public static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final KEY_ACCOUNT_AUTHENTICATOR_RESPONSE:Ljava/lang/String; = "accountAuthenticatorResponse"

.field public static final KEY_ACCOUNT_MANAGER_RESPONSE:Ljava/lang/String; = "accountManagerResponse"

.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final KEY_AUTHENTICATOR_TYPES:Ljava/lang/String; = "authenticator_types"

.field public static final KEY_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final KEY_AUTH_FAILED_MESSAGE:Ljava/lang/String; = "authFailedMessage"

.field public static final KEY_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabelKey"

.field public static final KEY_BOOLEAN_RESULT:Ljava/lang/String; = "booleanResult"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_USERDATA:Ljava/lang/String; = "userdata"

.field public static final LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field private static final SDK:I


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/accounts/AccountManager;->SDK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/accounts/AccountManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/accounts/AccountManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 102
    sget v0, Lcom/google/android/accounts/AccountManager;->SDK:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_b

    .line 106
    new-instance v0, Lcom/google/android/accounts/StandardAccountManager;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/StandardAccountManager;-><init>(Landroid/content/Context;)V

    .line 114
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/accounts/DatabaseAccountManager;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/DatabaseAccountManager;-><init>(Landroid/content/Context;)V

    goto :goto_a
.end method


# virtual methods
.method public abstract addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Void;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Void;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public final blockingGetAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    .local v5, handler:Landroid/os/Handler;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 282
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/accounts/AccountManager;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 284
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;
.end method

.method public abstract getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeAccount(Lcom/google/android/accounts/Account;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
