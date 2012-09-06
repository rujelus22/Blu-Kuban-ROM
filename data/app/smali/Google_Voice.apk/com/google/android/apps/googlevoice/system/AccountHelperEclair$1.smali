.class Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;
.super Ljava/lang/Object;
.source "AccountHelperEclair.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;

.field final synthetic val$failure:Landroid/os/Message;

.field final synthetic val$success:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->val$success:Landroid/os/Message;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->val$failure:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;

    #calls: Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->getDevicePrimaryAccountFromFuture(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->access$000(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;

    #getter for: Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->access$100(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;)Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->setDevicePrimaryAccount(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->val$success:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->val$success:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 63
    :goto_1a
    return-void

    .line 60
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;

    #getter for: Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->access$100(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;)Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->setDevicePrimaryAccount(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;->val$failure:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a
.end method
