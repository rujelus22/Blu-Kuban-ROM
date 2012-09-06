.class Lcom/google/android/accounts/DatabaseAccountManager$2;
.super Ljava/lang/Object;
.source "DatabaseAccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/DatabaseAccountManager;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/accounts/DatabaseAccountManager;

.field final synthetic val$account:Lcom/google/android/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/DatabaseAuthenticator;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->this$0:Lcom/google/android/accounts/DatabaseAccountManager;

    iput-object p2, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    iput-object p3, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$account:Lcom/google/android/accounts/Account;

    iput-object p4, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$authTokenType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    if-eqz v0, :cond_10

    .line 113
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$account:Lcom/google/android/accounts/Account;

    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$authTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 115
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$2;->val$account:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    #calls: Lcom/google/android/accounts/DatabaseAccountManager;->authenticatorMissing(Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/accounts/DatabaseAccountManager;->access$000(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_f
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/accounts/DatabaseAccountManager$2;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
