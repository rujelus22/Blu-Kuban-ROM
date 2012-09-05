.class public Lcom/android/email/mail/store/ExchangeStore;
.super Lcom/android/email/mail/Store;
.source "ExchangeStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    }
.end annotation


# instance fields
.field private final mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

.field private final mUri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)V
    .registers 7
    .parameter "_uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 81
    :try_start_3
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_a} :catch_13

    .line 86
    iget-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;

    invoke-static {v1, p2}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->getInstance(Ljava/net/URI;Landroid/content/Context;)Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .line 87
    return-void

    .line 82
    :catch_13
    move-exception v0

    .line 83
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Invalid uri for ExchangeStore"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .registers 4
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/android/email/mail/store/ExchangeStore;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/mail/store/ExchangeStore;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)V

    return-object v0
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 9
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 298
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v1

    .line 301
    :goto_a
    return-object v1

    .line 300
    :catch_b
    move-exception v0

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_a
.end method

.method public checkSettings()Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    iget-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->checkSettings(Ljava/net/URI;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .registers 3
    .parameter "name"

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getExchangeSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public removeFolder(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 311
    return-void
.end method

.method public renameFolder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "orgName"
    .parameter "newName"

    .prologue
    .line 307
    return-void
.end method

.method public requireCopyMessageToSentFolder()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public requireStructurePrefetch()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method
