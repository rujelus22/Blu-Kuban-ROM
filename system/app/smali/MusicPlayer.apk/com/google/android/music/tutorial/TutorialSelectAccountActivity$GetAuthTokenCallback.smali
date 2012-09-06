.class public Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAuthTokenCallback"
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
.field private mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)V
    .registers 3
    .parameter
    .parameter "account"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->mAccount:Landroid/accounts/Account;

    .line 241
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
    const v6, 0x7f0d0004

    const v5, 0x7f0d0003

    .line 244
    if-eqz p1, :cond_17

    .line 246
    :try_start_8
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 247
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_18

    .line 248
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->mAccount:Landroid/accounts/Account;

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationSuccess(Landroid/accounts/Account;)V
    invoke-static {v2, v3}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$800(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)V

    .line 270
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_17
    :goto_17
    return-void

    .line 250
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_18
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    const v3, 0x7f0d0003

    const v4, 0x7f0d0004

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationFailed(II)V
    invoke-static {v2, v3, v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$900(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;II)V
    :try_end_23
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8 .. :try_end_23} :catch_24
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8 .. :try_end_23} :catch_3e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_5d

    goto :goto_17

    .line 256
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_24
    move-exception v1

    .line 257
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 259
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_3e
    move-exception v1

    .line 260
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationFailed(II)V
    invoke-static {v2, v5, v6}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$900(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;II)V

    goto :goto_17

    .line 263
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_5d
    move-exception v1

    .line 264
    .local v1, e:Ljava/io/IOException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    const v3, 0x7f0d0001

    const v4, 0x7f0d0002

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationFailed(II)V
    invoke-static {v2, v3, v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$900(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;II)V

    goto :goto_17
.end method
