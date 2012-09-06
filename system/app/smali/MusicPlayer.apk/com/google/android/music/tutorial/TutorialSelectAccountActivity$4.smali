.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->addAccountClick()V
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
.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
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
    .line 192
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 218
    :goto_6
    return-void

    .line 198
    :cond_7
    :try_start_7
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 199
    .local v2, result:Landroid/os/Bundle;
    const-string v4, "authAccount"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "accountType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, accountType:Ljava/lang/String;
    const-string v4, "setupSkipped"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 203
    .local v3, setupSkipped:Z
    if-nez v3, :cond_32

    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    .line 205
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$502(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$602(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 212
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #result:Landroid/os/Bundle;
    .end local v3           #setupSkipped:Z
    :catch_30
    move-exception v4

    goto :goto_6

    .line 208
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #result:Landroid/os/Bundle;
    .restart local v3       #setupSkipped:Z
    :cond_32
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$502(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$4;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$602(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_41
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_3e} :catch_30
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3e} :catch_3f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_7 .. :try_end_3e} :catch_43

    goto :goto_6

    .line 214
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #result:Landroid/os/Bundle;
    .end local v3           #setupSkipped:Z
    :catch_3f
    move-exception v4

    goto :goto_6

    .line 216
    :catchall_41
    move-exception v4

    throw v4

    .line 215
    :catch_43
    move-exception v4

    goto :goto_6
.end method
