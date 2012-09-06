.class Lcom/google/android/finsky/activities/AuthenticatedActivity$13;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V
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
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 9
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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 873
    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 874
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 875
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/16 v4, 0x15

    invoke-virtual {v3, v2, v4}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 876
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/4 v4, 0x1

    #setter for: Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z
    invoke-static {v3, v4}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$402(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)Z
    :try_end_1d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_2c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_1d} :catch_3c

    .line 888
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1d
    return-void

    .line 877
    :catch_1e
    move-exception v1

    .line 878
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "Account add canceled. Finishing."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_1d

    .line 880
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_2c
    move-exception v1

    .line 881
    .local v1, e:Ljava/io/IOException;
    const-string v3, "IOException while adding account: %s. Finishing."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_1d

    .line 883
    .end local v1           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v1

    .line 884
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "AuthenticatorException while adding account: %s. Finishing."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_1d
.end method
