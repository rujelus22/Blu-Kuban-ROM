.class Lcom/google/android/accounts/StandardAccountManager$5;
.super Ljava/lang/Object;
.source "StandardAccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/StandardAccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
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
.field final synthetic this$0:Lcom/google/android/accounts/StandardAccountManager;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/StandardAccountManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/accounts/StandardAccountManager$5;->this$0:Lcom/google/android/accounts/StandardAccountManager;

    iput-object p2, p0, Lcom/google/android/accounts/StandardAccountManager$5;->val$type:Ljava/lang/String;

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
    .line 201
    invoke-virtual {p0}, Lcom/google/android/accounts/StandardAccountManager$5;->call()[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/google/android/accounts/Account;
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$5;->this$0:Lcom/google/android/accounts/StandardAccountManager;

    iget-object v1, p0, Lcom/google/android/accounts/StandardAccountManager$5;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/accounts/StandardAccountManager;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method
