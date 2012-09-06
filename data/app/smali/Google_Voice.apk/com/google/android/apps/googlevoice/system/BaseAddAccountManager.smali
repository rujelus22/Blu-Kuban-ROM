.class public abstract Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;
.super Ljava/lang/Object;
.source "BaseAddAccountManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;


# instance fields
.field protected final log:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;)V
    .registers 2
    .parameter "log"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;->log:Lcom/google/android/apps/common/log/GLog;

    .line 23
    return-void
.end method


# virtual methods
.method protected dispatch(Landroid/os/Message;Landroid/os/Bundle;)V
    .registers 3
    .parameter "message"
    .parameter "bundle"

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void
.end method

.method protected fail(Landroid/os/Message;Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;Ljava/lang/Exception;)V
    .registers 7
    .parameter "message"
    .end parameter
    .parameter "error"
    .end parameter
    .parameter "exception"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "successful"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    const-string v1, "error"

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v1, "exception"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;->dispatch(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method protected succeed(Landroid/os/Message;Ljava/lang/String;)V
    .registers 6
    .parameter "message"
    .parameter "account"

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "successful"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;->dispatch(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 51
    return-void
.end method
