.class public Lcom/google/android/apps/googlevoice/system/AddAccountManagerDonutAndEarlier;
.super Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;
.source "AddAccountManagerDonutAndEarlier.java"


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;)V
    .registers 2
    .parameter "log"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;-><init>(Lcom/google/android/apps/common/log/GLog;)V

    .line 19
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/app/Activity;Landroid/os/Message;)V
    .registers 5
    .parameter "activity"
    .parameter "onCompleted"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerDonutAndEarlier;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Add account not available"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->UNAVAILABLE:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerDonutAndEarlier;->fail(Landroid/os/Message;Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;Ljava/lang/Exception;)V

    .line 30
    return-void
.end method

.method public isAddAccountAvailable()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
