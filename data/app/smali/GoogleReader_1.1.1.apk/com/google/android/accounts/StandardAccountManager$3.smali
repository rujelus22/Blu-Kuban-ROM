.class final Lcom/google/android/accounts/StandardAccountManager$3;
.super Ljava/lang/Object;
.source "StandardAccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/StandardAccountManager;->convertCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/android/accounts/AccountManagerCallback;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/AccountManagerCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/accounts/StandardAccountManager$3;->val$callback:Lcom/google/android/accounts/AccountManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<TV;>;"
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$3;->val$callback:Lcom/google/android/accounts/AccountManagerCallback;

    #calls: Lcom/google/android/accounts/StandardAccountManager;->convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
    invoke-static {p1}, Lcom/google/android/accounts/StandardAccountManager;->access$100(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/accounts/AccountManagerCallback;->run(Lcom/google/android/accounts/AccountManagerFuture;)V

    .line 163
    return-void
.end method
