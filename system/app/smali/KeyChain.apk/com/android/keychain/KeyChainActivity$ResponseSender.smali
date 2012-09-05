.class Lcom/android/keychain/KeyChainActivity$ResponseSender;
.super Landroid/os/AsyncTask;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseSender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mKeyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

.field final synthetic this$0:Lcom/android/keychain/KeyChainActivity;


# direct methods
.method private constructor <init>(Lcom/android/keychain/KeyChainActivity;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "keyChainAliasResponse"
    .parameter "alias"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->mKeyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    .line 392
    iput-object p3, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->mAlias:Ljava/lang/String;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keychain/KeyChainActivity;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;Lcom/android/keychain/KeyChainActivity$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keychain/KeyChainActivity$ResponseSender;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 387
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$ResponseSender;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "unused"

    .prologue
    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->mAlias:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 397
    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3b

    move-result-object v0

    .line 399
    .local v0, connection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_a
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->this$0:Lcom/android/keychain/KeyChainActivity;

    #getter for: Lcom/android/keychain/KeyChainActivity;->mSenderUid:I
    invoke-static {v3}, Lcom/android/keychain/KeyChainActivity;->access$1000(Lcom/android/keychain/KeyChainActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->mAlias:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_26

    .line 401
    :try_start_1a
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 404
    .end local v0           #connection:Landroid/security/KeyChain$KeyChainConnection;
    :cond_1d
    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->mKeyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    iget-object v3, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->mAlias:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/security/IKeyChainAliasCallback;->alias(Ljava/lang/String;)V

    .line 414
    :goto_24
    const/4 v2, 0x0

    return-object v2

    .line 401
    .restart local v0       #connection:Landroid/security/KeyChain$KeyChainConnection;
    :catchall_26
    move-exception v2

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_2b} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_3b

    .line 405
    .end local v0           #connection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_2b
    move-exception v1

    .line 406
    .local v1, ignored:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 407
    const-string v2, "KeyChain"

    const-string v3, "interrupted while granting access"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 408
    .end local v1           #ignored:Ljava/lang/InterruptedException;
    :catch_3b
    move-exception v1

    .line 412
    .local v1, ignored:Ljava/lang/Exception;
    const-string v2, "KeyChain"

    const-string v3, "error while granting access"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 387
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$ResponseSender;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "unused"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$ResponseSender;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-virtual {v0}, Lcom/android/keychain/KeyChainActivity;->finish()V

    .line 418
    return-void
.end method
