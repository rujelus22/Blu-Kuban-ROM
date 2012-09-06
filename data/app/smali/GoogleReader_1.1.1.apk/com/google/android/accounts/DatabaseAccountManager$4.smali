.class Lcom/google/android/accounts/DatabaseAccountManager$4;
.super Ljava/lang/Object;
.source "DatabaseAccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/DatabaseAccountManager;->removeAccount(Lcom/google/android/accounts/Account;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/accounts/DatabaseAccountManager;

.field final synthetic val$account:Lcom/google/android/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAccountManager$4;->this$0:Lcom/google/android/accounts/DatabaseAccountManager;

    iput-object p2, p0, Lcom/google/android/accounts/DatabaseAccountManager$4;->val$account:Lcom/google/android/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager$4;->this$0:Lcom/google/android/accounts/DatabaseAccountManager;

    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAccountManager$4;->val$account:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    #calls: Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;
    invoke-static {v1, v2}, Lcom/google/android/accounts/DatabaseAccountManager;->access$100(Lcom/google/android/accounts/DatabaseAccountManager;Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 171
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_17

    .line 172
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager$4;->val$account:Lcom/google/android/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/accounts/DatabaseAuthenticator;->removeAccount(Lcom/google/android/accounts/Account;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 174
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_16
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/accounts/DatabaseAccountManager$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
