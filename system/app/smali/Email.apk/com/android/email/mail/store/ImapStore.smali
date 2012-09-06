.class public Lcom/android/email/mail/store/ImapStore;
.super Lcom/android/email/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapStore$ImapException;,
        Lcom/android/email/mail/store/ImapStore$ImapMessage;
    }
.end annotation


# static fields
.field private static final MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

.field static sImapId:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/email/mail/store/ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field mPathPrefix:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPathSeparator:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 90
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 105
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 108
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 109
    .local v3, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v3, :cond_21

    const-string v8, "imap"

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 110
    :cond_21
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Unsupported protocol"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    :cond_29
    const/4 v0, 0x0

    .line 114
    .local v0, connectionSecurity:I
    const/16 v1, 0x8f

    .line 117
    .local v1, defaultPort:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_71

    .line 118
    const/4 v0, 0x1

    .line 119
    const/16 v1, 0x3e1

    .line 123
    :cond_35
    :goto_35
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_79

    move v4, v6

    .line 124
    .local v4, trustCertificates:Z
    :goto_3c
    move v2, v1

    .line 125
    .local v2, port:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_44

    .line 126
    iget v2, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 128
    :cond_44
    new-instance v8, Lcom/android/email/mail/transport/MailTransport;

    const-string v9, "IMAP"

    invoke-direct {v8, v9}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mTransport:Lcom/android/email/mail/Transport;

    .line 129
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mTransport:Lcom/android/email/mail/Transport;

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/email/mail/Transport;->setHost(Ljava/lang/String;)V

    .line 130
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v2}, Lcom/android/email/mail/Transport;->setPort(I)V

    .line 131
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v0, v4}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 133
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, userInfo:[Ljava/lang/String;
    if-eqz v5, :cond_7b

    .line 135
    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 136
    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 141
    :goto_6c
    iget-object v6, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 142
    return-void

    .line 120
    .end local v2           #port:I
    .end local v4           #trustCertificates:Z
    .end local v5           #userInfo:[Ljava/lang/String;
    :cond_71
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_35

    .line 121
    const/4 v0, 0x2

    goto :goto_35

    :cond_79
    move v4, v7

    .line 123
    goto :goto_3c

    .line 138
    .restart local v2       #port:I
    .restart local v4       #trustCertificates:Z
    .restart local v5       #userInfo:[Ljava/lang/String;
    :cond_7b
    iput-object v10, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 139
    iput-object v10, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    goto :goto_6c
.end method

.method private addMailbox(Landroid/content/Context;JLjava/lang/String;CZ)Lcom/android/email/mail/store/ImapFolder;
    .registers 15
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxPath"
    .parameter "delimiter"
    .parameter "selectable"

    .prologue
    .line 355
    invoke-virtual {p0, p4}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    check-cast v7, Lcom/android/email/mail/store/ImapFolder;

    .line 356
    .local v7, folder:Lcom/android/email/mail/store/ImapFolder;
    invoke-static {p1, p2, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 357
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 360
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 362
    :cond_16
    invoke-static {p1, p4}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    move-wide v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/ImapStore;->updateMailbox(Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V

    .line 364
    iget-object v1, v7, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    if-nez v1, :cond_30

    .line 368
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 370
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 372
    :cond_30
    iput-object v0, v7, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 373
    return-object v7
.end method

.method static createHierarchy(Ljava/util/HashMap;)V
    .registers 14
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 324
    .local v10, pathnames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 325
    .local v9, path:Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ImapFolder;

    .line 326
    .local v1, folder:Lcom/android/email/mail/store/ImapFolder;
    iget-object v3, v1, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 327
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v11, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iget v12, v3, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 328
    .local v0, delimiterIdx:I
    const-wide/16 v5, -0x1

    .line 329
    .local v5, parentKey:J
    const/4 v11, -0x1

    if-eq v0, v11, :cond_41

    .line 330
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, parentPath:Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/ImapFolder;

    .line 332
    .local v4, parentFolder:Lcom/android/email/mail/store/ImapFolder;
    if-nez v4, :cond_44

    const/4 v7, 0x0

    .line 333
    .local v7, parentMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_37
    if-eqz v7, :cond_41

    .line 334
    iget-wide v5, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 335
    iget v11, v7, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    or-int/lit8 v11, v11, 0x3

    iput v11, v7, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 339
    .end local v4           #parentFolder:Lcom/android/email/mail/store/ImapFolder;
    .end local v7           #parentMailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v8           #parentPath:Ljava/lang/String;
    :cond_41
    iput-wide v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    goto :goto_8

    .line 332
    .restart local v4       #parentFolder:Lcom/android/email/mail/store/ImapFolder;
    .restart local v8       #parentPath:Ljava/lang/String;
    :cond_44
    iget-object v7, v4, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    goto :goto_37

    .line 341
    .end local v0           #delimiterIdx:I
    .end local v1           #folder:Lcom/android/email/mail/store/ImapFolder;
    .end local v3           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #parentFolder:Lcom/android/email/mail/store/ImapFolder;
    .end local v5           #parentKey:J
    .end local v8           #parentPath:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    :cond_47
    return-void
.end method

.method static decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 563
    sget-object v1, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, folder:Ljava/lang/String;
    if-eqz p1, :cond_22

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_22
    return-object v0
.end method

.method static encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 542
    const-string v2, "INBOX"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 554
    .end local p0
    :goto_8
    return-object p0

    .line 545
    .restart local p0
    :cond_9
    if-eqz p1, :cond_1c

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 550
    :cond_1c
    sget-object v2, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 551
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 552
    .local v0, b:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 554
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method static getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 188
    const-class v7, Lcom/android/email/mail/store/ImapStore;

    monitor-enter v7

    .line 189
    :try_start_3
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 190
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 192
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 193
    if-nez v6, :cond_17

    const-string v6, ""

    .line 195
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/ImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 199
    :cond_2b
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_7c

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_45

    .line 209
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_45
    :try_start_45
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 220
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 221
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v2, " \"AGUID\" \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_77} :catch_7f

    .line 228
    :goto_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    .line 225
    :catch_7f
    move-exception v1

    .line 226
    const-string v1, "Email"

    const-string v2, "couldn\'t obtain SHA-1 hash for device UID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77
.end method

.method static joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .registers 8
    .parameter "messages"

    .prologue
    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 576
    .local v4, notFirst:Z
    move-object v0, p0

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 577
    .local v3, m:Lcom/android/emailcommon/mail/Message;
    if-eqz v4, :cond_14

    .line 578
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    :cond_14
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const/4 v4, 0x1

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 583
    .end local v3           #m:Lcom/android/emailcommon/mail/Message;
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "packageName"
    .parameter "version"
    .parameter "codeName"
    .parameter "model"
    .parameter "id"
    .parameter "vendor"
    .parameter "networkOperator"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 254
    const-string v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 255
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 258
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 259
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 260
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 261
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 264
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const-string v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c7

    .line 274
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    :goto_6e
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7c

    .line 281
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    :cond_7c
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_94

    .line 288
    const-string v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_94
    const-string v2, "REL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 295
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_af

    .line 296
    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_af
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c2

    .line 304
    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_c2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 277
    :cond_c7
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6e
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;
    .registers 3
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method

.method private static saveMailboxList(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, folderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ImapFolder;

    .line 381
    .local v1, imapFolder:Lcom/android/email/mail/store/ImapFolder;
    invoke-virtual {v1, p0}, Lcom/android/email/mail/store/ImapFolder;->save(Landroid/content/Context;)V

    goto :goto_8

    .line 383
    .end local v1           #imapFolder:Lcom/android/email/mail/store/ImapFolder;
    :cond_18
    return-void
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v3, -0x1

    .line 446
    .local v3, result:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/android/email/mail/store/ImapConnection;

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/email/mail/store/ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .local v1, connection:Lcom/android/email/mail/store/ImapConnection;
    :try_start_f
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 450
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->close()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_1e

    .line 455
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 457
    :goto_18
    const-string v4, "validate_result_code"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    return-object v0

    .line 451
    :catch_1e
    move-exception v2

    .line 452
    .local v2, ioe:Ljava/io/IOException;
    :try_start_1f
    const-string v4, "validate_error_message"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2d

    .line 453
    const/4 v3, 0x1

    .line 455
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_18

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_2d
    move-exception v4

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    throw v4
.end method

.method cloneTransport()Lcom/android/email/mail/Transport;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->clone()Lcom/android/email/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method ensurePrefixIsValid()V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 496
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 500
    :cond_31
    return-void
.end method

.method getConnection()Lcom/android/email/mail/store/ImapConnection;
    .registers 4

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, connection:Lcom/android/email/mail/store/ImapConnection;
    :goto_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/ImapConnection;

    .restart local v0       #connection:Lcom/android/email/mail/store/ImapConnection;
    if-eqz v0, :cond_17

    .line 509
    :try_start_b
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/email/mail/store/ImapConnection;->setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_17
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_17} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_23

    .line 520
    :cond_17
    if-nez v0, :cond_22

    .line 521
    new-instance v0, Lcom/android/email/mail/store/ImapConnection;

    .end local v0           #connection:Lcom/android/email/mail/store/ImapConnection;
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/mail/store/ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .restart local v0       #connection:Lcom/android/email/mail/store/ImapConnection;
    :cond_22
    return-object v0

    .line 514
    :catch_23
    move-exception v1

    .line 517
    :goto_24
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 518
    const/4 v0, 0x0

    goto :goto_1

    .line 512
    :catch_29
    move-exception v1

    goto :goto_24
.end method

.method getConnectionPoolForTest()Ljava/util/Collection;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/mail/store/ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .registers 3
    .parameter "name"

    .prologue
    .line 315
    new-instance v0, Lcom/android/email/mail/store/ImapFolder;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    return-object v0
.end method

.method isUserPrefixSet()Z
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method poolConnection(Lcom/android/email/mail/store/ImapConnection;)V
    .registers 3
    .parameter "connection"

    .prologue
    .line 531
    if-eqz p1, :cond_a

    .line 532
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 533
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_a
    return-void
.end method

.method setPathPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "pathPrefix"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 477
    return-void
.end method

.method setPathSeparator(Ljava/lang/String;)V
    .registers 2
    .parameter "pathSeparator"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    .line 472
    return-void
.end method

.method setTransportForTest(Lcom/android/email/mail/Transport;)V
    .registers 2
    .parameter "testTransport"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mTransport:Lcom/android/email/mail/Transport;

    .line 158
    return-void
.end method

.method public updateFolders()[Lcom/android/emailcommon/mail/Folder;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v17

    .line 389
    .local v17, connection:Lcom/android/email/mail/store/ImapConnection;
    :try_start_4
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v24, mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    const-string v2, "NOOP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 393
    const-string v22, "LIST \"\" \"*\""

    .line 394
    .local v22, imapCommand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIST \"\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 397
    :cond_35
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 398
    .local v27, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 400
    .local v26, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v2, 0x0

    const-string v3, "LIST"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 402
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v19

    .line 403
    .local v19, encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 405
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, folderName:Ljava/lang/String;
    const-string v2, "INBOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 409
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    const-string v3, "\\NOSELECT"

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d3

    const/4 v8, 0x1

    .line 411
    .local v8, selectable:Z
    :goto_89
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v18

    .line 412
    .local v18, delimiter:Ljava/lang/String;
    const/4 v7, 0x0

    .line 413
    .local v7, delimiterChar:C
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 416
    :cond_a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZ)Lcom/android/email/mail/store/ImapFolder;

    move-result-object v20

    .line 418
    .local v20, folder:Lcom/android/email/mail/store/ImapFolder;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b9
    .catchall {:try_start_4 .. :try_end_b9} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b9} :catch_ba
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_b9} :catch_117

    goto :goto_41

    .line 427
    .end local v6           #folderName:Ljava/lang/String;
    .end local v7           #delimiterChar:C
    .end local v8           #selectable:Z
    .end local v18           #delimiter:Ljava/lang/String;
    .end local v19           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v20           #folder:Lcom/android/email/mail/store/ImapFolder;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #imapCommand:Ljava/lang/String;
    .end local v24           #mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    .end local v26           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v27           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_ba
    move-exception v23

    .line 428
    .local v23, ioe:Ljava/io/IOException;
    :try_start_bb
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 429
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Unable to get folder list."

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_c8
    .catchall {:try_start_bb .. :try_end_c8} :catchall_c8

    .line 437
    .end local v23           #ioe:Ljava/io/IOException;
    :catchall_c8
    move-exception v2

    if-eqz v17, :cond_d2

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_d2
    throw v2

    .line 409
    .restart local v6       #folderName:Ljava/lang/String;
    .restart local v19       #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v22       #imapCommand:Ljava/lang/String;
    .restart local v24       #mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    .restart local v26       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v27       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_d3
    const/4 v8, 0x0

    goto :goto_89

    .line 421
    .end local v6           #folderName:Ljava/lang/String;
    .end local v19           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v26           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v11, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const-string v13, "INBOX"

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZ)Lcom/android/email/mail/store/ImapFolder;

    move-result-object v25

    .line 423
    .local v25, newFolder:Lcom/android/emailcommon/mail/Folder;
    const-string v2, "INBOX"

    check-cast v25, Lcom/android/email/mail/store/ImapFolder;

    .end local v25           #newFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/store/ImapStore;->createHierarchy(Ljava/util/HashMap;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/android/email/mail/store/ImapStore;->saveMailboxList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 426
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/emailcommon/mail/Folder;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/emailcommon/mail/Folder;
    :try_end_10d
    .catchall {:try_start_d5 .. :try_end_10d} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_10d} :catch_ba
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_d5 .. :try_end_10d} :catch_117

    .line 437
    if-eqz v17, :cond_116

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_116
    return-object v2

    .line 430
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #imapCommand:Ljava/lang/String;
    .end local v24           #mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    .end local v27           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_117
    move-exception v16

    .line 433
    .local v16, afe:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :try_start_118
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 434
    const/16 v17, 0x0

    .line 435
    throw v16
    :try_end_11e
    .catchall {:try_start_118 .. :try_end_11e} :catchall_c8
.end method
