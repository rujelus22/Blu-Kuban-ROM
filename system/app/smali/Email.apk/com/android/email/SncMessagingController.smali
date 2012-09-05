.class public Lcom/android/email/SncMessagingController;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SncMessagingController$Command;,
        Lcom/android/email/SncMessagingController$CommandInfo;,
        Lcom/android/email/SncMessagingController$ImapIdleFolder;,
        Lcom/android/email/SncMessagingController$LocalMessageInfo;,
        Lcom/android/email/SncMessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/SncMessagingController;


# instance fields
.field private mBusy:Z

.field private mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/SncMessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/SncMessagingController$ImapIdleFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/email/Controller$ServiceCallback;

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private mRemoteSync:Z

.field private mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThread:Ljava/lang/Thread;

.field opsAttachememnt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field opsBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field opsEnvelope:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/SncMessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    .line 121
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/SncMessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    const-string v1, "contentId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 145
    sget-object v0, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "_context"

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    .line 159
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    iput-object p1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {}, Lcom/android/email/Controller;->getServiceCallback()Lcom/android/email/Controller$ServiceCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "tSnc"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/SncMessagingController;->mThread:Ljava/lang/Thread;

    .line 196
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/SncMessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/SncMessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/SncMessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/email/SncMessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController;->updateAccountCapability(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/SncMessagingController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p6}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/SncMessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    return-void
.end method

.method private copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2038
    iget-boolean v0, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    if-nez v0, :cond_20

    .line 2039
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteSync is not enabled: mRemoteSync - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    :goto_1f
    return-void

    .line 2047
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v7, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_8d

    move-result-object v2

    .line 2057
    :try_start_51
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 2058
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_1e4

    move-object v1, v0

    .line 2061
    :goto_60
    if-eqz v2, :cond_65

    .line 2062
    :try_start_62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2065
    :cond_65
    if-nez v1, :cond_9e

    .line 2066
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve message from db, UUID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_83} :catch_84
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_83} :catch_95

    goto :goto_1f

    .line 2142
    :catch_84
    move-exception v0

    .line 2144
    const-string v1, "SncMessagingController"

    const-string v2, "copyOneMessageToProvider | Error while copying downloaded message."

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1f

    .line 2061
    :catchall_8d
    move-exception v0

    move-object v1, v6

    :goto_8f
    if-eqz v1, :cond_94

    .line 2062
    :try_start_91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_94
    throw v0
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_95} :catch_84
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_95} :catch_95

    .line 2146
    :catch_95
    move-exception v0

    .line 2147
    const-string v1, "SncMessagingController"

    const-string v2, "copyOneMessageToProvider | Error while copying  downloaded message."

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1f

    .line 2070
    :cond_9e
    :try_start_9e
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 2072
    if-nez v0, :cond_1e8

    .line 2073
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_ad
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_ad} :catch_84
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ad} :catch_95

    move-object v8, v0

    .line 2077
    :goto_ae
    :try_start_ae
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v7, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 2081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    invoke-static {p1, v0, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2085
    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v1, v0}, Lcom/android/email/LegacyConversions;->updateBodyFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 2087
    const-string v0, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message isSaved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " body isSaved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message loaded flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-nez v0, :cond_109

    .line 2092
    invoke-virtual {p0, p3, p1, v1, v8}, Lcom/android/email/SncMessagingController;->updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)Z

    .line 2097
    :cond_109
    if-nez p6, :cond_184

    .line 2098
    invoke-direct {p0, v1}, Lcom/android/email/SncMessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    .line 2099
    invoke-direct {p0, v8}, Lcom/android/email/SncMessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    .line 2116
    :goto_111
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p2}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2119
    iput p4, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 2121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2122
    const-string v2, "flagAttachment"

    iget-boolean v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2124
    const-string v2, "flagLoaded"

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2126
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2128
    if-nez p6, :cond_1d1

    .line 2129
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_148
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_ae .. :try_end_148} :catch_14a
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_148} :catch_84
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_148} :catch_95

    goto/16 :goto_1f

    .line 2135
    :catch_14a
    move-exception v0

    .line 2136
    :try_start_14b
    const-string v1, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyOneMessageToProvider [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][mbId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Got exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const-string v1, "SncMessagingController"

    const-string v2, "copyOneMessageToProvider | Error while copying downloaded message"

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/lang/RuntimeException; {:try_start_14b .. :try_end_182} :catch_84
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_182} :catch_95

    goto/16 :goto_1f

    .line 2101
    :cond_184
    :try_start_184
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 2102
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    :goto_1a3
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 2108
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_111

    .line 2105
    :cond_1c4
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto :goto_1a3

    .line 2111
    :cond_1ca
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto/16 :goto_111

    .line 2131
    :cond_1d1
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_184 .. :try_end_1e2} :catch_14a
    .catch Ljava/lang/RuntimeException; {:try_start_184 .. :try_end_1e2} :catch_84
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_1e2} :catch_95

    goto/16 :goto_1f

    .line 2061
    :catchall_1e4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8f

    :cond_1e8
    move-object v8, v0

    goto/16 :goto_ae

    :cond_1eb
    move-object v1, v6

    goto/16 :goto_60
.end method

.method private forwardMessage(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;JLjava/lang/String;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3821
    const-string v2, "SncMessagingController"

    const-string v3, "Into forwardMessage"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3824
    const-string v2, "UnifiedInbox"

    invoke-virtual {p1, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 3825
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 3826
    const-string v1, "SncMessagingController"

    const-string v2, "Remote Folder does not exists."

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    :goto_1c
    return v0

    .line 3830
    :cond_1d
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3831
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_2e

    .line 3832
    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1c

    .line 3838
    :cond_2e
    const-string v3, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    if-eqz p5, :cond_52

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_52

    .line 3840
    invoke-virtual {v2, p5}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    .line 3844
    :cond_52
    if-nez v1, :cond_5c

    .line 3845
    const-string v1, "SncMessagingController"

    const-string v2, "Remote Message is NULL"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 3848
    :cond_5c
    invoke-virtual {v2, p5}, Lcom/android/emailcommon/mail/Folder;->generateURLAuth(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3850
    const-string v3, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL LIST COUNT :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v3

    .line 3852
    invoke-virtual {v3, p3, p4, v1}, Lcom/android/email/mail/Sender;->forwardMessage(JLjava/util/List;)V

    .line 3855
    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3856
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SncMessagingController;
    .registers 3
    .parameter "_context"

    .prologue
    .line 207
    const-class v1, Lcom/android/email/SncMessagingController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;

    if-nez v0, :cond_e

    .line 208
    new-instance v0, Lcom/android/email/SncMessagingController;

    invoke-direct {v0, p0}, Lcom/android/email/SncMessagingController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;

    .line 210
    :cond_e
    sget-object v0, Lcom/android/email/SncMessagingController;->sInstance:Lcom/android/email/SncMessagingController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 207
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 4183
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    .line 4184
    const-string v0, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPushScheduledNow | syncSchedule - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4185
    invoke-static {v3}, Lcom/android/emailcommon/utility/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4186
    const/4 v2, 0x1

    .line 4189
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 4191
    if-eqz v0, :cond_6c

    .line 4192
    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    .line 4193
    if-nez v0, :cond_6c

    .line 4194
    const-string v0, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Fail. Roaming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    :goto_6b
    return v1

    .line 4200
    :cond_6c
    if-eqz v4, :cond_74

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    if-ne v0, v6, :cond_7c

    :cond_74
    if-nez v4, :cond_ad

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    if-eq v0, v6, :cond_ad

    :cond_7c
    move v0, v1

    .line 4204
    :goto_7d
    const-string v1, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPush - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 4206
    goto :goto_6b

    :cond_ad
    move v0, v2

    goto :goto_7d
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 7
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2331
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2332
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2337
    .local v0, accountIdArgs:[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/SncMessagingController;->processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 2340
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/SncMessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 2343
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/SncMessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 2344
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3031
    .line 3037
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v6

    .line 3039
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_66

    .line 3040
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 3045
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5b

    .line 3046
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3047
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3049
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3050
    const-string v3, "syncServerId"

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3162
    :cond_5b
    :goto_5b
    return v1

    .line 3055
    :cond_5c
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v0

    if-nez v0, :cond_66

    move v1, v2

    .line 3058
    goto :goto_5b

    .line 3061
    :cond_66
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v6, v0, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3062
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v3, :cond_78

    .line 3063
    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v1, v2

    .line 3064
    goto :goto_5b

    .line 3069
    :cond_78
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_167

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_167

    .line 3070
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 3074
    :goto_8a
    if-nez v0, :cond_f5

    .line 3076
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 3079
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3080
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3081
    new-array v3, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v0, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 3086
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v3, v2

    move v0, v1

    move v4, v1

    .line 3131
    :goto_ac
    if-eqz v4, :cond_d9

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_d9

    .line 3133
    :try_start_b2
    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 3134
    if-eqz v4, :cond_d9

    .line 3135
    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3136
    sget-object v8, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v8}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3137
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/emailcommon/mail/Message;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3140
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_d8
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b2 .. :try_end_d8} :catch_164

    move v0, v1

    .line 3149
    :cond_d9
    :goto_d9
    if-nez v3, :cond_dd

    if-eqz v0, :cond_f0

    .line 3150
    :cond_dd
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3151
    iget-object v7, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3152
    if-eqz v3, :cond_147

    .line 3153
    invoke-virtual {v7, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3161
    :cond_f0
    :goto_f0
    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_5b

    .line 3092
    :cond_f5
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3093
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3094
    new-array v4, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v0, v4, v2

    invoke-virtual {v6, v4, v3, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3097
    new-instance v4, Ljava/util/Date;

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 3098
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v7

    .line 3099
    if-eqz v7, :cond_11d

    invoke-virtual {v7, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_11d

    move v3, v1

    move v0, v2

    move v4, v2

    .line 3103
    goto :goto_ac

    .line 3109
    :cond_11d
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 3112
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 3113
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3114
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3115
    new-array v3, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v4, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 3120
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3125
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v3, v2

    move v0, v1

    move v4, v1

    goto/16 :goto_ac

    .line 3154
    :cond_147
    if-eqz v0, :cond_f0

    .line 3155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3156
    const-string v3, "syncServerId"

    iget-object v8, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    const-string v3, "syncServerTimeStamp"

    iget-wide v8, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3158
    invoke-virtual {v7, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_f0

    .line 3143
    :catch_164
    move-exception v4

    goto/16 :goto_d9

    :cond_167
    move-object v0, v5

    goto/16 :goto_8a
.end method

.method private processPendingDataChange(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2682
    const/4 v1, 0x0

    .line 2686
    if-eqz p7, :cond_23

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_23

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v3, "Local-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    if-nez p2, :cond_24

    .line 2817
    :cond_23
    :goto_23
    return-void

    .line 2691
    :cond_24
    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2692
    const-string v1, "SncMessagingController"

    const-string v2, "POP Account does not support settings read/favourite/changeMailbox"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 2701
    :cond_36
    if-eqz p5, :cond_168

    .line 2703
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2706
    :goto_42
    if-eqz v1, :cond_23

    .line 2711
    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_23

    .line 2716
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 2718
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2721
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 2722
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_71

    .line 2723
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_23

    .line 2728
    :cond_71
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 2729
    if-nez v2, :cond_80

    .line 2730
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_23

    .line 2733
    :cond_80
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_de

    .line 2734
    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update flags for msg id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " read="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flagged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeRead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeFlagged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new mailbox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_de
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 2742
    if-eqz p3, :cond_ef

    .line 2743
    sget-object v4, Lcom/android/email/SncMessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2745
    :cond_ef
    if-eqz p4, :cond_fa

    .line 2746
    sget-object v4, Lcom/android/email/SncMessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2749
    :cond_fa
    if-eqz p5, :cond_10c

    .line 2758
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 2816
    :cond_10c
    :goto_10c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_23

    .line 2779
    :cond_112
    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v4

    .line 2780
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2785
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2786
    const-string v6, "syncServerId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2791
    new-instance v5, Lcom/android/email/SncMessagingController$12;

    move-object/from16 v0, p7

    invoke-direct {v5, p0, v0}, Lcom/android/email/SncMessagingController$12;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 2812
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2813
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    goto :goto_10c

    :cond_168
    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    goto/16 :goto_42
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 10
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2984
    iget v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    .line 3015
    :cond_6
    :goto_6
    return-void

    .line 2990
    :cond_7
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 2994
    .local v1, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2998
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 2999
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2b

    .line 3000
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_6

    .line 3005
    :cond_2b
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 3006
    .local v0, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v0, :cond_37

    .line 3007
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_6

    .line 3012
    :cond_37
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 3013
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 3014
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_6
.end method

.method private processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2356
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2361
    const-wide/16 v2, -0x1

    .line 2364
    const/4 v1, 0x0

    .line 2366
    const/4 v5, 0x0

    move-object v6, v1

    .line 2368
    :goto_15
    :try_start_15
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 2369
    const/4 v4, 0x0

    .line 2371
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2376
    if-eqz v1, :cond_48

    .line 2377
    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_a3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_15 .. :try_end_28} :catch_72

    .line 2379
    if-eqz v5, :cond_32

    :try_start_2a
    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v10, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_3e

    .line 2380
    :cond_32
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 2381
    if-nez v5, :cond_3e

    move-wide v2, v3

    .line 2382
    goto :goto_15

    .line 2386
    :cond_3e
    iget v2, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_a3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2a .. :try_end_40} :catch_a8

    const/4 v8, 0x6

    if-ne v2, v8, :cond_9d

    const/4 v2, 0x1

    :goto_44
    move v12, v2

    move-wide v13, v3

    move-wide v2, v13

    move v4, v12

    .line 2390
    :cond_48
    if-nez v6, :cond_5b

    if-eqz v4, :cond_5b

    .line 2391
    :try_start_4c
    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v6

    .line 2396
    :cond_5b
    if-eqz v4, :cond_62

    .line 2398
    move-object/from16 v0, p1

    invoke-direct {p0, v6, v0, v5, v1}, Lcom/android/email/SncMessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 2402
    :cond_62
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2404
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_4c .. :try_end_71} :catchall_a3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4c .. :try_end_71} :catch_72

    goto :goto_15

    .line 2407
    :catch_72
    move-exception v1

    .line 2411
    :goto_73
    :try_start_73
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_99

    .line 2412
    const-string v4, "Z7App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending delete for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_73 .. :try_end_99} :catchall_a3

    .line 2416
    :cond_99
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2418
    :goto_9c
    return-void

    .line 2386
    :cond_9d
    const/4 v2, 0x0

    goto :goto_44

    .line 2416
    :cond_9f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_9c

    :catchall_a3
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2407
    :catch_a8
    move-exception v1

    move-wide v2, v3

    goto :goto_73
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2835
    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2969
    :cond_1b
    :goto_1b
    return-void

    .line 2842
    :cond_1c
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2843
    if-eqz v0, :cond_1b

    .line 2848
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1b

    .line 2862
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    if-nez v1, :cond_4d

    .line 2863
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 2864
    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 2865
    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2866
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 2867
    iput-boolean v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 2868
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 2869
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_1b

    .line 2878
    :cond_4d
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 2880
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2884
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v1, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 2885
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_6e

    .line 2886
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1b

    .line 2891
    :cond_6e
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    .line 2892
    if-nez v1, :cond_7a

    .line 2893
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1b

    .line 2897
    :cond_7a
    invoke-virtual {p1}, Lcom/android/email/mail/BaseSncStore;->requireCopyMessageToTrashFolder()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 2899
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 2903
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_95

    .line 2907
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 2913
    :cond_95
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 2918
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 2919
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_b0

    .line 2920
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2921
    invoke-virtual {v2, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1b

    .line 2926
    :cond_b0
    const/4 v3, 0x1

    :try_start_b1
    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v4, Lcom/android/email/SncMessagingController$13;

    invoke-direct {v4, p0, p5}, Lcom/android/email/SncMessagingController$13;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_be
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b1 .. :try_end_be} :catch_d3

    .line 2955
    :goto_be
    invoke-virtual {v2, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2963
    :cond_c1
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1, v2, v5}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2966
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1, v2, v6}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 2967
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 2968
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1b

    .line 2951
    :catch_d3
    move-exception v3

    goto :goto_be
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2539
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2544
    const-wide/16 v15, -0x1

    .line 2547
    const/4 v2, 0x0

    .line 2549
    const/4 v7, 0x0

    move-object v8, v2

    move-wide v2, v15

    .line 2551
    :goto_16
    :try_start_16
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 2552
    const/4 v4, 0x0

    .line 2553
    const/4 v1, 0x0

    .line 2554
    const/4 v10, 0x0

    .line 2555
    const/4 v11, 0x0

    .line 2556
    const/4 v12, 0x0

    .line 2558
    const-class v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2560
    iget-wide v15, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_106
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_16 .. :try_end_2d} :catch_10b

    .line 2561
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v13, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 2563
    if-eqz v6, :cond_112

    .line 2564
    if-eqz v7, :cond_43

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_51

    .line 2565
    :cond_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 2566
    if-nez v7, :cond_51

    move-wide v2, v15

    .line 2567
    goto :goto_16

    .line 2571
    :cond_51
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_10f

    .line 2572
    iget v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_bd

    .line 2573
    const/4 v4, 0x1

    move v3, v4

    .line 2578
    :goto_60
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_c0

    if-eqz v7, :cond_c0

    iget v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_c0

    const/4 v2, 0x1

    .line 2583
    :goto_6f
    iget-boolean v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v1, v4, :cond_c2

    const/4 v10, 0x1

    .line 2584
    :goto_76
    iget-boolean v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v1, v4, :cond_c4

    const/4 v1, 0x1

    :goto_7d
    move v11, v1

    move-object v4, v7

    move v1, v2

    .line 2588
    :goto_80
    if-nez v8, :cond_10d

    if-nez v3, :cond_8c

    if-nez v10, :cond_8c

    if-nez v11, :cond_8c

    if-nez v12, :cond_8c

    if-eqz v1, :cond_10d

    .line 2590
    :cond_8c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v8

    move-object v2, v8

    .line 2595
    :goto_a0
    if-eqz v3, :cond_c6

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 2597
    invoke-direct/range {v1 .. v6}, Lcom/android/email/SncMessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 2604
    :cond_a9
    :goto_a9
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2606
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v7, v4

    move-object v8, v2

    move-wide v2, v15

    .line 2607
    goto/16 :goto_16

    .line 2575
    :cond_bd
    const/4 v12, 0x1

    move v3, v4

    goto :goto_60

    .line 2578
    :cond_c0
    const/4 v2, 0x0

    goto :goto_6f

    .line 2583
    :cond_c2
    const/4 v10, 0x0

    goto :goto_76

    .line 2584
    :cond_c4
    const/4 v1, 0x0

    goto :goto_7d

    .line 2598
    :cond_c6
    if-nez v10, :cond_cc

    if-nez v11, :cond_cc

    if-eqz v12, :cond_a9

    :cond_cc
    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v4

    move-object v13, v5

    move-object v14, v6

    .line 2599
    invoke-direct/range {v7 .. v14}, Lcom/android/email/SncMessagingController;->processPendingDataChange(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_d5
    .catchall {:try_start_2d .. :try_end_d5} :catchall_106
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2d .. :try_end_d5} :catch_d6

    goto :goto_a9

    .line 2609
    :catch_d6
    move-exception v1

    move-wide v2, v15

    .line 2613
    :goto_d8
    :try_start_d8
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_fe

    .line 2614
    const-string v4, "Z7App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending update for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_d8 .. :try_end_fe} :catchall_106

    .line 2618
    :cond_fe
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2620
    :goto_101
    return-void

    .line 2618
    :cond_102
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_101

    :catchall_106
    move-exception v1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2609
    :catch_10b
    move-exception v1

    goto :goto_d8

    :cond_10d
    move-object v2, v8

    goto :goto_a0

    :cond_10f
    move v3, v4

    goto/16 :goto_60

    :cond_112
    move v3, v4

    move-object v4, v7

    goto/16 :goto_80
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2435
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? and type=5"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2438
    const-wide/16 v7, -0x1

    .line 2442
    const/4 v1, 0x0

    move-object v9, v1

    .line 2443
    :goto_13
    :try_start_13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 2444
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2445
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    .line 2449
    const/4 v10, 0x0

    .line 2452
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_13 .. :try_end_36} :catch_124

    move-result-object v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 2458
    :goto_3c
    :try_start_3c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2460
    if-nez v10, :cond_12a

    .line 2461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    .line 2465
    :goto_57
    if-nez v9, :cond_66

    .line 2466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 2467
    if-nez v5, :cond_67

    move-object v9, v5

    move-object v10, v3

    .line 2468
    goto :goto_3c

    :cond_66
    move-object v5, v9

    .line 2473
    :cond_67
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6b
    .catchall {:try_start_3c .. :try_end_6b} :catchall_be

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 2475
    :try_start_72
    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_126

    move-object v9, v5

    move-object v10, v3

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 2476
    goto :goto_3c

    .line 2478
    :cond_7c
    if-eqz v15, :cond_81

    .line 2479
    :try_start_7e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2485
    :cond_81
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7e .. :try_end_8e} :catch_124

    move-result-object v14

    move-object v5, v9

    move-object v1, v10

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    .line 2489
    :goto_95
    :try_start_95
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 2491
    if-nez v1, :cond_128

    .line 2492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    .line 2496
    :goto_b0
    if-nez v5, :cond_f4

    .line 2497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_b9
    .catchall {:try_start_95 .. :try_end_b9} :catchall_110

    move-result-object v5

    .line 2498
    if-nez v5, :cond_f4

    move-object v1, v3

    .line 2499
    goto :goto_95

    .line 2478
    :catchall_be
    move-exception v1

    move-wide v6, v7

    :goto_c0
    if-eqz v15, :cond_c5

    .line 2479
    :try_start_c2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_c5
    throw v1
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c2 .. :try_end_c6} :catch_c6

    .line 2514
    :catch_c6
    move-exception v1

    move-wide v7, v6

    .line 2518
    :goto_c8
    :try_start_c8
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_ee

    .line 2519
    const-string v2, "Z7App"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process pending upsync for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_c8 .. :try_end_ee} :catchall_117

    .line 2523
    :cond_ee
    if-eqz v11, :cond_f3

    .line 2524
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2527
    :cond_f3
    :goto_f3
    return-void

    .line 2504
    :cond_f4
    const/4 v1, 0x0

    :try_start_f5
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 2506
    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_110

    move-object v1, v3

    .line 2507
    goto :goto_95

    .line 2509
    :cond_104
    if-eqz v14, :cond_109

    .line 2510
    :try_start_106
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_109
    move-object v9, v1

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 2513
    goto/16 :goto_13

    .line 2509
    :catchall_110
    move-exception v1

    if-eqz v14, :cond_116

    .line 2510
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_116
    throw v1
    :try_end_117
    .catchall {:try_start_106 .. :try_end_117} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_106 .. :try_end_117} :catch_c6

    .line 2523
    :catchall_117
    move-exception v1

    if-eqz v11, :cond_11d

    .line 2524
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_11d
    throw v1

    .line 2523
    :cond_11e
    if-eqz v11, :cond_f3

    .line 2524
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_f3

    .line 2514
    :catch_124
    move-exception v1

    goto :goto_c8

    .line 2478
    :catchall_126
    move-exception v1

    goto :goto_c0

    :cond_128
    move-object v3, v1

    goto :goto_b0

    :cond_12a
    move-object v3, v10

    goto/16 :goto_57
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2642
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 2645
    if-nez v1, :cond_2f

    .line 2646
    const/4 v0, 0x1

    .line 2647
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :goto_23
    if-eqz v0, :cond_2e

    .line 2663
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2665
    invoke-virtual {p1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2667
    :cond_2e
    return-void

    .line 2648
    :cond_2f
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 2650
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2651
    :cond_4d
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6b

    .line 2653
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2654
    :cond_6b
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_89

    .line 2656
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2658
    :cond_89
    const-string v0, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsyc triggered for message id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/SncMessagingController;->processPendingAppend(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_23
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "description"
    .parameter "runnable"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    .line 278
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V
    .registers 12
    .parameter "description"
    .parameter "runnable"
    .parameter "info"

    .prologue
    .line 245
    :try_start_0
    new-instance v1, Lcom/android/email/SncMessagingController$Command;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/email/SncMessagingController$Command;-><init>(Lcom/android/email/SncMessagingController$1;)V

    .line 246
    .local v1, command:Lcom/android/email/SncMessagingController$Command;
    iput-object p2, v1, Lcom/android/email/SncMessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 247
    iput-object p1, v1, Lcom/android/email/SncMessagingController$Command;->description:Ljava/lang/String;

    .line 248
    iput-object p3, v1, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    .line 253
    if-eqz p3, :cond_a1

    const-string v4, "synchronizeMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "qreSyncMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "listFolders"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "processPendingActions"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "sendPendingMessages"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "checkMail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 261
    :cond_3e
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$Command;

    .line 262
    .local v0, c:Lcom/android/email/SncMessagingController$Command;
    iget-object v4, v0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    if-eqz v4, :cond_44

    iget-object v4, v0, Lcom/android/email/SncMessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, v0, Lcom/android/email/SncMessagingController$Command;->info:Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v4, v4, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    iget-wide v6, p3, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_44

    .line 264
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 265
    const-string v4, "DEBUG@LEGACY "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [REMOVE] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_99} :catch_9a

    goto :goto_44

    .line 271
    .end local v0           #c:Lcom/android/email/SncMessagingController$Command;
    .end local v1           #command:Lcom/android/email/SncMessagingController$Command;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_9a
    move-exception v3

    .line 272
    .local v3, ie:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 269
    .end local v3           #ie:Ljava/lang/IllegalStateException;
    .restart local v1       #command:Lcom/android/email/SncMessagingController$Command;
    :cond_a1
    :try_start_a1
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v4, "DEBUG@LEGACY "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [ADD] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/IllegalStateException; {:try_start_a1 .. :try_end_d4} :catch_9a

    .line 274
    return-void
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V
    .registers 4
    .parameter "content"

    .prologue
    .line 926
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 927
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 931
    :goto_f
    return-void

    .line 929
    :cond_10
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_f
.end method

.method private syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 940
    const-string v0, "SncMessagingController"

    const-string v1, "syncSearchOnServer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 942
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2f

    .line 944
    :cond_1c
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 945
    new-instance v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 1207
    :goto_2e
    return-object v0

    .line 953
    :cond_2f
    const-string v1, "SncMessagingController"

    const-string v2, "1.Initializing the (DB)local store data"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v6, 0x0

    .line 955
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 957
    :try_start_3c
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SncMessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_291

    move-result-object v1

    .line 962
    :goto_5c
    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 963
    new-instance v0, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    invoke-direct {v0, v1}, Lcom/android/email/SncMessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 964
    iget-object v2, v0, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_6d

    goto :goto_5c

    .line 967
    :catchall_6d
    move-exception v0

    :goto_6e
    if-eqz v1, :cond_73

    .line 968
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_73
    throw v0

    .line 967
    :cond_74
    if-eqz v1, :cond_79

    .line 968
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_79
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 985
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_9f

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9f

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b6

    .line 987
    :cond_9f
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_b6

    .line 988
    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 989
    new-instance v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_2e

    .line 994
    :cond_b6
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 996
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v9

    .line 997
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 998
    const-string v2, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteMessageCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "visibleLimit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    if-gtz v1, :cond_f4

    .line 1000
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v1

    .line 1002
    iget v1, v1, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitDefault:I

    .line 1005
    :cond_f4
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    .line 1006
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1008
    const/4 v6, 0x0

    .line 1009
    if-lez v9, :cond_295

    .line 1010
    const-string v2, "SncMessagingController"

    const-string v3, "2.Performing the Search on the based on the input String"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v2, 0x0

    sub-int v1, v9, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1013
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 1014
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore;->convertSyncIntervalToDate(I)Ljava/lang/String;

    move-result-object v2

    .line 1016
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    .line 1017
    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1018
    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    move-object v2, v1

    .line 1025
    :goto_139
    array-length v3, v2

    const/4 v1, 0x0

    :goto_13b
    if-ge v1, v3, :cond_150

    aget-object v4, v2, v1

    .line 1026
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_13b

    .line 1023
    :cond_149
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/emailcommon/mail/Folder;->getMessages(ILjava/lang/Object;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    move-object v2, v1

    goto :goto_139

    .line 1035
    :cond_150
    array-length v5, v2

    const/4 v1, 0x0

    move v4, v1

    move v3, v6

    :goto_154
    if-ge v4, v5, :cond_178

    aget-object v6, v2, v4

    .line 1036
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    .line 1037
    if-nez v1, :cond_166

    .line 1038
    add-int/lit8 v3, v3, 0x1

    .line 1039
    :cond_166
    if-eqz v1, :cond_171

    iget v8, v1, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-eqz v8, :cond_171

    iget v1, v1, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_174

    .line 1042
    :cond_171
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_174
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_154

    :cond_178
    move v8, v3

    .line 1054
    :goto_179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1b4

    .line 1056
    const-string v1, "SncMessagingController"

    const-string v2, "3.Based on whether data is already present in the local store or not update/add the record in db.At this stage just update the flags"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1060
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1062
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1065
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Lcom/android/emailcommon/mail/Message;

    new-instance v1, Lcom/android/email/SncMessagingController$7;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/email/SncMessagingController$7;-><init>(Lcom/android/email/SncMessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7, v11, v1}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1150
    :cond_1b4
    const-string v1, "SncMessagingController"

    const-string v2, "5.Filter the messages based on the large/small size.Larege messsages are fetched partially"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Message;

    .line 1155
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v5

    const v6, 0xf000

    if-le v5, v6, :cond_1e2

    .line 1156
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c9

    .line 1158
    :cond_1e2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c9

    .line 1162
    :cond_1e6
    new-instance v10, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v10}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1163
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    new-instance v3, Lcom/android/email/SncMessagingController$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/SncMessagingController$8;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1177
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1178
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1180
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_220
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_286

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Message;

    .line 1181
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    if-nez v1, :cond_24e

    .line 1182
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1183
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1184
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1188
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto :goto_220

    .line 1192
    :cond_24e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    invoke-static {v2, v1, v3}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1195
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    .line 1196
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1197
    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1198
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_25f

    .line 1202
    :cond_27c
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto :goto_220

    .line 1206
    :cond_286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1207
    new-instance v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-direct {v0, v9, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_2e

    .line 967
    :catchall_291
    move-exception v0

    move-object v1, v6

    goto/16 :goto_6e

    :cond_295
    move v8, v6

    goto/16 :goto_179
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .registers 32
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1240
    const-string v4, "SncMessagingController"

    const-string v5, "synchronizeMailboxGeneric Starts"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1245
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_21

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3d

    .line 1246
    :cond_21
    const-string v4, "SncMessagingController"

    const-string v5, "DRAFTS/OUTBOX Cannot be Synced"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1248
    new-instance v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 1783
    :goto_3c
    return-object v4

    .line 1251
    :cond_3d
    const-string v5, "SncMessagingController"

    const-string v6, "1.  Get the message list from the local store and create an index of the uids"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const/4 v10, 0x0

    .line 1256
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1258
    :try_start_4a
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/SncMessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v7, "accountKey=? AND mailboxKey=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6d
    .catchall {:try_start_4a .. :try_end_6d} :catchall_7f6

    move-result-object v5

    .line 1263
    :goto_6e
    :try_start_6e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1264
    new-instance v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    invoke-direct {v4, v5}, Lcom/android/email/SncMessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 1265
    iget-object v6, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7f

    goto :goto_6e

    .line 1268
    :catchall_7f
    move-exception v4

    :goto_80
    if-eqz v5, :cond_85

    .line 1269
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_85
    throw v4

    .line 1268
    :cond_86
    if-eqz v5, :cond_8b

    .line 1269
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_8b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=? AND mailboxKey=? AND flagRead=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1281
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalUnreadCount is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string v4, "SncMessagingController"

    const-string v5, "2. Open the remote folder and create the remote folder if necessary"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v4

    .line 1287
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v15

    .line 1296
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_105

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_105

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_14c

    .line 1298
    :cond_105
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_14c

    .line 1299
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v15, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_14c

    .line 1300
    const-string v4, "SncMessagingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating remote folder failed :["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    new-instance v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_3c

    .line 1307
    :cond_14c
    const-string v4, "SncMessagingController"

    const-string v5, "3. Open the remote folder. This pre-loads certain metadata like message count"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1317
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v20

    .line 1318
    const-string v4, "SncMessagingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Message Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v4, "SncMessagingController"

    const-string v5, "6. Determine the limit of messages to download"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1323
    if-gtz v4, :cond_198

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v4

    .line 1326
    iget v4, v4, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitDefault:I

    .line 1328
    :cond_198
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteMessaegCount/visibleLimit - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSyncLookback - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v5, "SncMessagingController"

    const-string v6, "7. Create a list of messages to download"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v5, 0x0

    new-array v7, v5, [Lcom/android/emailcommon/mail/Message;

    .line 1334
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1337
    const/4 v9, 0x0

    .line 1338
    const/4 v6, 0x0

    .line 1339
    const/4 v5, 0x0

    .line 1340
    if-lez v20, :cond_800

    .line 1343
    :try_start_1e3
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v7}, Lcom/android/email/adapter/SncAdapter;->parseSyncLookback(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/emailcommon/utility/Utility;->convertSyncIntervalToDate(I)Ljava/lang/String;

    move-result-object v7

    .line 1348
    const/4 v8, 0x0

    invoke-virtual {v15, v7, v8}, Lcom/android/emailcommon/mail/Folder;->getMessageUidListByInterval(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1f3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1e3 .. :try_end_1f3} :catch_259

    move-result-object v5

    .line 1349
    :try_start_1f4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1350
    if-le v4, v6, :cond_1fb

    move v4, v6

    .line 1353
    :cond_1fb
    const-string v8, "SncMessagingController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No. of messages since "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " and visibleLimit - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    if-nez v4, :cond_238

    .line 1356
    const-string v7, "SncMessagingController"

    const-string v8, "No messages to download"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v7, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-direct {v7, v6, v9, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(III)V
    :try_end_235
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1f4 .. :try_end_235} :catch_7ed

    move-object v4, v7

    goto/16 :goto_3c

    :cond_238
    move v7, v4

    .line 1368
    :goto_239
    const/4 v4, 0x0

    sub-int v8, v20, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1370
    const/4 v8, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v4, v0, v8}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v8

    .line 1371
    array-length v11, v8

    const/4 v4, 0x0

    :goto_24b
    if-ge v4, v11, :cond_280

    aget-object v12, v8, v4

    .line 1372
    invoke-virtual {v12}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    add-int/lit8 v4, v4, 0x1

    goto :goto_24b

    .line 1360
    :catch_259
    move-exception v7

    move-object/from16 v28, v5

    move v5, v6

    move v6, v4

    move-object/from16 v4, v28

    .line 1362
    :goto_260
    const-string v7, "SncMessagingController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail. Get messages based on date is not supported for acc - "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    move v6, v5

    move-object v5, v4

    goto :goto_239

    .line 1383
    :cond_280
    array-length v11, v8

    const/4 v4, 0x0

    move v10, v4

    :goto_283
    if-ge v10, v11, :cond_2a9

    aget-object v12, v8, v10

    .line 1384
    invoke-virtual {v12}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    .line 1385
    if-nez v4, :cond_295

    .line 1386
    add-int/lit8 v9, v9, 0x1

    .line 1388
    :cond_295
    if-eqz v4, :cond_2a0

    iget v13, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-eqz v13, :cond_2a0

    iget v4, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagLoaded:I

    const/4 v13, 0x4

    if-ne v4, v13, :cond_2a5

    .line 1391
    :cond_2a0
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_2a5
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_283

    :cond_2a9
    move-object v12, v5

    move/from16 v18, v6

    move-object v13, v8

    move/from16 v19, v7

    .line 1396
    :goto_2af
    const-string v4, "SncMessagingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8. Download basic info about the new/unloaded messages (if any) - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1411
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_35d

    .line 1412
    new-instance v17, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1413
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1414
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1415
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 1418
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [Lcom/android/emailcommon/mail/Message;

    new-instance v4, Lcom/android/email/SncMessagingController$9;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/email/SncMessagingController$9;-><init>(Lcom/android/email/SncMessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v11, v0, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1498
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_329

    .line 1499
    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the fetch Message to the DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string v4, "com.android.email.provider"

    const-string v5, "synchronizeMailboxGeneric"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v5}, Lcom/android/email/SncMessagingController;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1503
    :cond_329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1504
    const-string v6, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " synchronizeMailboxGeneric fetchStart Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v4, v4, v23

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_35d
    new-instance v5, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v5}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1511
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1512
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 1513
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    array-length v4, v13

    const/16 v7, 0x64

    if-le v4, v7, :cond_393

    const/16 v4, 0x64

    move/from16 v0, v19

    if-le v0, v4, :cond_393

    .line 1523
    array-length v4, v13

    add-int/lit8 v4, v4, -0x64

    .line 1524
    array-length v7, v13

    .line 1525
    :goto_37e
    if-ge v4, v7, :cond_388

    .line 1526
    aget-object v8, v13, v4

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    add-int/lit8 v4, v4, 0x1

    goto :goto_37e

    .line 1528
    :cond_388
    const/16 v4, 0x64

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    move-object v13, v4

    .line 1533
    :cond_393
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "9. Refresh the flags for any messages in the local store that we didn\'t just download - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const/4 v4, 0x0

    invoke-virtual {v15, v13, v5, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1536
    const/4 v5, 0x0

    .line 1537
    const/4 v6, 0x0

    .line 1538
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    move v7, v4

    :goto_3b9
    if-ge v7, v9, :cond_3cd

    aget-object v11, v8, v7

    .line 1539
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v11, v4, :cond_7fd

    .line 1540
    const/4 v4, 0x1

    .line 1542
    :goto_3c2
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v11, v5, :cond_7fa

    .line 1543
    const/4 v5, 0x1

    .line 1538
    :goto_3c7
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_3b9

    .line 1548
    :cond_3cd
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    if-nez v5, :cond_3d6

    if-eqz v6, :cond_476

    :cond_3d6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    if-eqz v4, :cond_476

    .line 1550
    array-length v0, v13

    move/from16 v17, v0

    const/4 v4, 0x0

    move v9, v4

    :goto_3e1
    move/from16 v0, v17

    if-ge v9, v0, :cond_45c

    aget-object v8, v13, v9

    .line 1551
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    .line 1552
    if-nez v4, :cond_3f7

    .line 1550
    :cond_3f3
    :goto_3f3
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_3e1

    .line 1555
    :cond_3f7
    iget-boolean v7, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 1556
    sget-object v23, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v23

    .line 1557
    if-eqz v5, :cond_458

    move/from16 v0, v23

    if-eq v0, v7, :cond_458

    const/4 v7, 0x1

    .line 1558
    :goto_408
    iget-boolean v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v24, v0

    .line 1559
    sget-object v25, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v25

    .line 1560
    if-eqz v6, :cond_45a

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_45a

    const/4 v8, 0x1

    .line 1561
    :goto_41d
    if-nez v7, :cond_421

    if-eqz v8, :cond_3f3

    .line 1562
    :cond_421
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1564
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1565
    const-string v8, "flagRead"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1566
    const-string v8, "flagFavorite"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1567
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f3

    .line 1557
    :cond_458
    const/4 v7, 0x0

    goto :goto_408

    .line 1560
    :cond_45a
    const/4 v8, 0x0

    goto :goto_41d

    .line 1572
    :cond_45c
    :try_start_45c
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_476

    .line 1573
    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the Flags to the DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_476
    .catch Landroid/os/RemoteException; {:try_start_45c .. :try_end_476} :catch_4ad
    .catch Landroid/content/OperationApplicationException; {:try_start_45c .. :try_end_476} :catch_4df

    .line 1626
    :cond_476
    :goto_476
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1630
    if-nez v12, :cond_5d2

    .line 1631
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 1632
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1634
    const/16 v4, 0x3e8

    .line 1636
    const/4 v7, 0x0

    sub-int v4, v20, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1639
    if-lez v20, :cond_531

    .line 1640
    const/4 v7, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v4, v0, v7}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v7

    .line 1642
    array-length v8, v7

    const/4 v4, 0x0

    :goto_49f
    if-ge v4, v8, :cond_512

    aget-object v9, v7, v4

    .line 1643
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    add-int/lit8 v4, v4, 0x1

    goto :goto_49f

    .line 1577
    :catch_4ad
    move-exception v4

    .line 1578
    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_476

    .line 1580
    :catch_4df
    move-exception v4

    .line 1581
    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] OperationApplicationException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_476

    .line 1645
    :cond_512
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1646
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Emails to be deleted - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    :cond_531
    :goto_531
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "11. Remove any messages that are in the local store but no longer on the remote store. - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    if-eqz v4, :cond_6bd

    .line 1662
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    :try_start_562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1667
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1671
    const-string v9, "LocalAccountMoved-"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5dc

    .line 1672
    const-string v9, "SncMessagingController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Account Moved Message - uidToDelete "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_598
    .catch Ljava/lang/Exception; {:try_start_562 .. :try_end_598} :catch_599

    goto :goto_56a

    .line 1727
    :catch_599
    move-exception v4

    .line 1728
    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Exception happeing in synchronizeMailboxGeneric!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1730
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v5, 0x31

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v4

    .line 1649
    :cond_5d2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1650
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_531

    .line 1676
    :cond_5dc
    :try_start_5dc
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    .line 1681
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1685
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1687
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1692
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1697
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63c
    .catch Ljava/lang/Exception; {:try_start_5dc .. :try_end_63c} :catch_599

    goto/16 :goto_56a

    .line 1701
    :cond_63e
    :try_start_63e
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_658

    .line 1702
    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the delete message to DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1706
    :cond_658
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_672

    .line 1707
    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the syncDelete message to DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1711
    :cond_672
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68c

    .line 1712
    const-string v4, "SncMessagingController"

    const-string v5, "applyBatch for the Deleted Items delete message to DB"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.email.provider"

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_68c
    .catch Landroid/os/RemoteException; {:try_start_63e .. :try_end_68c} :catch_6f1
    .catch Landroid/content/OperationApplicationException; {:try_start_63e .. :try_end_68c} :catch_724
    .catch Ljava/lang/Exception; {:try_start_63e .. :try_end_68c} :catch_599

    .line 1724
    :cond_68c
    :goto_68c
    :try_start_68c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1725
    const-string v6, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " synchronizeMailboxGeneric deleteStart Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v4, v11

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6bd
    .catch Ljava/lang/Exception; {:try_start_68c .. :try_end_6bd} :catch_599

    .line 1734
    :cond_6bd
    const-string v4, "SncMessagingController"

    const-string v5, "12. Divide the unsynced messages into small & large (by size)"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1749
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6d2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Message;

    .line 1750
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize(B)I

    move-result v8

    if-le v7, v8, :cond_757

    .line 1751
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d2

    .line 1716
    :catch_6f1
    move-exception v4

    .line 1717
    :try_start_6f2
    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_68c

    .line 1719
    :catch_724
    move-exception v4

    .line 1720
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[accId/mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] OperationApplicationException while doing applyBatch operation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_755
    .catch Ljava/lang/Exception; {:try_start_6f2 .. :try_end_755} :catch_599

    goto/16 :goto_68c

    .line 1753
    :cond_757
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6d2

    .line 1757
    :cond_75c
    const-string v4, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "13. Download small messages - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/email/SncMessagingController;->downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V

    .line 1771
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/email/SncMessagingController;->downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V

    .line 1773
    const-string v4, "SncMessagingController"

    const-string v5, "15. Clean up and report results"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1777
    const-string v4, "SncMessagingController"

    const-string v5, " synchronizeMailboxGeneric Ends "

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1779
    const-string v6, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " synchronizeMailboxGeneric processSucess Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v4, v4, v21

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    new-instance v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    if-lez v18, :cond_7ea

    :goto_7dd
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v5, v1}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(III)V

    goto/16 :goto_3c

    :cond_7ea
    move/from16 v18, v20

    goto :goto_7dd

    .line 1360
    :catch_7ed
    move-exception v7

    move-object/from16 v28, v5

    move v5, v6

    move v6, v4

    move-object/from16 v4, v28

    goto/16 :goto_260

    .line 1268
    :catchall_7f6
    move-exception v4

    move-object v5, v10

    goto/16 :goto_80

    :cond_7fa
    move v5, v6

    goto/16 :goto_3c7

    :cond_7fd
    move v4, v5

    goto/16 :goto_3c2

    :cond_800
    move-object v12, v5

    move/from16 v18, v6

    move-object v13, v7

    move/from16 v19, v4

    goto/16 :goto_2af
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V
    .registers 14
    .parameter "account"
    .parameter "folder"
    .parameter "emailsearchinfo"

    .prologue
    const/4 v9, 0x0

    .line 460
    const-string v4, "SncMessagingController"

    const-string v5, "synchronizeMailboxSearchOnServer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/android/email/Controller$ServiceCallback;->searchMailboxStatus(JII)V

    .line 463
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 466
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v2

    .line 468
    .local v2, remoteStore:Lcom/android/email/mail/BaseSncStore;
    invoke-virtual {v2}, Lcom/android/email/mail/BaseSncStore;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    .line 470
    .local v0, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v0, :cond_35

    .line 471
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/SncMessagingController;->syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v3

    .line 480
    .local v3, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_2a
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller$ServiceCallback;->searchMailboxStatus(JII)V

    .line 487
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v3           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_34
    return-void

    .line 473
    .restart local v0       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v2       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    :cond_35
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1, p2, v4, v5}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_3c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_10 .. :try_end_3c} :catch_3e

    move-result-object v3

    .restart local v3       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_2a

    .line 482
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v3           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_3e
    move-exception v1

    .line 483
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v4, "EVENT@LEGACY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSearchOnServer [accId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][mbId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Got exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/android/email/Controller$ServiceCallback;->searchMailboxStatus(JII)V

    goto :goto_34
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 19
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 718
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "synchronizeMailboxSynchronous Starts for account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Folder: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 723
    :try_start_53
    invoke-direct/range {p0 .. p1}, Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 724
    const/4 v2, 0x0

    .line 726
    .local v2, customSync:Lcom/android/email/mail/StoreSynchronizer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v8

    .line 728
    .local v8, remoteStore:Lcom/android/email/mail/BaseSncStore;
    const/4 v7, 0x0

    .line 730
    .local v7, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v11

    if-eqz v11, :cond_184

    .line 731
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    .line 737
    :goto_8b
    if-eqz v7, :cond_93

    .line 738
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    check-cast v2, Lcom/android/email/mail/StoreSynchronizer;

    .line 745
    .restart local v2       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    :cond_93
    if-nez v2, :cond_18e

    .line 746
    invoke-direct/range {p0 .. p2}, Lcom/android/email/SncMessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .line 749
    .local v9, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    if-eqz v9, :cond_d6

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    if-lez v11, :cond_d6

    .line 751
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 752
    .local v3, cv:Landroid/content/ContentValues;
    const-string v11, "newMessageCount"

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 756
    .local v10, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v3, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 757
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;J)V

    .line 763
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_d6
    :goto_d6
    if-eqz v9, :cond_3fa

    .line 764
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v11, :cond_19c

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 767
    .local v5, folderSyncStatus:I
    :goto_ea
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "synchronizeMailboxSynchronous | ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " results Total/New/Fetched - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x0

    const/16 v15, 0x64

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 774
    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v11, v12, :cond_173

    const/4 v11, 0x2

    if-ne v5, v11, :cond_229

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v12, 0x64

    if-lt v11, v12, :cond_229

    .line 776
    :cond_173
    const/4 v11, 0x2

    if-ne v5, v11, :cond_19f

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_19f

    .line 778
    const-string v11, "SncMessagingController"

    const-string v12, "Sync results ignored. Waiting for SMS from Gateway"

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v2           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v5           #folderSyncStatus:I
    .end local v7           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v8           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :cond_183
    :goto_183
    return-void

    .line 734
    .restart local v2       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v7       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v8       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    :cond_184
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    goto/16 :goto_8b

    .line 760
    :cond_18e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v11}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .restart local v9       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto/16 :goto_d6

    .line 764
    :cond_19c
    const/4 v5, 0x0

    goto/16 :goto_ea

    .line 785
    .restart local v5       #folderSyncStatus:I
    :cond_19f
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Setting initial_sync success since all r fetched"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V
    :try_end_1e1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_53 .. :try_end_1e1} :catch_1e2

    goto :goto_183

    .line 881
    .end local v2           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v5           #folderSyncStatus:I
    .end local v7           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v8           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_1e2
    move-exception v4

    .line 882
    .local v4, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v11, "EVENT@LEGACY"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "synchronizeMailboxSynchronous [accId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "][mbId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] Got exception - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    goto/16 :goto_183

    .line 793
    .end local v4           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v2       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v5       #folderSyncStatus:I
    .restart local v7       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v8       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .restart local v9       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :cond_229
    const/4 v11, 0x3

    if-ne v5, v11, :cond_31a

    .line 794
    :try_start_22c
    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v11, v12, :cond_23c

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Lcom/android/email/Controller;->isPop(J)Z

    move-result v11

    if-eqz v11, :cond_292

    .line 796
    :cond_23c
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "### Setting initial_sync success since all r fetched or POP account["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Lcom/android/email/Controller;->isPop(J)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_183

    .line 808
    :cond_292
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "### Run the synchronizeMailbox for acct "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " folder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Messages Fetched "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " TotalMessage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 814
    .restart local v3       #cv:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v11, v11, 0x19

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 815
    const-string v11, "visibleLimit"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 818
    .restart local v10       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v3, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 820
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_183

    .line 833
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_31a
    move-object/from16 v6, p2

    .line 838
    .local v6, mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz p2, :cond_183

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v11, :cond_342

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_183

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_183

    .line 844
    :cond_342
    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_3d7

    iget v11, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v12, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    sub-int/2addr v11, v12

    if-lez v11, :cond_3d7

    .line 846
    const-string v11, "SncMessagingController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "## Run the synchronizeMailbox for acct "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " folder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Messages Fetched "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " TotalMessage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .restart local v3       #cv:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v11, v11, 0x19

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 853
    const-string v11, "visibleLimit"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 856
    .restart local v10       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v3, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 858
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_183

    .line 865
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_3d7
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v11, :cond_3ec

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_183

    .line 868
    :cond_3ec
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_183

    .line 875
    .end local v5           #folderSyncStatus:I
    .end local v6           #mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3fa
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v14, 0x21

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 876
    if-eqz v2, :cond_183

    .line 877
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    :try_end_41a
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_22c .. :try_end_41a} :catch_1e2

    goto/16 :goto_183
.end method

.method private updateAccountCapability(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter "account"

    .prologue
    .line 490
    if-eqz p1, :cond_3c

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-nez v4, :cond_3c

    .line 494
    :try_start_6
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v2

    .line 496
    .local v2, remoteStore:Lcom/android/email/mail/BaseSncStore;
    invoke-virtual {v2}, Lcom/android/email/mail/BaseSncStore;->getStoreCapability()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 497
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_3c

    .line 499
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 500
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "protocolVersion"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 503
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_3c} :catch_3d

    .line 511
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3c
    :goto_3c
    return-void

    .line 505
    :catch_3d
    move-exception v1

    .line 507
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3c
.end method


# virtual methods
.method applyBatch(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1214
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1215
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_f} :catch_2a

    .line 1224
    :cond_f
    :goto_f
    return-void

    .line 1217
    :catch_10
    move-exception v0

    .line 1218
    const-string v1, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RemoteException while doing applyBatch operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f

    .line 1220
    :catch_2a
    move-exception v0

    .line 1221
    const-string v1, "EVENT@LEGACY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OperationApplicationException while doing applyBatch operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 563
    const-string v0, "EVENT@LEGACY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closePooledConnection | accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "closePooledConnection"

    new-instance v1, Lcom/android/email/SncMessagingController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/email/SncMessagingController$4;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method public deleteUserAccount(J)V
    .registers 8
    .parameter

    .prologue
    .line 3936
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3938
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_13

    .line 3939
    :try_start_b
    const-string v0, "SncMessagingController"

    const-string v2, "Invalid Account Id"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    :goto_12
    return-void

    .line 3943
    :cond_13
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3944
    if-nez v0, :cond_43

    .line 3945
    const-string v0, "SncMessagingController"

    const-string v2, "Account is Empty: Null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const-string v0, "validate_result_code"

    const/16 v2, 0x34

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3948
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 3980
    :catch_2f
    move-exception v0

    .line 3981
    const-string v2, "SncMessagingController"

    const-string v3, "Exception while deleting account"

    invoke-static {v2, v3, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3983
    :goto_37
    const-string v0, "validate_result_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3984
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_12

    .line 3952
    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3956
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 3957
    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/BaseSncStore;->delete()V

    .line 3959
    invoke-static {v2}, Lcom/android/email/mail/BaseSncStore;->removeInstance(Ljava/lang/String;)V

    .line 3963
    :cond_5c
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3966
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 3967
    invoke-static {v0}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    .line 3970
    :cond_6b
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3971
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3974
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 3977
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 3979
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_8f} :catch_2f

    goto :goto_37
.end method

.method public downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/mail/Folder;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1791
    new-instance v10, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v10}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1792
    const-string v1, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "14. Download large messages - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loadMore/batch - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1951
    :goto_3f
    return-void

    .line 1800
    :cond_40
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1801
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1803
    if-eqz p6, :cond_5d

    .line 1804
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1805
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1806
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1808
    :cond_5d
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1810
    if-eqz p5, :cond_12b

    const/high16 v1, 0x10

    move v8, v1

    .line 1817
    :goto_76
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    if-nez v1, :cond_135

    const-string v1, "text/html"

    move-object v9, v1

    .line 1819
    :goto_7d
    const-string v1, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size/Format of the email to be fetched: fetchSize - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Format - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " acc.mEmailSize - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_af
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Message;

    .line 1823
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    if-nez v1, :cond_13f

    .line 1824
    const-string v1, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Body structure found for messageUid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    if-eqz p5, :cond_107

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 1833
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getMessageId_original()J

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1835
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getMessageId_original()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1837
    iget-object v3, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1840
    :cond_107
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1841
    if-eqz p5, :cond_13a

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    :goto_10e
    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1848
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v10, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1854
    if-eqz p5, :cond_13d

    const/4 v5, 0x1

    :goto_120
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto :goto_af

    .line 1810
    :cond_12b
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize(B)I

    move-result v1

    move v8, v1

    goto/16 :goto_76

    .line 1817
    :cond_135
    const-string v1, "text/plain"

    move-object v9, v1

    goto/16 :goto_7d

    .line 1841
    :cond_13a
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    goto :goto_10e

    .line 1854
    :cond_13d
    const/4 v5, 0x2

    goto :goto_120

    .line 1863
    :cond_13f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    invoke-static {v2, v4, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1866
    const/4 v3, 0x1

    .line 1869
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1870
    invoke-static {v4, v9}, Lcom/android/emailcommon/internet/MimeUtility;->getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v1

    .line 1871
    if-nez v1, :cond_16c

    .line 1872
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    if-eqz v1, :cond_1dc

    const-string v1, "text/html"

    .line 1875
    :goto_15c
    invoke-static {v4, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v1

    .line 1876
    if-nez v1, :cond_16c

    .line 1877
    const-string v5, "SncMessagingController"

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_16c
    move-object v4, v1

    .line 1880
    if-eqz v4, :cond_27e

    .line 1881
    invoke-virtual {v10, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1882
    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v5

    .line 1883
    if-le v5, v8, :cond_27b

    .line 1884
    const-string v1, "SncMessagingController"

    const-string v3, "Added sane flag for this part"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1886
    invoke-interface {v4, v8}, Lcom/android/emailcommon/mail/Part;->setSize(I)V

    .line 1887
    const/4 v1, 0x2

    .line 1889
    :goto_188
    const-string v3, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ctype - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdisp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v10, v6}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1899
    invoke-interface {v4, v5}, Lcom/android/emailcommon/mail/Part;->setSize(I)V

    move v5, v1

    .line 1919
    :goto_1d0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    goto/16 :goto_af

    .line 1872
    :cond_1dc
    const-string v1, "text/plain"

    goto/16 :goto_15c

    .line 1922
    :cond_1e0
    if-eqz p6, :cond_236

    .line 1924
    :try_start_1e2
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1fe

    .line 1925
    const-string v1, "SncMessagingController"

    const-string v2, "applyBatch for the large message envelope to DB "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->opsEnvelope:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1929
    :cond_1fe
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21a

    .line 1930
    const-string v1, "SncMessagingController"

    const-string v2, "applyBatch for the large message body to DB "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->opsBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1934
    :cond_21a
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_236

    .line 1935
    const-string v1, "SncMessagingController"

    const-string v2, "applyBatch for the large message attachements to DB "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    iget-object v3, p0, Lcom/android/email/SncMessagingController;->opsAttachememnt:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_236
    .catch Landroid/os/RemoteException; {:try_start_1e2 .. :try_end_236} :catch_269
    .catch Landroid/content/OperationApplicationException; {:try_start_1e2 .. :try_end_236} :catch_272

    .line 1947
    :cond_236
    :goto_236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1948
    const-string v3, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " synchronizeMailboxGeneric LargeMessagebodyStart Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " End: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Diff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v1, v11

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1939
    :catch_269
    move-exception v1

    .line 1940
    const-string v2, "EVENT@LEGACY"

    const-string v3, "RemoteException while doing applyBatch operation"

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_236

    .line 1942
    :catch_272
    move-exception v1

    .line 1943
    const-string v2, "EVENT@LEGACY"

    const-string v3, "OperationApplicationException while doing applyBatch operation"

    invoke-static {v2, v1, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_236

    :cond_27b
    move v1, v3

    goto/16 :goto_188

    :cond_27e
    move v5, v3

    goto/16 :goto_1d0
.end method

.method public getMailboxSyncState(J)I
    .registers 6
    .parameter "mailboxId"

    .prologue
    .line 4172
    const/4 v0, 0x0

    .line 4173
    .local v0, f:Lcom/android/email/SncMessagingController$ImapIdleFolder;
    iget-object v1, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #f:Lcom/android/email/SncMessagingController$ImapIdleFolder;
    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    .restart local v0       #f:Lcom/android/email/SncMessagingController$ImapIdleFolder;
    if-eqz v0, :cond_14

    .line 4174
    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->pushStatus()I

    move-result v1

    .line 4177
    :goto_13
    return v1

    :cond_14
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public loadAttachment(JJJJZ)V
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v14

    .line 3433
    if-nez v14, :cond_33

    move-wide/from16 v3, p3

    .line 3435
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide/from16 v5, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    .line 3436
    const-string v2, "loadAttachment"

    new-instance v5, Lcom/android/email/SncMessagingController$16;

    move-object/from16 v6, p0

    move/from16 v7, p9

    move-wide/from16 v8, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p3

    move-wide v15, v3

    move-wide/from16 v17, p7

    invoke-direct/range {v5 .. v18}, Lcom/android/email/SncMessagingController$16;-><init>(Lcom/android/email/SncMessagingController;ZJJJLcom/android/emailcommon/provider/EmailContent$Attachment;JJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3572
    return-void

    .line 3433
    :cond_33
    iget-wide v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    goto :goto_e
.end method

.method public loadMessageForView(J)V
    .registers 6
    .parameter

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    .line 3309
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/SncMessagingController$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/SncMessagingController$15;-><init>(Lcom/android/email/SncMessagingController;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3409
    return-void
.end method

.method public loadMore(J)V
    .registers 6
    .parameter

    .prologue
    .line 3174
    const-string v0, "SncMessagingController"

    const-string v1, "load More"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :try_start_7
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_19

    .line 3181
    :goto_e
    const-string v0, "loadMore"

    new-instance v1, Lcom/android/email/SncMessagingController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/SncMessagingController$14;-><init>(Lcom/android/email/SncMessagingController;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3299
    return-void

    .line 3177
    :catch_19
    move-exception v0

    .line 3179
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4128
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE onIdleExists [Delayed by 30000 ]| accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/SncMessagingController$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$19;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4140
    return-void
.end method

.method public processPendingActions(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 2213
    const-string v0, "processPendingActions"

    new-instance v1, Lcom/android/email/SncMessagingController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/SncMessagingController$10;-><init>(Lcom/android/email/SncMessagingController;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2233
    return-void
.end method

.method pruneCachedAttachments(J)V
    .registers 20
    .parameter "accountId"

    .prologue
    .line 3583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3584
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v10

    .line 3585
    .local v10, cacheDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 3588
    .local v12, fileList:[Ljava/io/File;
    if-nez v12, :cond_19

    .line 3622
    :cond_18
    return-void

    .line 3590
    :cond_19
    move-object v8, v12

    .local v8, arr$:[Ljava/io/File;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1e
    move/from16 v0, v16

    if-ge v13, v0, :cond_18

    aget-object v11, v8, v13

    .line 3591
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3595
    :try_start_2a
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3596
    .local v14, id:J
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3597
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_44} :catch_71

    move-result-object v9

    .line 3599
    .local v9, c:Landroid/database/Cursor;
    :try_start_45
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 3602
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_6c

    move-result-object v4

    if-nez v4, :cond_58

    .line 3607
    :try_start_52
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3590
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_55
    :goto_55
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 3607
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #id:J
    :cond_58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3611
    sget-object v4, Lcom/android/email/SncMessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_62} :catch_71

    .line 3617
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :goto_62
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_55

    .line 3618
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto :goto_55

    .line 3607
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #id:J
    :catchall_6c
    move-exception v4

    :try_start_6d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_71} :catch_71

    .line 3612
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :catch_71
    move-exception v4

    goto :goto_62
.end method

.method public qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 10
    .parameter "account"
    .parameter "folder"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 614
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 615
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 645
    :goto_10
    return-void

    .line 619
    :cond_11
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    .line 622
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 623
    const-string v0, "qreSyncMailbox"

    new-instance v1, Lcom/android/email/SncMessagingController$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$6;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    goto :goto_10
.end method

.method public qreSyncMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 14
    .parameter "account"
    .parameter "folder"

    .prologue
    const/4 v10, 0x0

    .line 658
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QReSyncMailboxSynchronous Starts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 662
    const/4 v4, 0x0

    .line 663
    .local v4, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_start_4c
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    .line 666
    .local v3, remoteStore:Lcom/android/email/mail/BaseSncStore;
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 669
    .local v2, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    const/4 v0, 0x0

    .line 670
    .local v0, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-eqz v2, :cond_fb

    .line 671
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    check-cast v0, Lcom/android/email/mail/StoreSynchronizer;

    .line 678
    .restart local v0       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    :goto_6c
    if-eqz v0, :cond_164

    .line 679
    iget-boolean v5, p0, Lcom/android/email/SncMessagingController;->mRemoteSync:Z

    invoke-interface {v0, p1, p2, v5}, Lcom/android/email/mail/StoreSynchronizer;->qresyncMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    .line 684
    :goto_74
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qreSyncMailboxSynchronous | ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "results Total/New/Fetched/isReSync - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mReSync:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    if-eqz v4, :cond_16d

    .line 690
    iget-boolean v5, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mReSync:Z

    if-eqz v5, :cond_ec

    .line 691
    const-string v5, "SncMessagingController"

    const-string v6, "$$ Run the qresync again since not fully done"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/android/email/SncMessagingController;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 694
    :cond_ec
    iget-object v6, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    iget-boolean v5, v4, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mUpdateAccountList:Z

    if-eqz v5, :cond_16a

    const/16 v5, 0xc8

    :goto_f7
    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 704
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v3           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    :goto_fa
    return-void

    .line 673
    .restart local v0       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v2       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v3       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    :cond_fb
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get the folder for the remoteStore for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " acctId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4c .. :try_end_125} :catch_127

    goto/16 :goto_6c

    .line 699
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v3           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    :catch_127
    move-exception v1

    .line 700
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "EVENT@LEGACY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qreSyncMailboxSynchronous [accId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Got exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    goto :goto_fa

    .line 681
    .end local v1           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v0       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v2       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v3       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    :cond_164
    :try_start_164
    invoke-direct {p0, p1, p2}, Lcom/android/email/SncMessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    goto/16 :goto_74

    .line 694
    :cond_16a
    const/16 v5, 0x64

    goto :goto_f7

    .line 697
    :cond_16d
    iget-object v5, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V
    :try_end_177
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_164 .. :try_end_177} :catch_127

    goto :goto_fa
.end method

.method public declared-synchronized resetIdling(Z)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 4302
    monitor-enter p0

    :try_start_2
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetIdling - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4304
    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isWifiOnly()Z

    move-result v0

    .line 4305
    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isMobileAvailable()Z

    move-result v1

    .line 4306
    const-string v2, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE isWifiOnly - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isMobileAvailable - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    if-eqz p1, :cond_165

    .line 4310
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4312
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5a
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4313
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    .line 4314
    if-eqz v0, :cond_5a

    .line 4316
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 4317
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v4}, Lcom/android/email/SncMessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    .line 4318
    const-string v5, "SncMessagingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IDLE ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isPush - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    if-eqz v4, :cond_be

    if-eqz v1, :cond_f2

    .line 4321
    :cond_be
    const-string v4, "Off-Peak Time/Not-wifi-only"

    iput-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 4322
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v9, :cond_ea

    .line 4326
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->reset(Z)V

    .line 4327
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4328
    const-string v4, "Pausing IDLE since off-peak or roaming or not-wifi-only"

    invoke-virtual {v0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 4333
    :goto_d9
    const-string v4, "SncMessagingController"

    const-string v5, "closing the pooled connection, if any, to reduce Server\'s load :)"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4335
    iget-object v0, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController;->closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_e5
    .catchall {:try_start_2 .. :try_end_e5} :catchall_e7

    goto/16 :goto_5a

    .line 4302
    :catchall_e7
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4330
    :cond_ea
    :try_start_ea
    const-string v4, "SncMessagingController"

    const-string v5, "IDLE Already paused"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d9

    .line 4344
    :cond_f2
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v9, :cond_115

    .line 4345
    const-string v4, "Peak-Time"

    iput-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 4346
    const-string v4, "Resuming IDLE since Peak time"

    invoke-virtual {v0, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 4347
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4348
    iget-object v4, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v4, v5}, Lcom/android/email/SncMessagingController;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 4349
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    .line 4354
    :cond_115
    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->status()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_121

    .line 4357
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    .line 4360
    :cond_121
    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x6

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_13b

    .line 4361
    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->reset()V

    .line 4362
    iget-object v0, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController;->closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_5a

    .line 4364
    :cond_13b
    const-string v0, "SncMessagingController"

    const-string v4, "IDLE Not restarted since restart time is not reached"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 4372
    :cond_144
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_165

    .line 4373
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_162

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    .line 4374
    iget-object v3, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v3, v0}, Lcom/android/email/SncMessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_14e

    .line 4377
    :cond_162
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4381
    :cond_165
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 4382
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4383
    const-string v0, "SncMessagingController"

    const-string v1, "IDLE No need to reset since no idle connections!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17a
    .catchall {:try_start_ea .. :try_end_17a} :catchall_e7

    .line 4404
    :goto_17a
    monitor-exit p0

    return-void

    .line 4387
    :cond_17c
    :try_start_17c
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v9, v0, :cond_18d

    .line 4388
    const-string v0, "SncMessagingController"

    const-string v1, "IDLE Reset timer is already running!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17a

    .line 4394
    :cond_18d
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/SncMessagingController$21;

    invoke-direct {v1, p0}, Lcom/android/email/SncMessagingController$21;-><init>(Lcom/android/email/SncMessagingController;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_19a
    .catchall {:try_start_17c .. :try_end_19a} :catchall_e7

    goto :goto_17a
.end method

.method public resetQresyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 10
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 586
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetQresyncMailbox - accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    .line 589
    const-string v0, "resetQresyncMailbox"

    new-instance v1, Lcom/android/email/SncMessagingController$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$5;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    .line 601
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 227
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 232
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$Command;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_47

    .line 236
    .local v0, command:Lcom/android/email/SncMessagingController$Command;
    const-string v2, "DEBUG@LEGACY "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [TAKE] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/SncMessagingController;->mBusy:Z

    .line 238
    iget-object v2, v0, Lcom/android/email/SncMessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 239
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/SncMessagingController;->mBusy:Z

    goto :goto_5

    .line 233
    .end local v0           #command:Lcom/android/email/SncMessagingController$Command;
    :catch_47
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_5
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 3631
    if-nez p1, :cond_1b

    .line 3632
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid params. Null account & sentFolderId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    :goto_1a
    return-void

    .line 3636
    :cond_1b
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/SncMessagingController$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/SncMessagingController$17;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    goto :goto_1a
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .registers 23
    .parameter
    .parameter

    .prologue
    .line 3650
    .line 3653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    .line 3654
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-nez v1, :cond_14

    .line 3815
    :goto_13
    return-void

    .line 3657
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3658
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3665
    :try_start_31
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_31 .. :try_end_34} :catch_16e

    move-result v2

    if-gtz v2, :cond_3b

    .line 3813
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_13

    .line 3669
    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V

    .line 3671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v17

    .line 3672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v3

    .line 3674
    invoke-virtual {v3}, Lcom/android/email/mail/BaseSncStore;->requireCopyMessageToSentFolder()Z

    move-result v18

    .line 3675
    const/4 v2, 0x0

    .line 3676
    if-eqz v18, :cond_2f5

    .line 3677
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3678
    const-string v4, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3681
    const-string v4, "syncServerId"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v2

    .line 3685
    :cond_8d
    :goto_8d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_90
    .catchall {:try_start_3b .. :try_end_90} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3b .. :try_end_90} :catch_16e

    move-result v2

    if-eqz v2, :cond_2df

    .line 3686
    const-wide/16 v5, -0x1

    .line 3688
    const/4 v2, 0x0

    :try_start_96
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3689
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-wide v10, v5

    invoke-virtual/range {v7 .. v14}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v2

    .line 3692
    if-eqz v2, :cond_1f3

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_1f3

    .line 3694
    const-string v4, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### msgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BodyId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " srcMsgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 3698
    const-string v7, "SncMessagingController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendPendingMessageSync - srcMessage - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3699
    if-eqz v4, :cond_1f3

    .line 3700
    iget v7, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_188

    .line 3701
    const-string v2, "Z7App"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t send #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; unloaded body"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of the srcMessage #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v12, 0x0

    const/16 v13, 0x41

    const/4 v14, 0x0

    move-wide v10, v5

    invoke-virtual/range {v7 .. v14}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V

    .line 3706
    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/SncMessagingController;->loadMore(J)V
    :try_end_157
    .catchall {:try_start_96 .. :try_end_157} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_96 .. :try_end_157} :catch_159

    goto/16 :goto_8d

    .line 3767
    :catch_159
    move-exception v2

    move-wide v7, v5

    .line 3768
    :try_start_15b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V
    :try_end_16c
    .catchall {:try_start_15b .. :try_end_16c} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_15b .. :try_end_16c} :catch_16e

    goto/16 :goto_8d

    .line 3807
    :catch_16e
    move-exception v1

    move-object v7, v1

    .line 3808
    :try_start_170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V
    :try_end_183
    .catchall {:try_start_170 .. :try_end_183} :catchall_217

    .line 3813
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 3713
    :cond_188
    :try_start_188
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v7

    .line 3715
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3716
    if-eqz v7, :cond_1f3

    .line 3717
    iget-object v9, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-nez v9, :cond_21c

    .line 3721
    const-string v9, "SncMessagingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "srcBody: text - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    const-string v9, "textReply"

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    :goto_1c2
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3731
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v8, v7, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3732
    const-string v2, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated the body of the message #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with the source message# "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 3741
    if-nez v2, :cond_242

    .line 3742
    const-string v2, "SncMessagingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not retrieve the message for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_215
    .catchall {:try_start_188 .. :try_end_215} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_188 .. :try_end_215} :catch_159

    goto/16 :goto_8d

    .line 3813
    :catchall_217
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3725
    :cond_21c
    :try_start_21c
    const-string v9, "SncMessagingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "srcBody: html - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    const-string v9, "htmlReply"

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c2

    .line 3745
    :cond_242
    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 3751
    const-string v4, "SncMessagingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message TYPE :: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    sget-boolean v4, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_SMART_FORWARD:Z

    if-eqz v4, :cond_292

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v4

    if-eqz v4, :cond_292

    if-eqz v2, :cond_292

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_292

    .line 3757
    const-string v4, "SncMessagingController"

    const-string v7, "Starting the Forward without Download Flow"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/email/SncMessagingController;->forwardMessage(Lcom/android/email/mail/BaseSncStore;Lcom/android/emailcommon/provider/EmailContent$Account;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_297

    .line 3760
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x22

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v2

    .line 3765
    :cond_292
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_297
    .catchall {:try_start_21c .. :try_end_297} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_21c .. :try_end_297} :catch_159

    .line 3776
    :cond_297
    :try_start_297
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3778
    if-eqz v18, :cond_2c3

    .line 3783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 3785
    if-eqz v4, :cond_2ba

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2ba

    .line 3786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 3789
    :cond_2ba
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3797
    :goto_2bf
    if-eqz v8, :cond_8d

    goto/16 :goto_8d

    .line 3791
    :cond_2c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 3792
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3794
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3795
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2bf

    .line 3805
    :cond_2df
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/Controller$ServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V
    :try_end_2f0
    .catchall {:try_start_297 .. :try_end_2f0} :catchall_217
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_297 .. :try_end_2f0} :catch_16e

    .line 3813
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    :cond_2f5
    move-object v15, v2

    goto/16 :goto_8d
.end method

.method public setFetchFlag(JI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4431
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    .line 4435
    if-eqz v0, :cond_36

    .line 4436
    invoke-virtual {v0, p3}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->setFetchFlag(I)V

    .line 4440
    :goto_35
    return-void

    .line 4438
    :cond_36
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 4
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 4263
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/SncMessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 4264
    monitor-exit p0

    return-void

    .line 4263
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4211
    monitor-enter p0

    .line 4213
    :try_start_3
    const-string v0, "SncMessagingController"

    const-string v3, "IDLE startIdling Starts"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4215
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    if-eqz v0, :cond_49

    .line 4216
    const-string v0, "SncMessagingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Hence stopping it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    invoke-virtual {p0, p1, p2}, Lcom/android/email/SncMessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 4222
    :cond_49
    new-instance v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/SncMessagingController$ImapIdleFolder;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 4223
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4226
    iget-object v0, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 4227
    iget-object v0, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/SncMessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 4228
    const-string v0, "Off-Peak Time"

    iput-object v0, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v2

    .line 4237
    :goto_70
    if-eqz p3, :cond_79

    .line 4239
    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isMobileAvailable()Z

    move-result v0

    if-nez v0, :cond_ce

    move v0, v1

    .line 4241
    :cond_79
    :goto_79
    if-eqz v0, :cond_a2

    const/4 v0, -0x1

    invoke-virtual {v3}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_a2

    .line 4242
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "And will be retried while reset-ting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4245
    :cond_a2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/SncMessagingController;->resetIdling(Z)V

    .line 4246
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE started for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully by thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_3 .. :try_end_cc} :catchall_d0

    .line 4248
    monitor-exit p0

    return-void

    :cond_ce
    move v0, v2

    .line 4239
    goto :goto_79

    .line 4211
    :catchall_d0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d3
    move v0, v1

    goto :goto_70
.end method

.method public stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4414
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4417
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/SncMessagingController$ImapIdleFolder;

    .line 4418
    if-eqz v0, :cond_3a

    .line 4419
    invoke-virtual {v0}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->stop()V

    .line 4424
    :goto_39
    return-void

    .line 4421
    :cond_3a
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V

    goto :goto_39
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 10
    .parameter "account"
    .parameter "folder"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 525
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 526
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 556
    :goto_10
    return-void

    .line 530
    :cond_11
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    .line 533
    iget-object v0, p0, Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 534
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/SncMessagingController$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/SncMessagingController$3;-><init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-instance v2, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    goto :goto_10
.end method

.method public updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)Z
    .registers 6
    .parameter "folder"
    .parameter "message"
    .parameter "localMessage"
    .parameter "body"

    .prologue
    .line 2019
    const/4 v0, 0x1

    return v0
.end method
