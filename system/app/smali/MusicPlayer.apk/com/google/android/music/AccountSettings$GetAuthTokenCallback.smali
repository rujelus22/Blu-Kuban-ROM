.class public Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AccountSettings;
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
.field private mAccountPref:Lcom/google/android/music/AccountPreference;

.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    .registers 3
    .parameter
    .parameter "accountPref"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->mAccountPref:Lcom/google/android/music/AccountPreference;

    .line 137
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 10
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
    const v7, 0x7f0d0004

    const v6, 0x7f0d0003

    .line 140
    if-eqz p1, :cond_1c

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, success:Z
    :try_start_9
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 144
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1d

    .line 145
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    const v4, 0x7f0d0003

    const v5, 0x7f0d0004

    #calls: Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V
    invoke-static {v3, v4, v5}, Lcom/google/android/music/AccountSettings;->access$800(Lcom/google/android/music/AccountSettings;II)V

    .line 165
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #success:Z
    :cond_1c
    :goto_1c
    return-void

    .line 148
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #success:Z
    :cond_1d
    const/4 v2, 0x1

    .line 149
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    iget-object v4, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->mAccountPref:Lcom/google/android/music/AccountPreference;

    #calls: Lcom/google/android/music/AccountSettings;->authenticationSuccess(Lcom/google/android/music/AccountPreference;)V
    invoke-static {v3, v4}, Lcom/google/android/music/AccountSettings;->access$900(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    :try_end_25
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_25} :catch_26
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9 .. :try_end_25} :catch_40
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_5f

    goto :goto_1c

    .line 151
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_26
    move-exception v1

    .line 152
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResult failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 154
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_40
    move-exception v1

    .line 155
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResult failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    #calls: Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V
    invoke-static {v3, v6, v7}, Lcom/google/android/music/AccountSettings;->access$800(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_1c

    .line 158
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_5f
    move-exception v1

    .line 159
    .local v1, e:Ljava/io/IOException;
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResult failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    const v4, 0x7f0d0001

    const v5, 0x7f0d0002

    #calls: Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V
    invoke-static {v3, v4, v5}, Lcom/google/android/music/AccountSettings;->access$800(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_1c
.end method
