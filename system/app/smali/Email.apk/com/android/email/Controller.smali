.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ControllerStats;,
        Lcom/android/email/Controller$ControllerService;,
        Lcom/android/email/Controller$ServiceCallbackWrapper;,
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$MessageRetrievalListenerBridge;,
        Lcom/android/email/Controller$Result;,
        Lcom/android/email/Controller$PendingDownloadController;,
        Lcom/android/email/Controller$AccountMoveMessageInfo;
    }
.end annotation


# static fields
.field private static final BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field private static mContextnoti:Landroid/content/Context;

.field private static mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

.field private static sCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/email/Controller;


# instance fields
.field public bEAS2POP_EASTrashMove_Complete:Z

.field public bLoadingMessages:Z

.field private mAccountMoveList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$AccountMoveMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachdownAllStop:Z

.field private mAttachdownstop:Z

.field private final mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

.field private final mContext:Landroid/content/Context;

.field private mExternalFreshRequest:Z

.field public mLegacyController:Lcom/android/email/MessagingController;

.field final mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

.field private mProviderContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 185
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    .line 201
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "_context"

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v2, p0, Lcom/android/email/Controller;->mAttachdownstop:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/email/Controller;->mAttachdownAllStop:Z

    .line 138
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 144
    iput-boolean v2, p0, Lcom/android/email/Controller;->mExternalFreshRequest:Z

    .line 154
    new-instance v0, Lcom/android/email/ControllerUtility$CallbackWrapper;

    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Lcom/android/email/ControllerUtility$CallbackWrapper;-><init>(Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    .line 224
    iput-boolean v2, p0, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    .line 226
    iput-boolean v2, p0, Lcom/android/email/Controller;->bLoadingMessages:Z

    .line 2602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 5868
    new-instance v0, Lcom/android/email/Controller$17;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$17;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 279
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 280
    sput-object p1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    .line 281
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 282
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 283
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    sget-object v2, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v4, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->initProtocolAdapter(Landroid/content/Context;Lcom/android/email/Controller$Result;Lcom/android/email/Controller$ServiceCallback;Lcom/android/email/MessagingController;Lcom/android/email/Controller$LegacyListener;)V

    .line 294
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_71

    .line 295
    invoke-static {}, Lcom/android/email/Controller$ControllerStats;->init()V

    .line 299
    :cond_71
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/Controller;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/Controller;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/Controller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/email/Controller;->mExternalFreshRequest:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/email/Controller;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/email/Controller;->mExternalFreshRequest:Z

    return p1
.end method

.method static synthetic access$1200()Landroid/os/RemoteCallbackList;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/email/Controller;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;[J)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/Controller;->deleteMessageSync([J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/Controller;[J)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/Controller;->deleteMessageSyncForAllAccount([J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/Controller;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/Controller;)Lcom/android/email/Controller$PendingDownloadController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/Controller;Lcom/android/email/Controller$PendingDownloadController;)Lcom/android/email/Controller$PendingDownloadController;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/email/Controller;->processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method private deleteMessageSync([J)V
    .registers 13
    .parameter

    .prologue
    .line 1975
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    .line 2193
    :cond_5
    :goto_5
    return-void

    .line 1980
    :cond_6
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 1982
    if-eqz v2, :cond_5

    .line 1985
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessageSync() is called : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x6

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 1992
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-wide v3, p1, v1

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 1994
    if-eqz v7, :cond_5

    .line 1999
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2001
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2003
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    array-length v4, v0

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v4, :cond_6d

    aget-wide v5, v0, v1

    .line 2005
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 2007
    :cond_6d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2008
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->getMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 2009
    const-string v0, "Controller"

    const-string v3, "Mail is getting deleted for Snc Account"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z

    goto/16 :goto_5

    .line 2015
    :cond_8f
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2016
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2017
    const-string v1, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2020
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11f

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->hasExpiredAccounts()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 2026
    :cond_bb
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_cb

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_cb

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f8

    .line 2028
    :cond_cb
    array-length v4, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_ce
    if-ge v1, v4, :cond_102

    aget-wide v5, p1, v1

    .line 2030
    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Lcom/android/email/adapter/ProtocolAdapter;->isExchangeAccount(J)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x3

    if-ne v0, v8, :cond_f5

    .line 2032
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 2039
    :goto_e1
    iget-object v8, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2042
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2046
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2028
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ce

    .line 2034
    :cond_f5
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    goto :goto_e1

    .line 2056
    :cond_f8
    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    .line 2070
    :cond_102
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v1, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    .line 2185
    :goto_10d
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_5

    .line 2178
    :cond_11f
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessageSync([JJ)V

    goto :goto_10d
.end method

.method private deleteMessageSyncForAllAccount([J)V
    .registers 15
    .parameter

    .prologue
    .line 2197
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 2199
    const-string v0, "Controller"

    const-string v1, "deleteMessageSyncForAllAccount() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    array-length v12, p1

    const/4 v0, 0x0

    move v10, v0

    :goto_f
    if-ge v10, v12, :cond_d1

    aget-wide v3, p1, v10

    .line 2202
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 2203
    if-nez v2, :cond_1c

    .line 2364
    :cond_1b
    :goto_1b
    return-void

    .line 2205
    :cond_1c
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2209
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x6

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 2212
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_1b

    .line 2219
    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2221
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2222
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2223
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->getMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 2224
    const-string v0, "Controller"

    const-string v3, "Mail is getting deleted for Snc Account"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z

    .line 2201
    :goto_60
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_f

    .line 2230
    :cond_64
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2231
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2232
    const-string v8, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2234
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v7

    if-nez v7, :cond_c1

    .line 2235
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_8e

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8e

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b1

    .line 2242
    :cond_8e
    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->isExchangeAccount(J)Z

    move-result v5

    if-eqz v5, :cond_ae

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_ae

    .line 2244
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 2248
    :goto_9d
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2251
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2255
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_60

    .line 2246
    :cond_ae
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    goto :goto_9d

    .line 2263
    :cond_b1
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v7, 0x0

    aput-wide v3, v1, v7

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    goto :goto_60

    .line 2340
    :cond_c1
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessageSync([JJ)V

    goto :goto_60

    .line 2346
    :cond_d1
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d5
    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2350
    invoke-static {v2, v3}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 2351
    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    goto :goto_d5

    .line 2359
    :cond_f3
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_1b
.end method

.method public static declared-synchronized getInstance()Lcom/android/email/Controller;
    .registers 2

    .prologue
    .line 322
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .registers 3
    .parameter "_context"

    .prologue
    .line 315
    const-class v1, Lcom/android/email/Controller;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v0, :cond_e

    .line 316
    new-instance v0, Lcom/android/email/Controller;

    invoke-direct {v0, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 318
    :cond_e
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 315
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getServiceCallback()Lcom/android/email/Controller$ServiceCallback;
    .registers 1

    .prologue
    .line 6646
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    return-object v0
.end method

.method public static declared-synchronized injectMockControllerForTest(Lcom/android/email/Controller;)V
    .registers 3
    .parameter "mockController"

    .prologue
    .line 331
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 332
    monitor-exit v0

    return-void

    .line 331
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLegacy(J)Z
    .registers 5
    .parameter "accountId"

    .prologue
    .line 3864
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3865
    .local v0, transportType:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static isPop(J)Z
    .registers 4
    .parameter "accountId"

    .prologue
    .line 3869
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isSnc(J)Z
    .registers 4
    .parameter "accountId"

    .prologue
    .line 3874
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isUnifiedAccount(J)Z
    .registers 4
    .parameter "accountId"

    .prologue
    .line 3879
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProviderType(J)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadAttachmentOfEAS(JJJJ)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p7, p8, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v0

    .line 2726
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2727
    const-string v0, "loadAttachmentOfEAS"

    const-string v1, "Something goes wrong now.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    const/4 v0, 0x0

    .line 2730
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2740
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2742
    const-string v2, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveMessageToSameAccount() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    iget-object v13, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v13

    .line 2745
    :try_start_22
    array-length v6, p1

    const/4 v2, 0x0

    move v5, v2

    :goto_25
    if-ge v5, v6, :cond_54

    aget-wide v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2746
    const/4 v4, 0x0

    .line 2747
    iget-object v2, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_34
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2748
    iget-wide v9, v2, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-nez v2, :cond_34

    .line 2749
    const/4 v2, 0x1

    .line 2754
    :goto_4b
    if-nez v2, :cond_50

    .line 2755
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2745
    :cond_50
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_25

    .line 2759
    :cond_54
    invoke-static/range {p3 .. p4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/adapter/ProtocolAdapter;->moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    .line 3069
    monitor-exit v13

    .line 3070
    return-void

    .line 3069
    :catchall_68
    move-exception v2

    monitor-exit v13
    :try_end_6a
    .catchall {:try_start_22 .. :try_end_6a} :catchall_68

    throw v2

    :cond_6b
    move v2, v4

    goto :goto_4b
.end method

.method private processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V
    .registers 37

    .prologue
    .line 2615
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2617
    .local v21, final_messageId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v7, -0x1

    .line 2618
    .local v7, final_source_accountId:J
    const-wide/16 v13, -0x1

    .line 2619
    .local v13, final_source_boxId:J
    const-wide/16 v9, -0x1

    .line 2620
    .local v9, final_target_accountId:J
    const-wide/16 v11, -0x1

    .local v11, final_target_boxId:J
    move-wide/from16 v26, v11

    .end local v11           #final_target_boxId:J
    .local v26, final_target_boxId:J
    move-wide/from16 v24, v9

    .end local v9           #final_target_accountId:J
    .local v24, final_target_accountId:J
    move-wide/from16 v22, v7

    .line 2623
    .end local v7           #final_source_accountId:J
    .local v22, final_source_accountId:J
    :goto_13
    const/4 v15, 0x0

    .line 2624
    .local v15, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    const/16 v17, 0x0

    .line 2626
    .local v17, bDelay:Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 2629
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    .line 2630
    monitor-exit v31

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2717
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :goto_32
    return-void

    .line 2634
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    :cond_33
    const/16 v19, 0x0

    .line 2635
    .local v19, btrylater:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2636
    .local v16, AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    .line 2640
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_71

    .line 2641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2642
    const/16 v19, 0x1

    .line 2651
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_64
    if-eqz v19, :cond_7e

    .line 2652
    monitor-exit v31
    :try_end_67
    .catchall {:try_start_20 .. :try_end_67} :catchall_68

    goto :goto_13

    .line 2696
    .end local v19           #btrylater:Z
    .end local v28           #i$:Ljava/util/Iterator;
    :catchall_68
    move-exception v4

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :goto_6f
    :try_start_6f
    monitor-exit v31
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_119

    throw v4

    .line 2646
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v19       #btrylater:Z
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_71
    :try_start_71
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, 0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_3d

    .line 2647
    const/16 v17, 0x1

    goto :goto_3d

    .line 2655
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_7e
    if-nez v17, :cond_170

    .line 2656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_170

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2657
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v15, v16

    .line 2659
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, -0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_d0

    .line 2660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_a5
    .catchall {:try_start_71 .. :try_end_a5} :catchall_68

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2696
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :goto_ab
    :try_start_ab
    monitor-exit v31
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_119

    .line 2698
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c3

    .line 2699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 2702
    .local v6, source_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/android/email/Controller;->moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V

    .line 2708
    .end local v6           #source_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_c3
    const-wide/16 v4, 0x12c

    :try_start_c5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_162
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c8} :catch_14f

    move-wide/from16 v26, v11

    .end local v11           #final_target_boxId:J
    .restart local v26       #final_target_boxId:J
    move-wide/from16 v24, v9

    .end local v9           #final_target_accountId:J
    .restart local v24       #final_target_accountId:J
    move-wide/from16 v22, v7

    .line 2714
    .end local v7           #final_source_accountId:J
    .restart local v22       #final_source_accountId:J
    goto/16 :goto_13

    .line 2662
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_d0
    :try_start_d0
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, 0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_df

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2663
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    goto :goto_ab

    .line 2666
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    :cond_df
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 2668
    .local v30, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v0, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-wide/from16 v32, v0

    iget-wide v0, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v34

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v30

    .line 2670
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 2671
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    iget-wide v7, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J
    :try_end_10b
    .catchall {:try_start_d0 .. :try_end_10b} :catchall_68

    .line 2674
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :try_start_10b
    iget-wide v13, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    .line 2675
    iget-wide v9, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_164

    .line 2676
    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    :try_start_10f
    iget-wide v11, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J
    :try_end_111
    .catchall {:try_start_10f .. :try_end_111} :catchall_16b

    .line 2678
    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    :try_start_111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_119

    goto :goto_ab

    .line 2696
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v19           #btrylater:Z
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v30           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_119
    move-exception v4

    goto/16 :goto_6f

    .line 2680
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v19       #btrylater:Z
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v30       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_11c
    const/16 v18, 0x1

    .line 2681
    .local v18, bret:Z
    :try_start_11e
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_147

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 2682
    .local v29, id:Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    iget-wide v9, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iget-wide v11, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/email/Controller;->loadAttachmentOfEAS(JJJJ)Z

    move-result v18

    .line 2684
    if-nez v18, :cond_147

    .line 2685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_147
    .catchall {:try_start_11e .. :try_end_147} :catchall_68

    .end local v29           #id:Ljava/lang/Long;
    :cond_147
    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2693
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    goto/16 :goto_ab

    .line 2709
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v18           #bret:Z
    .end local v30           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_14f
    move-exception v20

    .line 2710
    .local v20, e:Ljava/lang/InterruptedException;
    :try_start_150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_162

    .line 2711
    :try_start_155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 2712
    monitor-exit v5

    goto/16 :goto_32

    :catchall_15f
    move-exception v4

    monitor-exit v5
    :try_end_161
    .catchall {:try_start_155 .. :try_end_161} :catchall_15f

    :try_start_161
    throw v4
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_162

    .line 2714
    .end local v20           #e:Ljava/lang/InterruptedException;
    :catchall_162
    move-exception v4

    throw v4

    .line 2696
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    .restart local v30       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_164
    move-exception v4

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    goto/16 :goto_6f

    .end local v11           #final_target_boxId:J
    .restart local v26       #final_target_boxId:J
    :catchall_16b
    move-exception v4

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    goto/16 :goto_6f

    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v30           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    :cond_170
    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    goto/16 :goto_ab
.end method

.method private setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;
    .registers 13
    .parameter "messageIds"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "currentAccountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "ZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3297
    new-instance v0, Lcom/android/email/Controller$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;[JLjava/lang/String;ZJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;
    .registers 13
    .parameter "messageIds"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "currentAccountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "IJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3433
    new-instance v0, Lcom/android/email/Controller$15;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$15;-><init>(Lcom/android/email/Controller;Ljava/lang/String;I[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static showSendingNotification_fail(JJLjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 6273
    :try_start_2
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_fail() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6275
    cmp-long v0, p2, v3

    if-nez v0, :cond_28

    .line 6276
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 6277
    iget-object p4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 6278
    iget-wide p2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 6281
    :cond_28
    cmp-long v0, p2, v3

    if-eqz v0, :cond_cc

    .line 6283
    if-eqz p4, :cond_cd

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_cd

    .line 6284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v2, 0x7f08052b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6289
    :goto_54
    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, p2, p3, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 6298
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-class v5, Lcom/android/email/activity/MessageListXL;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6300
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6301
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6302
    const/high16 v4, 0x2400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6304
    const-wide/16 v4, 0x1

    .line 6305
    const-string v6, "IntentSingTop"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6307
    const-string v4, "ACCOUNT_ID"

    invoke-virtual {v3, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6308
    const-string v4, "MAILBOX_ID"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6309
    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 6313
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 6314
    const v3, 0x7f02033b

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 6315
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 6316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 6317
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 6318
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v3, 0x7f08052b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 6319
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 6320
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 6321
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 6331
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6333
    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6339
    :cond_cc
    :goto_cc
    return-void

    .line 6287
    :cond_cd
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v1, 0x7f08052b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d5} :catch_d8

    move-result-object v0

    goto/16 :goto_54

    .line 6336
    :catch_d8
    move-exception v0

    .line 6337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cc
.end method

.method public static showSendingNotification_finish(JJLjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 6213
    :try_start_2
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_finish() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6232
    cmp-long v0, p2, v3

    if-nez v0, :cond_af

    .line 6233
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 6234
    if-eqz v0, :cond_af

    .line 6235
    iget-wide p2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v1, p2

    .line 6238
    :goto_29
    cmp-long v0, v1, v3

    if-eqz v0, :cond_9e

    .line 6240
    if-eqz p4, :cond_9f

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9f

    .line 6241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08052c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 6246
    :goto_56
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 6248
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    .line 6250
    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6253
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f02033b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 6255
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 6256
    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08052c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6259
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6261
    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6262
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6269
    :cond_9e
    :goto_9e
    return-void

    .line 6244
    :cond_9f
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v3, 0x7f08052c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a7} :catch_aa

    move-result-object v0

    move-object v6, v0

    goto :goto_56

    .line 6265
    :catch_aa
    move-exception v0

    .line 6266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9e

    :cond_af
    move-wide v1, p2

    goto/16 :goto_29
.end method


# virtual methods
.method public IsAttachdownAllStop()Z
    .registers 2

    .prologue
    .line 6934
    iget-boolean v0, p0, Lcom/android/email/Controller;->mAttachdownAllStop:Z

    return v0
.end method

.method public IsAttachdownstop()Z
    .registers 2

    .prologue
    .line 6920
    iget-boolean v0, p0, Lcom/android/email/Controller;->mAttachdownstop:Z

    return v0
.end method

.method public OnCleanup()V
    .registers 1

    .prologue
    .line 6542
    invoke-static {}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanup()V

    .line 6543
    return-void
.end method

.method public SetAttachdownAllStop(Z)V
    .registers 3
    .parameter "attachdownallstop"

    .prologue
    .line 6938
    iput-boolean p1, p0, Lcom/android/email/Controller;->mAttachdownAllStop:Z

    .line 6940
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6941
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->setCopyAllCancel(Z)V

    .line 6943
    :cond_b
    return-void
.end method

.method public SetAttachdownstop(Z)V
    .registers 3
    .parameter "attachdownstop"

    .prologue
    .line 6924
    iget-boolean v0, p0, Lcom/android/email/Controller;->mAttachdownstop:Z

    if-eq v0, p1, :cond_f

    .line 6925
    iput-boolean p1, p0, Lcom/android/email/Controller;->mAttachdownstop:Z

    .line 6927
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6928
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->setCopyCancel(Z)V

    .line 6931
    :cond_f
    return-void
.end method

.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 355
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    monitor-exit v1

    .line 368
    return-void

    .line 357
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    .line 6583
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6584
    const-string v2, "EVENT@CONTR"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addUserAccount] [endpointName - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[userName - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[password - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v0, :cond_7c

    move-object v0, p4

    :goto_3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[serviceList - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6588
    if-eqz p2, :cond_61

    if-eqz p3, :cond_61

    if-nez p4, :cond_7f

    .line 6589
    :cond_61
    const-string v0, "Controller"

    const-string v2, "[addUserAccount] INVALID Arguments"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6590
    const-string v0, "status_text"

    const-string v2, "Invalid arguments"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6591
    const-string v0, "status_code"

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6592
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    .line 6617
    :goto_7b
    return-void

    .line 6584
    :cond_7c
    sget-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_3a

    .line 6596
    :cond_7f
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 6597
    const-string v0, "EVENT@CONTR"

    const-string v2, "addUserAccount | Airplane mode ON"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6598
    const-string v0, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6600
    const-string v0, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6601
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_7b

    .line 6605
    :cond_ad
    sput-boolean v4, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    .line 6609
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setRestoreFlowDone(Landroid/content/Context;Z)V

    .line 6611
    new-instance v0, Lcom/android/email/Controller$19;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$19;-><init>(Lcom/android/email/Controller;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_7b
.end method

.method public changeSmsSettings(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 1583
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1597
    :goto_6
    return-void

    .line 1596
    :cond_7
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->changeSmsSettings(J)V

    goto :goto_6
.end method

.method public cleanupForTest()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 309
    return-void
.end method

.method public createFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
    .registers 5
    .parameter "folderName"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    new-instance v0, Lcom/android/email/Controller$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(Ljava/lang/String;JJZ)Landroid/os/AsyncTask;
    .registers 15
    .parameter "folderName"
    .parameter "mailboxId"
    .parameter "accountKey"
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Lcom/android/email/Controller$5;

    move-object v1, p0

    move-wide v2, p2

    move v4, p6

    move-object v5, p1

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;JZLjava/lang/String;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method createMailbox(JI)J
    .registers 8
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 1344
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_8

    if-gez p3, :cond_30

    .line 1345
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, mes:Ljava/lang/String;
    const-string v2, "Email"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1349
    .end local v1           #mes:Ljava/lang/String;
    :cond_30
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 1350
    .local v0, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1351
    iput p3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 1352
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 1353
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 1354
    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getMailboxServerName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1356
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 1357
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1358
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    return-wide v2
.end method

.method public deleteAccount(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 4058
    new-instance v0, Lcom/android/email/Controller$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$16;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 4063
    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .registers 6
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 4073
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4167
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->deleteAccountSync(JLandroid/content/Context;)V

    .line 4169
    return-void
.end method

.method public deleteAttachment(J)V
    .registers 7
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 1907
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1908
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1909
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1910
    return-void
.end method

.method public deleteAttachmentMessages()V
    .registers 10

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 437
    .local v6, c:Landroid/database/Cursor;
    :try_start_7
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    :goto_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 440
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 442
    .local v7, mailboxId:J
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 443
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_37

    goto :goto_13

    .line 448
    .end local v7           #mailboxId:J
    :catchall_37
    move-exception v1

    if-eqz v6, :cond_3d

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_3d
    throw v1

    :cond_3e
    if-eqz v6, :cond_43

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_43
    return-void
.end method

.method public deleteCalendarInvitation(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6954
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "sync_data2=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public deleteFolder(J)Landroid/os/AsyncTask;
    .registers 4
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    new-instance v0, Lcom/android/email/Controller$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;
    .registers 5
    .parameter "accountKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    .local p3, deleteMailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/Controller$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JLjava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessage([JJ)V
    .registers 7
    .parameter "messageIds"
    .parameter "accountId"

    .prologue
    .line 1923
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1959
    return-void
.end method

.method public deleteMessageLocal([J)V
    .registers 12
    .parameter "messageIds"

    .prologue
    .line 1962
    move-object v0, p1

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v5, :cond_38

    aget-wide v3, v0, v2

    .line 1963
    .local v3, id:J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1964
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "EasLocalDeleteFlag"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1965
    iget-object v6, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1962
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1968
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #id:J
    :cond_38
    return-void
.end method

.method public deleteSyncedDataSync(J)V
    .registers 8
    .parameter

    .prologue
    .line 4185
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 4193
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4194
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4197
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? AND type!=68"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4199
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4202
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4203
    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4204
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id =?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4205
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4206
    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4207
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4217
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->deleteAccountPIMData(J)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 4223
    :goto_4a
    return-void

    .line 4220
    :catch_4b
    move-exception v0

    .line 4221
    const-string v1, "Email"

    const-string v2, "Exception while deleting account synced data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method public emptyTrash(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 3856
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->emptyTrash(J)V

    .line 3858
    return-void
.end method

.method public declared-synchronized findOrCreateMailboxOfType(JI)J
    .registers 10
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v2, -0x1

    .line 1292
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_b

    if-gez p3, :cond_e

    :cond_b
    move-wide v0, v2

    .line 1296
    :cond_c
    :goto_c
    monitor-exit p0

    return-wide v0

    .line 1295
    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 1296
    .local v0, mailboxId:J
    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1d

    move-result-wide v0

    goto :goto_c

    .line 1292
    .end local v0           #mailboxId:J
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 464
    .local v6, c:Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 465
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 466
    .local v7, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 480
    .end local v7           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .local v8, m:Ljava/lang/Object;
    :goto_24
    return-object v8

    .line 470
    .end local v8           #m:Ljava/lang/Object;
    :catchall_25
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 472
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 473
    .restart local v7       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 474
    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 476
    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 477
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 478
    const/16 v0, 0x101

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 479
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object v8, v7

    .line 480
    .restart local v8       #m:Ljava/lang/Object;
    goto :goto_24
.end method

.method public getAvailableAccounts(I)V
    .registers 6
    .parameter

    .prologue
    .line 6552
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6553
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAvailableAccounts][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6555
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 6556
    const-string v1, "EVENT@CONTR"

    const-string v2, "getAvailableAccounts | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6557
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6559
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6560
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCachedEndpoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    .line 6569
    :goto_54
    return-void

    .line 6564
    :cond_55
    new-instance v0, Lcom/android/email/Controller$18;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$18;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_54
.end method

.method public getConversationID(Ljava/lang/String;)[B
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v0, 0x0

    .line 6182
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 6183
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array to encript cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6185
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    .line 6188
    :goto_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_5c

    .line 6189
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 6191
    aget-byte v3, v2, v0

    const/16 v4, -0x80

    if-ne v3, v4, :cond_47

    .line 6197
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x2

    .line 6198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 6193
    :cond_47
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_42

    .line 6194
    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 6195
    aget-byte v3, v2, v0

    mul-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_42

    .line 6208
    :cond_5c
    return-object v2
.end method

.method getMailboxServerName(I)Ljava/lang/String;
    .registers 3
    .parameter "mailboxType"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/activity/ActivityResourceInterface;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutOfOffice(J)V
    .registers 9
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1521
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [getOutOfOffice] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5a

    .line 1525
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    .line 1541
    :goto_59
    return-void

    .line 1531
    :cond_5a
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 1532
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOutOfOffice | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_59

    .line 1539
    :cond_88
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getOutOfOffice(J)V

    goto :goto_59
.end method

.method public getResultCallbacksForTest()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 425
    :try_start_3
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-exit v1

    return-object v0

    .line 426
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getUserConfiguredAccounts(I)V
    .registers 6
    .parameter

    .prologue
    .line 6626
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6627
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUserConfiguredAccounts][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6629
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 6630
    const-string v1, "EVENT@CONTR"

    const-string v2, "getUserConfiguredAccounts | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6631
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6633
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6634
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    .line 6643
    :goto_51
    return-void

    .line 6638
    :cond_52
    new-instance v0, Lcom/android/email/Controller$20;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$20;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_51
.end method

.method public getUserProfile(I)V
    .registers 6
    .parameter

    .prologue
    .line 6747
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6748
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUserprofile][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6750
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 6751
    const-string v1, "EVENT@CONTR"

    const-string v2, "getUserProfile | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6752
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6754
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6755
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 6763
    :goto_51
    return-void

    .line 6758
    :cond_52
    new-instance v0, Lcom/android/email/Controller$21;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$21;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_51
.end method

.method public hasPremiumExpiredAccounts()Z
    .registers 2

    .prologue
    .line 6465
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->hasExpiredAccounts()Z

    move-result v0

    return v0
.end method

.method public hasPremiumExpiredAccounts(JJ)Z
    .registers 6
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 6447
    invoke-virtual {p0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    return v0
.end method

.method public hostChanged(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 6530
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->hostChanged(J)V

    .line 6531
    return-void
.end method

.method public isMessagingController(J)Z
    .registers 6
    .parameter

    .prologue
    .line 4023
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4024
    if-nez v0, :cond_32

    .line 4025
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 4026
    const-string v1, "pop3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "imap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_24
    const/4 v0, 0x1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4027
    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4029
    :cond_32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 4026
    :cond_37
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 4017
    if-nez p1, :cond_4

    .line 4018
    const/4 v0, 0x0

    .line 4019
    :goto_3
    return v0

    :cond_4
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    goto :goto_3
.end method

.method public loadAttachment(JJJI)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3582
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 3586
    if-nez v2, :cond_48

    .line 3587
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v10, 0x0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-wide v8, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3661
    :goto_47
    return-void

    .line 3592
    :cond_48
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 3608
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-wide v8, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3610
    move/from16 v0, p7

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_6e

    .line 3611
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v3, 0x0

    const/16 v10, 0x1f4

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-wide v8, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_47

    .line 3613
    :cond_6e
    and-int/lit8 v2, p7, 0x20

    if-eqz v2, :cond_7f

    .line 3614
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v3, 0x0

    const/16 v10, 0x190

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-wide v8, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_47

    .line 3617
    :cond_7f
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v3, 0x0

    const/16 v10, 0x64

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-wide v8, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_47

    .line 3659
    :cond_8c
    invoke-static/range {p5 .. p6}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJI)V

    goto :goto_47
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V
    .registers 25
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "callback"
    .parameter "prune"
    .parameter "reconnect"

    .prologue
    .line 3677
    const/4 v12, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZZ)V

    .line 3679
    return-void
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;ZZZ)V
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p1

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v4

    .line 3688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3695
    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Controller:loadAttachment() START ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [loadAttachment] [accId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [mbId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [msgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [attId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-lez v6, :cond_80

    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-lez v6, :cond_80

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_80

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_bc

    .line 3702
    :cond_80
    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment | Invalid parameter accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mailboxId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3799
    :goto_bb
    return-void

    .line 3710
    :cond_bc
    if-eqz v4, :cond_c0

    if-nez v5, :cond_d6

    .line 3711
    :cond_c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_bb

    .line 3719
    :cond_d6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_100

    iget-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_100

    .line 3733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v5, 0x0

    const/16 v12, 0x64

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_bb

    .line 3740
    :cond_100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_147

    .line 3741
    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment | Airplane mode ON accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mailboxId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x5d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto/16 :goto_bb

    .line 3797
    :cond_147
    invoke-static/range {p7 .. p8}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v4 .. v15}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJJZZZ)V

    goto/16 :goto_bb
.end method

.method public loadMessageForView(J)V
    .registers 10
    .parameter "messageId"

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 1227
    cmp-long v0, p1, v2

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v2

    .line 1229
    .local v2, accountId:J
    :cond_d
    cmp-long v0, p1, v4

    if-lez v0, :cond_15

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3b

    .line 1230
    :cond_15
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMessageForView | Invalid parameter msg: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x3d

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 1256
    :goto_3a
    return-void

    .line 1240
    :cond_3b
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1241
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMessageForView | Airplane mode ON messageId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x5d

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_3a

    .line 1251
    :cond_69
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "[loadMessageForView] [accId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [msgId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->loadMessageForView(J)V

    goto :goto_3a
.end method

.method public loadMessageFromUri(Landroid/net/Uri;I)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 18
    .parameter "uri"
    .parameter "accountId"

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/email/Controller;->getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 495
    .local v13, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v13, :cond_8

    .line 496
    const/4 v1, 0x0

    .line 545
    :goto_7
    return-object v1

    .line 498
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    .line 499
    .local v14, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 501
    .local v11, accountID:Ljava/lang/String;
    :try_start_13
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1e} :catch_b2

    move-result-object v12

    .line 505
    .local v12, is:Ljava/io/InputStream;
    :try_start_1f
    new-instance v3, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__attachment_message__"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 507
    .local v3, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v3, v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    .line 509
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 510
    .local v2, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    int-to-long v4, v0

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v8, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static/range {v1 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 514
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application/x-pkcs7-mime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    .line 516
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 523
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 526
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 532
    .local v10, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v3

    move-object v6, v2

    move-object v7, v13

    invoke-virtual/range {v4 .. v10}, Lcom/android/email/adapter/ProtocolAdapter;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 539
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    goto/16 :goto_7

    .line 517
    .end local v10           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_8e
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/signed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 518
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_ad
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1f .. :try_end_ad} :catch_ae
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_ad} :catch_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_ad} :catch_b2

    goto :goto_69

    .line 540
    .end local v2           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v3           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_ae
    move-exception v1

    .line 545
    .end local v12           #is:Ljava/io/InputStream;
    :goto_af
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 543
    :catch_b2
    move-exception v1

    goto :goto_af

    .line 541
    .restart local v12       #is:Ljava/io/InputStream;
    :catch_b4
    move-exception v1

    goto :goto_af
.end method

.method public loadMore(J)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 3809
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v0

    .line 3811
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [loadMore] [accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [msgId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    cmp-long v2, p1, v6

    if-lez v2, :cond_45

    cmp-long v2, v0, v6

    if-gtz v2, :cond_6a

    .line 3815
    :cond_45
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore | Invalid parameter msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 3837
    :goto_69
    return-void

    .line 3825
    :cond_6a
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 3826
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMoreStatus | Airplane mode ON messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_69

    .line 3836
    :cond_97
    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->loadMore(J)V

    goto :goto_69
.end method

.method public loadMoreCancel()V
    .registers 2

    .prologue
    .line 3842
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->loadMoreCancel()V

    .line 3844
    return-void
.end method

.method public loadMoreMessages(J)V
    .registers 4
    .parameter "mailboxId"

    .prologue
    .line 1840
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1882
    return-void
.end method

.method public lookupAccountForMessage(J)J
    .registers 11
    .parameter "messageId"

    .prologue
    const/4 v4, 0x1

    .line 1890
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1891
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1896
    .local v6, c:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2d

    move-result-wide v1

    .line 1898
    :goto_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1896
    return-wide v1

    :cond_2a
    const-wide/16 v1, -0x1

    goto :goto_26

    .line 1898
    :catchall_2d
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 6779
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6780
    cmp-long v0, p1, v4

    if-nez v0, :cond_13

    .line 6781
    const-string v0, "Controller"

    const-string v1, "[modifyUserAccount] INVALID Arguments"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6804
    :goto_12
    return-void

    .line 6784
    :cond_13
    const-string v2, "EVENT@CONTR"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[modifyUserAccount] [password - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v0, :cond_95

    move-object v0, p3

    :goto_25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[account name - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[display name - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[serviceList - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6789
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 6790
    const-string v0, "EVENT@CONTR"

    const-string v2, "modifyUserAccount | Airplane mode ON"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6791
    const-string v0, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6793
    const-string v0, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6794
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto/16 :goto_12

    .line 6784
    :cond_95
    sget-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_25

    .line 6798
    :cond_98
    new-instance v0, Lcom/android/email/Controller$22;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$22;-><init>(Lcom/android/email/Controller;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_12
.end method

.method public moveConversationAlways(JLjava/lang/String;JJI)V
    .registers 16
    .parameter "mailboxId"
    .parameter "conversationId"
    .parameter "accountId"
    .parameter "toMailboxId"
    .parameter "ignore"

    .prologue
    .line 3915
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-nez v0, :cond_7

    .line 3933
    :goto_6
    return-void

    .line 3928
    :cond_7
    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p6

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->moveConversationAlways(JJ[BI)V

    .line 3932
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto :goto_6
.end method

.method public moveConversationIgnore(JLjava/lang/String;J)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 3886
    .line 3889
    :try_start_2
    const-string v0, "CONVID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConversationID start conversationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "6"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_5e

    move-result-object v7

    .line 3896
    :try_start_39
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3901
    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->moveConversationAlways(JJ[BI)V
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_66

    .line 3906
    :cond_51
    if-eqz v7, :cond_56

    .line 3907
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_56
    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p1

    move v5, v8

    .line 3910
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    .line 3911
    return-void

    .line 3906
    :catchall_5e
    move-exception v0

    move-object v1, v6

    :goto_60
    if-eqz v1, :cond_65

    .line 3907
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3906
    :cond_65
    throw v0

    :catchall_66
    move-exception v0

    move-object v1, v7

    goto :goto_60
.end method

.method public moveFolder(JJ)V
    .registers 10
    .parameter "mailboxId"
    .parameter "dstMailboxId"

    .prologue
    .line 940
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 941
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v1, 0x0

    .line 942
    .local v1, dstServerId:Ljava/lang/String;
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-eqz v3, :cond_17

    .line 943
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 944
    .local v0, dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_17

    .line 945
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 947
    .end local v0           #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_17
    if-eqz v2, :cond_22

    .line 948
    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/email/adapter/ProtocolAdapter;->moveFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    .line 951
    :cond_22
    return-void
.end method

.method public moveMessage(J[JJ)Landroid/os/AsyncTask;
    .registers 13
    .parameter "targetAccountId"
    .parameter "messageIds"
    .parameter "targetMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[JJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2379
    if-eqz p3, :cond_5

    array-length v0, p3

    if-nez v0, :cond_b

    .line 2380
    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 2382
    :cond_b
    new-instance v0, Lcom/android/email/Controller$11;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;[JJJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V
    .registers 37
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2436
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v18

    .line 2442
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v5, :cond_43

    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2443
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 2445
    if-nez v7, :cond_2b

    .line 2442
    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2450
    :cond_2b
    iget v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    if-nez v8, :cond_3f

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_28

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_3f

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_28

    .line 2455
    :cond_3f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 2457
    :cond_43
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2599
    :goto_49
    return-void

    .line 2462
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    .line 2466
    invoke-static/range {v20 .. v20}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v21

    .line 2470
    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_6a

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_6a

    .line 2472
    const-string v3, "moveMessageToOtherAccountFolder()"

    const-string v4, "target account server is invalid.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 2479
    :cond_6a
    invoke-static/range {p2 .. p2}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v22

    .line 2492
    const/4 v3, 0x6

    move/from16 v0, v22

    if-ne v0, v3, :cond_7b

    .line 2493
    const-string v3, "moveMessageToOtherAccountFolder()"

    const-string v4, "source account server is invalid.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 2502
    :cond_7b
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2504
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_167

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 2508
    :try_start_8c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_90
    :goto_90
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_115

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 2509
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2510
    new-instance v3, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v5, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v0, p3

    invoke-static {v4, v0, v1, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v4

    .line 2521
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_109

    .line 2522
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    .line 2528
    :goto_d2
    const/4 v5, 0x0

    .line 2529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1da

    .line 2530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1da

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2531
    iget-wide v7, v4, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_e5

    .line 2532
    const/4 v4, 0x1

    .line 2538
    :goto_fc
    if-nez v4, :cond_90

    .line 2539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 2542
    :catchall_106
    move-exception v3

    monitor-exit v24
    :try_end_108
    .catchall {:try_start_8c .. :try_end_108} :catchall_106

    throw v3

    .line 2524
    :cond_109
    :try_start_109
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    const-wide/16 v4, 0x1

    iput-wide v4, v3, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    goto :goto_d2

    .line 2542
    :cond_115
    monitor-exit v24
    :try_end_116
    .catchall {:try_start_109 .. :try_end_116} :catchall_106

    .line 2570
    :goto_116
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_137

    .line 2577
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    move-object/from16 v4, v23

    move-wide/from16 v5, p3

    move-wide/from16 v7, p9

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, v18

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v3 .. v16}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V

    .line 2585
    :cond_137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v4

    .line 2586
    :try_start_13c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_161

    .line 2587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    if-nez v3, :cond_161

    .line 2588
    new-instance v3, Lcom/android/email/Controller$PendingDownloadController;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/Controller$PendingDownloadController;-><init>(Lcom/android/email/Controller;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 2589
    new-instance v3, Lcom/android/email/Controller$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v3}, Lcom/android/email/Controller$12;->start()V

    .line 2598
    :cond_161
    monitor-exit v4

    goto/16 :goto_49

    :catchall_164
    move-exception v3

    monitor-exit v4
    :try_end_166
    .catchall {:try_start_13c .. :try_end_166} :catchall_164

    throw v3

    .line 2545
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 2546
    :try_start_16e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_172
    :goto_172
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 2547
    new-instance v3, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v5, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    .line 2551
    const/4 v5, 0x0

    .line 2552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d8

    .line 2553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1aa
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2554
    iget-wide v7, v4, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_1aa

    .line 2555
    const/4 v4, 0x1

    .line 2561
    :goto_1c1
    if-nez v4, :cond_172

    .line 2562
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_172

    .line 2566
    :catchall_1d2
    move-exception v3

    monitor-exit v24
    :try_end_1d4
    .catchall {:try_start_16e .. :try_end_1d4} :catchall_1d2

    throw v3

    :cond_1d5
    :try_start_1d5
    monitor-exit v24
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d2

    goto/16 :goto_116

    :cond_1d8
    move v4, v5

    goto :goto_1c1

    :cond_1da
    move v4, v5

    goto/16 :goto_fc
.end method

.method public refreshIRMTemplates(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 3940
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->refreshIRMTemplates(J)V

    .line 3941
    return-void
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 406
    if-eqz p1, :cond_f

    .line 407
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 408
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 410
    monitor-exit v1

    .line 421
    :cond_f
    return-void

    .line 410
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public renameFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
    .registers 5
    .parameter "folderName"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 870
    new-instance v0, Lcom/android/email/Controller$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public resetCheckSyncLookbackForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 6889
    if-nez p1, :cond_c

    .line 6890
    const-string v0, "Controller"

    const-string v1, "resetCheckSyncLookbackForAccount | account is null"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6914
    :cond_b
    :goto_b
    return-void

    .line 6893
    :cond_c
    const-string v0, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCheckSyncLookbackForAccount | For account - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6895
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3, v5, v5}, Lcom/android/emailcommon/utility/Utility;->restoreMailboxList(Landroid/content/Context;JLjava/lang/String;[Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 6896
    if-nez v2, :cond_4b

    .line 6897
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCheckSyncLookbackForAccount | Fail. No mailboxes for account - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 6902
    :cond_4b
    array-length v3, v2

    move v0, v1

    :goto_4d
    if-ge v0, v3, :cond_76

    aget-object v4, v2, v0

    .line 6903
    const-string v5, "Controller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting syncStatus to RESET for mailbox - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6904
    iget-object v5, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-static {v5, v6, v7, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    .line 6902
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 6908
    :cond_76
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 6909
    if-eqz v0, :cond_b

    .line 6910
    const-string v1, "Controller"

    const-string v2, "Restarting sync for INBOX based on new syncInterval"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6911
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto/16 :goto_b
.end method

.method public saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 11
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 1267
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1268
    .local v2, accountId:J
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    .line 1269
    .local v4, mailboxId:J
    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1271
    iput p2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    .line 1273
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1274
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1275
    return-void
.end method

.method public searchOnServer(JLjava/lang/String;)V
    .registers 5
    .parameter "mailboxId"
    .parameter "searchText"

    .prologue
    .line 1796
    new-instance v0, Lcom/android/email/Controller$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$8;->start()V

    .line 1828
    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .registers 13
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 3562
    .local v6, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_9

    .line 3568
    :goto_8
    return-void

    .line 3566
    :cond_9
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->sendMeetingEditedResponse(JJI)V

    goto :goto_8
.end method

.method public sendMeetingResponse(JI)V
    .registers 7
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 3534
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 3536
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_9

    .line 3543
    :goto_8
    return-void

    .line 3540
    :cond_9
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->sendMeetingResponse(JI)V

    goto :goto_8
.end method

.method public sendMessage(JJ)V
    .registers 15
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 1376
    const-string v0, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3, p4}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1380
    .local v8, resolver:Landroid/content/ContentResolver;
    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_40

    .line 1381
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 1383
    :cond_40
    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_56

    .line 1389
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x3d

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 1482
    :goto_55
    return-void

    .line 1395
    :cond_56
    const/4 v0, 0x4

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 1396
    .local v1, outboxId:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1397
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "mailboxKey"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1398
    const-string v0, "mailboxType"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1401
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1402
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v9, v7, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1404
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v3, "sendMessage() MOVE TO OUTBOX"

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1472
    const-string v0, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage | Airplane mode ON messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    .end local v1           #outboxId:J
    const/16 v3, 0x5d

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_55

    .line 1480
    .restart local v1       #outboxId:J
    :cond_b5
    invoke-static {p3, p4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->sendMessage(JJJ)V

    goto :goto_55
.end method

.method public sendPendingMessages(J)V
    .registers 12
    .parameter "accountId"

    .prologue
    const/16 v3, 0x3d

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 1705
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [sendPendingMessages] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1709
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPendingMessages | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 1748
    :goto_5e
    return-void

    .line 1719
    :cond_5f
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_89

    .line 1720
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_5e

    .line 1732
    :cond_89
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v7

    .line 1734
    .local v7, outboxId:J
    cmp-long v0, v7, v4

    if-nez v0, :cond_a7

    .line 1735
    const-string v0, "Controller"

    const-string v1, "Outbox not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_5e

    .line 1746
    :cond_a7
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->sendPendingMessages(J)V

    goto :goto_5e
.end method

.method public serviceCheckMail(JJJZ)V
    .registers 21
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"
    .parameter "ExternalFreshRequest"

    .prologue
    .line 1025
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1026
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceCheckMail | Airplane mode ON mailboxId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "accountId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x5d

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v8, 0x64

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    .line 1073
    :cond_3f
    :goto_3f
    return-void

    .line 1037
    :cond_40
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_4c

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_84

    .line 1038
    :cond_4c
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceCheckMail | Invalid parameter accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mailboxId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v8, 0x64

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_3f

    .line 1049
    :cond_84
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v12

    .line 1050
    .local v12, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v12, :cond_ee

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->isExchangeAccount(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ee

    .line 1051
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/email/Controller;->mExternalFreshRequest:Z

    .line 1052
    iget-boolean v2, p0, Lcom/android/email/Controller;->mExternalFreshRequest:Z

    if-eqz v2, :cond_3f

    .line 1054
    :try_start_9d
    const-string v2, "Controller"

    const-string v3, "serviceCheckMail mailboxId : mExternalFreshRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v2, 0x1

    move-wide/from16 v0, p3

    invoke-interface {v12, v0, v1, v2}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V

    .line 1056
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_bb} :catch_bc

    goto :goto_3f

    .line 1058
    :catch_bc
    move-exception v11

    .line 1059
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceCheckMail mailboxId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/Controller;->mExternalFreshRequest:Z

    .line 1061
    iget-object v2, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v8, 0x64

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto/16 :goto_3f

    .line 1066
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_ee
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [serviceCheckMail] [accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [mbId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [Tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    iget-object v9, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/adapter/ProtocolAdapter;->serviceCheckMail(JJJLcom/android/email/Controller$Result;)V

    goto/16 :goto_3f
.end method

.method public serviceLogging(I)V
    .registers 4
    .parameter "debugFlags"

    .prologue
    .line 554
    new-instance v0, Lcom/android/email/Controller$1;

    const-string v1, "serviceLogging"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/email/Controller$1;->start()V

    .line 560
    return-void
.end method

.method public setMessageFavorite([JZJ)Landroid/os/AsyncTask;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 3283
    const-string v2, "flagFavorite"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JIJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;III)V

    .line 3427
    const-string v2, "flagStatus"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageRead([JZJ)Landroid/os/AsyncTask;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 3117
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3118
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v1, :cond_26

    .line 3119
    if-eqz v0, :cond_26

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 3120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageReadLocal([JZJ)Landroid/os/AsyncTask;

    move-result-object v0

    .line 3123
    :goto_25
    return-object v0

    :cond_26
    const-string v2, "flagRead"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_25
.end method

.method public setMessageRead(JZ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3161
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 3162
    if-nez v0, :cond_b

    .line 3234
    :goto_a
    return-void

    .line 3166
    :cond_b
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 3167
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v1

    if-nez v1, :cond_3b

    .line 3168
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3169
    const-string v2, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3170
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3172
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3173
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3225
    :cond_3b
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->setMessageRead(JZ)V

    .line 3229
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_a
.end method

.method public setMessageReadLocal([JZJ)Landroid/os/AsyncTask;
    .registers 6
    .parameter "messageIds"
    .parameter "isRead"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3129
    new-instance v0, Lcom/android/email/Controller$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;[JZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .registers 10
    .parameter "accountId"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1558
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [setOutOfOffice] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_64

    .line 1562
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    .line 1579
    :goto_63
    return-void

    .line 1569
    :cond_64
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1570
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutOfOffice | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_63

    .line 1577
    :cond_92
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto :goto_63
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .registers 2
    .parameter "providerContext"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 343
    return-void
.end method

.method public setupPushForUnifiedAccount()V
    .registers 6

    .prologue
    .line 6811
    const-string v0, "EVENT@CONTR"

    const-string v1, "setupPushForUnifiedAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6812
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 6813
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 6814
    if-eqz v0, :cond_17

    if-nez v1, :cond_3a

    .line 6815
    :cond_17
    const-string v2, "TAG_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPushForUnifiedAccount | No unified account/mailbox -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6821
    :goto_39
    return-void

    .line 6820
    :cond_3a
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V

    goto :goto_39
.end method

.method public updateMailbox(JJZ)V
    .registers 14
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 1169
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller:updateMailbox() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [updateMailbox] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1175
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox | Airplane mode ON accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1200
    :goto_72
    return-void

    .line 1186
    :cond_73
    cmp-long v0, p1, v3

    if-lez v0, :cond_7b

    cmp-long v0, p3, v3

    if-gtz v0, :cond_ac

    .line 1187
    :cond_7b
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_72

    .line 1197
    :cond_ac
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailbox(JJZ)V

    goto :goto_72
.end method

.method public updateMailboxList(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 640
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 667
    :goto_2d
    return-void

    .line 650
    :cond_2e
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3a

    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_5f

    .line 651
    :cond_3a
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_2d

    .line 662
    :cond_5f
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [updateMailboxList] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailboxList(J)V

    goto :goto_2d
.end method

.method public updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 6832
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6833
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateUserprofile][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[SncProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6836
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 6837
    const-string v1, "EVENT@CONTR"

    const-string v2, "updateUserProfile | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6838
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6840
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6841
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller$ServiceCallback;->updateUserProfileStatus(Landroid/os/Bundle;)V

    .line 6850
    :goto_60
    return-void

    .line 6845
    :cond_61
    new-instance v0, Lcom/android/email/Controller$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$23;-><init>(Lcom/android/email/Controller;ILcom/android/email/syncnconnect/utils/SncProfile;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_60
.end method
