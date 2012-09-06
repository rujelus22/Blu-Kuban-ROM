.class Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/google/android/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/accounts/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAuthTokenCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

.field private final mCallbackToken:I

.field final synthetic this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/accounts/AccountHelper;Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V
    .registers 6
    .parameter
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callback"
    .parameter "callbackToken"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mAccount:Lcom/google/android/accounts/Account;

    .line 429
    iput-object p3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mAuthTokenType:Ljava/lang/String;

    .line 430
    iput-object p4, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    .line 431
    iput p5, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mCallbackToken:I

    .line 432
    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/accounts/AccountManagerFuture;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    iget v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mCallbackToken:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getResult(Lcom/google/android/accounts/AccountManagerFuture;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 438
    .local v0, result:Landroid/os/Bundle;
    if-eqz v0, :cond_1a

    .line 439
    #calls: Lcom/google/android/apps/reader/accounts/AccountHelper;->clearNewTaskFlag(Landroid/os/Bundle;)V
    invoke-static {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->access$000(Landroid/os/Bundle;)V

    .line 440
    iget-object v1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;->mAuthTokenType:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;->onGetAuthTokenResult(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    :cond_1a
    return-void
.end method
