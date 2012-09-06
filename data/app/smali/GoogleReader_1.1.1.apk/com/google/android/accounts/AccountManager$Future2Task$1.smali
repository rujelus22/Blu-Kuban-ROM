.class Lcom/google/android/accounts/AccountManager$Future2Task$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/AccountManager$Future2Task;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/accounts/AccountManager$Future2Task;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/AccountManager$Future2Task;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task$1;,"Lcom/google/android/accounts/AccountManager$Future2Task.1;"
    iput-object p1, p0, Lcom/google/android/accounts/AccountManager$Future2Task$1;->this$1:Lcom/google/android/accounts/AccountManager$Future2Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 155
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task$1;,"Lcom/google/android/accounts/AccountManager$Future2Task.1;"
    iget-object v0, p0, Lcom/google/android/accounts/AccountManager$Future2Task$1;->this$1:Lcom/google/android/accounts/AccountManager$Future2Task;

    iget-object v0, v0, Lcom/google/android/accounts/AccountManager$Future2Task;->mCallback:Lcom/google/android/accounts/AccountManagerCallback;

    iget-object v1, p0, Lcom/google/android/accounts/AccountManager$Future2Task$1;->this$1:Lcom/google/android/accounts/AccountManager$Future2Task;

    invoke-interface {v0, v1}, Lcom/google/android/accounts/AccountManagerCallback;->run(Lcom/google/android/accounts/AccountManagerFuture;)V

    .line 156
    return-void
.end method
