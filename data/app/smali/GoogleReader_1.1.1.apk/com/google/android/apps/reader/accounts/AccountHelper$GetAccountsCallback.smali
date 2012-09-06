.class Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;
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
    name = "GetAccountsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/accounts/AccountManagerCallback",
        "<[",
        "Lcom/google/android/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

.field private final mCallbackToken:I

.field final synthetic this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/accounts/AccountHelper;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V
    .registers 4
    .parameter
    .parameter "callback"
    .parameter "callbackToken"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    .line 402
    iput p3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->mCallbackToken:I

    .line 403
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
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    iget-object v1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    iget v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->mCallbackToken:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getResult(Lcom/google/android/accounts/AccountManagerFuture;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/accounts/Account;

    .line 408
    .local v0, accounts:[Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_13

    .line 409
    iget-object v1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;->onGetAccountsResult([Lcom/google/android/accounts/Account;)V

    .line 413
    :cond_13
    return-void
.end method
