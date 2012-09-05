.class Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2$1;
.super Ljava/lang/Object;
.source "DefaultISP.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;->showAccount(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;

.field final synthetic val$activity:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2$1;->this$1:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;

    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2$1;->val$activity:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, ret:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v0, "DefaultISP"

    const-string v1, "showAccount()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDone - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isCancel - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2$1;->val$activity:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    const/4 v2, 0x3

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x0

    :goto_37
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->onAccountPageResult(IILandroid/content/Intent;)V

    .line 323
    return-void

    .line 322
    :cond_3c
    const/4 v0, -0x1

    goto :goto_37
.end method
