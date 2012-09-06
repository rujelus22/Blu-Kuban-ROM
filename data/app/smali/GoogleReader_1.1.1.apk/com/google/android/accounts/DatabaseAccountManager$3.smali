.class Lcom/google/android/accounts/DatabaseAccountManager$3;
.super Ljava/lang/Object;
.source "DatabaseAccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/DatabaseAccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Void;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
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

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$addAccountOptions:Landroid/os/Bundle;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/DatabaseAuthenticator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->this$0:Lcom/google/android/accounts/DatabaseAccountManager;

    iput-object p2, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    iput-object p3, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$accountType:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$authTokenType:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$addAccountOptions:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$accountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$addAccountOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/accounts/DatabaseAuthenticator;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$3;->val$accountType:Ljava/lang/String;

    #calls: Lcom/google/android/accounts/DatabaseAccountManager;->authenticatorMissing(Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/accounts/DatabaseAccountManager;->access$000(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_12
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/accounts/DatabaseAccountManager$3;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
