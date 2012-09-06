.class Lcom/google/android/accounts/DatabaseAccountManager$1;
.super Ljava/lang/Object;
.source "DatabaseAccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/DatabaseAccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Lcom/google/android/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/accounts/DatabaseAccountManager;

.field final synthetic val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/DatabaseAuthenticator;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->this$0:Lcom/google/android/accounts/DatabaseAccountManager;

    iput-object p2, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    iput-object p3, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$features:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/accounts/DatabaseAccountManager$1;->call()[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/google/android/accounts/Account;
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    if-eqz v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAccountManager$1;->val$features:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 94
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/accounts/Account;

    goto :goto_e
.end method
