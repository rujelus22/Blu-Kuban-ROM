.class Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;
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
    name = "InvalidateAuthTokenCallback"
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
    .line 453
    iput-object p1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    .line 455
    iput p3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->mCallbackToken:I

    .line 456
    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/accounts/AccountManagerFuture;)V
    .registers 7
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
    .line 460
    .local p1, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    iget-object v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    iget v4, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->mCallbackToken:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getResult(Lcom/google/android/accounts/AccountManagerFuture;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 461
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_1f

    .line 462
    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, authToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    #getter for: Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;
    invoke-static {v2}, Lcom/google/android/apps/reader/accounts/AccountHelper;->access$100(Lcom/google/android/apps/reader/accounts/AccountHelper;)Lcom/google/android/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v0           #authToken:Ljava/lang/String;
    :cond_1f
    return-void
.end method
