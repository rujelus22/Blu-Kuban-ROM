.class Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;
.super Ljava/lang/Object;
.source "TokenAuthAuthenticationHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LsidTokenHandler"
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
.field private final mSid:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "sid"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->mSid:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
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
    .line 139
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, lsid:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    iget-object v3, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->mSid:Ljava/lang/String;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->getUberToken(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$300(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_13} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_30

    .line 153
    .end local v1           #lsid:Ljava/lang/String;
    :goto_13
    return-void

    .line 141
    :catch_14
    move-exception v0

    .line 142
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "TokenAuthHelper"

    const-string v3, "cancelled while acquiring token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V
    invoke-static {v2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V

    goto :goto_13

    .line 144
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_22
    move-exception v0

    .line 145
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "TokenAuthHelper"

    const-string v3, "authentication error while acquiring token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V
    invoke-static {v2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V

    goto :goto_13

    .line 147
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_30
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TokenAuthHelper"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 149
    const-string v2, "TokenAuthHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error while acquiring token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_52
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V
    invoke-static {v2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V

    goto :goto_13
.end method
