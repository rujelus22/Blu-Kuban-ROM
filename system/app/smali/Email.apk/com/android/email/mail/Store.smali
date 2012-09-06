.class public abstract Lcom/android/email/mail/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field static final sStoreClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/email/mail/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sStores:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Lcom/android/email/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field protected mContext:Landroid/content/Context;

.field protected mPassword:Ljava/lang/String;

.field protected mTransport:Lcom/android/email/mail/Transport;

.field protected mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    const-string v1, "eas"

    const-class v2, Lcom/android/email/mail/store/ExchangeStore;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    const-string v1, "imap"

    const-class v2, Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    const-string v1, "pop3"

    const-class v2, Lcom/android/email/mail/store/Pop3Store;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    const-class v3, Lcom/android/email/mail/Store;

    monitor-enter v3

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_57

    move-result-object v4

    .line 92
    if-nez v4, :cond_c

    .line 112
    :cond_a
    :goto_a
    monitor-exit v3

    return-object v1

    .line 93
    :cond_c
    :try_start_c
    sget-object v1, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/Store;

    .line 94
    if-nez v1, :cond_a

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    sget-object v1, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    iget-object v5, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_57

    .line 99
    :try_start_24
    const-string v5, "newInstance"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/android/emailcommon/provider/Account;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 100
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/email/mail/Store;

    move-object v1, v0
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_49} :catch_5a

    .line 108
    :try_start_49
    iget-wide v5, v4, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_a

    .line 109
    sget-object v2, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_57

    goto :goto_a

    .line 90
    :catchall_57
    move-exception v1

    monitor-exit v3

    throw v1

    .line 101
    :catch_5a
    move-exception v2

    .line 102
    :try_start_5b
    const-string v4, "Email"

    const-string v5, "exception %s invoking method %s#newInstance(Account, Context) for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t instantiate Store for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_97
    .catchall {:try_start_5b .. :try_end_97} :catchall_57
.end method

.method protected static updateMailbox(Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V
    .registers 10
    .parameter "mailbox"
    .parameter "accountId"
    .parameter "mailboxPath"
    .parameter "delimiter"
    .parameter "selectable"
    .parameter "type"

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 186
    iput p4, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 187
    move-object v0, p3

    .line 188
    .local v0, displayPath:Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 189
    .local v1, pathIndex:I
    if-lez v1, :cond_11

    .line 190
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_11
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 193
    if-eqz p5, :cond_19

    .line 194
    const/16 v2, 0x18

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 196
    :cond_19
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 199
    iput-object p3, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 205
    iput p6, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 207
    const/16 v2, 0x19

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    .line 208
    return-void
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "context"
    .parameter "emailAddress"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract checkSettings()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 150
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
    .line 135
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    return-object v0
.end method

.method public requireCopyMessageToSentFolder()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public updateFolders()[Lcom/android/emailcommon/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method
