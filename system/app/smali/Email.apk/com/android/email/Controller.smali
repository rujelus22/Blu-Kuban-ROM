.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ControllerService;,
        Lcom/android/email/Controller$ServiceCallbackWrapper;,
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$MessageRetrievalListenerBridge;,
        Lcom/android/email/Controller$Result;
    }
.end annotation


# static fields
.field private static final BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

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

.field private static final sSearchParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailcommon/service/SearchParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private final mContext:Landroid/content/Context;

.field private volatile mInUnitTests:Z

.field private final mLegacyController:Lcom/android/email/MessagingController;

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

.field private mProviderContext:Landroid/content/Context;

.field private final mServiceCallback:Lcom/android/email/Controller$ServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 104
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    .line 962
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sSearchParamsMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "_context"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 82
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/Controller;->mInUnitTests:Z

    .line 1732
    new-instance v0, Lcom/android/email/Controller$15;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$15;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 123
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 125
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/Controller;J)Lcom/android/emailcommon/service/IEmailService;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/android/email/Controller;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/Controller;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/Controller;JLjava/lang/String;Z)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/Controller;JLandroid/content/ContentValues;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/Controller;->updateMessageSync(JLandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$900()Landroid/os/RemoteCallbackList;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private getExchangeEmailService()Lcom/android/emailcommon/service/IEmailService;
    .registers 3

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v0, v1}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method private getGlobalMailboxWhere(Ljava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 10
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 238
    .local v6, c:Landroid/database/Cursor;
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 239
    new-instance v7, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 240
    .local v7, m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_28

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    .end local v7           #m:Lcom/android/emailcommon/provider/Mailbox;
    :goto_22
    return-object v7

    .line 244
    :cond_23
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v4

    .line 246
    goto :goto_22

    .line 244
    :catchall_28
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .registers 3
    .parameter "_context"

    .prologue
    .line 151
    const-class v1, Lcom/android/email/Controller;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v0, :cond_e

    .line 152
    new-instance v0, Lcom/android/email/Controller;

    invoke-direct {v0, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 154
    :cond_e
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "mailboxType"

    .prologue
    .line 511
    const/4 v0, -0x1

    .line 512
    .local v0, resId:I
    packed-switch p1, :pswitch_data_28

    .line 532
    :goto_4
    :pswitch_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    return-object v1

    .line 514
    :pswitch_c
    const v0, 0x7f080036

    .line 515
    goto :goto_4

    .line 517
    :pswitch_10
    const v0, 0x7f080037

    .line 518
    goto :goto_4

    .line 520
    :pswitch_14
    const v0, 0x7f080038

    .line 521
    goto :goto_4

    .line 523
    :pswitch_18
    const v0, 0x7f080039

    .line 524
    goto :goto_4

    .line 526
    :pswitch_1c
    const v0, 0x7f08003a

    .line 527
    goto :goto_4

    .line 529
    :pswitch_20
    const v0, 0x7f08003b

    goto :goto_4

    .line 532
    :cond_24
    const-string v1, ""

    goto :goto_b

    .line 512
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_14
        :pswitch_10
        :pswitch_1c
        :pswitch_18
        :pswitch_20
    .end packed-switch
.end method

.method private getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;
    .registers 4
    .parameter "accountId"

    .prologue
    .line 1104
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1105
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/android/email/Controller;->getExchangeEmailService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    goto :goto_7
.end method

.method private getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;
    .registers 6
    .parameter "messageId"

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1091
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_a

    .line 1092
    const/4 v1, 0x0

    .line 1094
    :goto_9
    return-object v1

    :cond_a
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    goto :goto_9
.end method

.method public static declared-synchronized injectMockControllerForTest(Lcom/android/email/Controller;)V
    .registers 3
    .parameter "mockController"

    .prologue
    .line 163
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 164
    monitor-exit v0

    return-void

    .line 163
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookupAccountForMessage(J)J
    .registers 11
    .parameter "messageId"

    .prologue
    const/4 v4, 0x1

    .line 721
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
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

    .line 726
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

    .line 730
    :goto_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 726
    :cond_2a
    const-wide/16 v1, -0x1

    goto :goto_26

    .line 730
    :catchall_2d
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private sendPendingMessagesSmtp(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 598
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 600
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_9

    .line 609
    :goto_8
    return-void

    .line 603
    :cond_9
    const/4 v3, 0x5

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 604
    .local v1, sentboxId:J
    new-instance v3, Lcom/android/email/Controller$5;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;Lcom/android/emailcommon/provider/Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_8
.end method

.method private setMessageBooleanSync(JLjava/lang/String;Z)V
    .registers 7
    .parameter "messageId"
    .parameter "columnName"
    .parameter "columnValue"

    .prologue
    .line 956
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 957
    .local v0, cv:Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 958
    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/Controller;->updateMessageSync(JLandroid/content/ContentValues;)V

    .line 959
    return-void
.end method

.method private updateMessageSync(JLandroid/content/ContentValues;)V
    .registers 9
    .parameter "messageId"
    .parameter "cv"

    .prologue
    const/4 v4, 0x0

    .line 889
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 890
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, p3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 893
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 894
    .local v0, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1d

    .line 898
    :cond_1c
    :goto_1c
    return-void

    .line 895
    :cond_1d
    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 896
    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    invoke-virtual {v3, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    goto :goto_1c
.end method


# virtual methods
.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public cleanupForTest()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 145
    return-void
.end method

.method createMailbox(JI)J
    .registers 8
    .parameter "accountId"
    .parameter "mailboxType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 541
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_8

    if-gez p3, :cond_30

    .line 542
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

    .line 543
    .local v1, mes:Ljava/lang/String;
    const-string v2, "Email"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    .end local v1           #mes:Ljava/lang/String;
    :cond_30
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/email/Controller;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, p3, v2}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(JILjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 548
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 549
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    return-wide v2
.end method

.method public deleteAccount(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 1134
    new-instance v0, Lcom/android/email/Controller$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1140
    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .registers 10
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 1147
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1150
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_10

    .line 1175
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_f
    :goto_f
    return-void

    .line 1155
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V

    .line 1158
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1159
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1162
    iget-boolean v3, p0, Lcom/android/email/Controller;->mInUnitTests:Z

    if-nez v3, :cond_f

    .line 1167
    invoke-static {p3}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 1168
    invoke-static {p3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 1169
    invoke-static {p3}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 1170
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 1171
    invoke-static {p3}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_f

    .line 1172
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_3b
    move-exception v1

    .line 1173
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Email"

    const-string v4, "Exception while deleting account"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public deleteAttachment(J)V
    .registers 7
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 739
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 741
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method public deleteAttachmentMessages()V
    .registers 10

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 214
    .local v6, c:Landroid/database/Cursor;
    :try_start_7
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    :goto_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 217
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 219
    .local v7, mailboxId:J
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 221
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

    .line 225
    .end local v7           #mailboxId:J
    :catchall_37
    move-exception v1

    if-eqz v6, :cond_3d

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v1

    .line 225
    :cond_3e
    if-eqz v6, :cond_43

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_43
    return-void
.end method

.method public deleteMessage(J)V
    .registers 4
    .parameter "messageId"

    .prologue
    .line 748
    new-instance v0, Lcom/android/email/Controller$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 753
    return-void
.end method

.method deleteMessageSync(J)V
    .registers 14
    .parameter "messageId"

    .prologue
    const/4 v10, 0x0

    .line 782
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 784
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_a

    .line 816
    :cond_9
    :goto_9
    return-void

    .line 787
    :cond_a
    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v9, 0x6

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    .line 790
    .local v4, trashMailboxId:J
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 792
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_9

    .line 795
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8, v9, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 798
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 800
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 803
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-wide v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_37

    iget v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_48

    .line 805
    :cond_37
    invoke-virtual {v3, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/Account;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 814
    iget-object v7, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    goto :goto_9

    .line 808
    :cond_48
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "mailboxKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 810
    invoke-virtual {v3, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public deleteMessages([J)V
    .registers 3
    .parameter "messageIds"

    .prologue
    .line 759
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_b

    .line 760
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 762
    :cond_b
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;[J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 769
    return-void
.end method

.method public deleteSyncedDataSync(J)V
    .registers 8
    .parameter

    .prologue
    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 1198
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1199
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1200
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? AND type!=68"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1203
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1206
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1207
    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1208
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id =?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1209
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1210
    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1211
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1215
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 1216
    if-eqz v0, :cond_4c

    .line 1217
    invoke-interface {v0, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 1222
    :cond_4c
    :goto_4c
    return-void

    .line 1219
    :catch_4d
    move-exception v0

    .line 1220
    const-string v1, "Email"

    const-string v2, "Exception while deleting account synced data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c
.end method

.method public declared-synchronized findOrCreateMailboxOfType(JI)J
    .registers 10
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v2, -0x1

    .line 497
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_b

    if-gez p3, :cond_e

    :cond_b
    move-wide v0, v2

    .line 502
    :cond_c
    :goto_c
    monitor-exit p0

    return-wide v0

    .line 500
    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 502
    .local v0, mailboxId:J
    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1d

    move-result-wide v0

    goto :goto_c

    .line 497
    .end local v0           #mailboxId:J
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAttachmentMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .registers 4

    .prologue
    .line 255
    const-string v1, "type=257"

    invoke-direct {p0, v1}, Lcom/android/email/Controller;->getGlobalMailboxWhere(Ljava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 256
    .local v0, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_28

    .line 257
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 258
    .restart local v0       #m:Lcom/android/emailcommon/provider/Mailbox;
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 259
    const-string v1, "__attachment_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 261
    const-string v1, "__attachment_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 262
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 263
    const/16 v1, 0x101

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 264
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 266
    :cond_28
    return-object v0
.end method

.method public getResultCallbacksForTest()Ljava/util/Collection;
    .registers 2
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
    .line 203
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;
    .registers 6
    .parameter "accountId"

    .prologue
    const/16 v2, 0x8

    .line 274
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 275
    .local v0, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_2c

    .line 276
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 277
    .restart local v0       #m:Lcom/android/emailcommon/provider/Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 278
    const-string v1, "__search_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 280
    const-string v1, "__search_mailbox__"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 281
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 282
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 283
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 284
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 285
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 287
    :cond_2c
    return-object v0
.end method

.method public isMessagingController(J)Z
    .registers 7
    .parameter "accountId"

    .prologue
    .line 1121
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1122
    .local v0, isLegacyController:Ljava/lang/Boolean;
    if-nez v0, :cond_32

    .line 1123
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, protocol:Ljava/lang/String;
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_24
    const/4 v2, 0x1

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1125
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .end local v1           #protocol:Ljava/lang/String;
    :cond_32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1124
    .restart local v1       #protocol:Ljava/lang/String;
    :cond_37
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public isMessagingController(Lcom/android/emailcommon/provider/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 1116
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 1117
    :goto_3
    return v0

    :cond_4
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    goto :goto_3
.end method

.method public loadAttachment(JJJ)V
    .registers 20
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    .line 1058
    .local v9, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v9, :cond_9

    .line 1080
    :goto_8
    return-void

    .line 1062
    :cond_9
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1065
    iget-object v12, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v12

    .line 1066
    :try_start_14
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1067
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v8, 0x0

    move-wide/from16 v2, p5

    move-wide/from16 v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1a

    .line 1072
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_31
    move-exception v1

    monitor-exit v12
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_31

    throw v1

    .line 1069
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1070
    .restart local v0       #listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v8, 0x64

    move-wide/from16 v2, p5

    move-wide/from16 v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_3a

    .line 1072
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :cond_52
    monitor-exit v12
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_31

    goto :goto_8

    .line 1077
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_54
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v9, v1, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_8
.end method

.method public loadMessageForView(J)V
    .registers 15
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v9

    .line 445
    .local v9, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v9, :cond_54

    .line 448
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 449
    .local v10, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v7, cv:Landroid/content/ContentValues;
    const-string v1, "flagLoaded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v10, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    const-string v1, "Email"

    const-string v4, "Unexpected loadMessageForView() for service-based message."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 454
    .local v2, accountId:J
    iget-object v11, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v11

    .line 455
    :try_start_35
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 456
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_3b

    .line 458
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_4f
    move-exception v1

    monitor-exit v11
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_4f

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_52
    :try_start_52
    monitor-exit v11
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    .line 467
    .end local v2           #accountId:J
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_53
    return-void

    .line 461
    :cond_54
    new-instance v1, Lcom/android/email/Controller$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_53
.end method

.method public loadMessageFromUri(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/email/Controller;->getAttachmentMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 297
    .local v7, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v7, :cond_9

    move-object v2, v8

    .line 320
    :goto_8
    return-object v2

    .line 299
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_12} :catch_55

    move-result-object v6

    .line 302
    .local v6, is:Ljava/io/InputStream;
    :try_start_13
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__attachment_message__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 304
    .local v1, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    .line 306
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 307
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-wide/16 v2, 0x0

    iget-wide v4, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 309
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 311
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V

    .line 314
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_53
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_13 .. :try_end_53} :catch_5a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_53} :catch_58
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_53} :catch_55

    move-result-object v2

    goto :goto_8

    .line 318
    .end local v0           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v1           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v6           #is:Ljava/io/InputStream;
    :catch_55
    move-exception v2

    :goto_56
    move-object v2, v8

    .line 320
    goto :goto_8

    .line 316
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_58
    move-exception v2

    goto :goto_56

    .line 315
    :catch_5a
    move-exception v2

    goto :goto_56
.end method

.method public loadMoreMessages(J)V
    .registers 4
    .parameter "mailboxId"

    .prologue
    .line 684
    new-instance v0, Lcom/android/email/Controller$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$7;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 714
    return-void
.end method

.method public markForTest(Z)V
    .registers 2
    .parameter "inUnitTests"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/email/Controller;->mInUnitTests:Z

    .line 135
    return-void
.end method

.method public moveMessages([JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .registers 5
    .parameter "messageIds"
    .parameter "newMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JJ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_b

    .line 834
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 836
    :cond_b
    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 197
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public resetVisibleLimits()V
    .registers 2

    .prologue
    .line 648
    new-instance v0, Lcom/android/email/Controller$6;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 675
    return-void
.end method

.method public saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 8
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 478
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 479
    .local v0, accountId:J
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 480
    .local v2, mailboxId:J
    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 481
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 482
    return-void
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;)I
    .registers 22
    .parameter "accountId"
    .parameter "searchParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 981
    invoke-virtual/range {p0 .. p2}, Lcom/android/email/Controller;->getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v17

    .line 982
    .local v17, searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v17, :cond_8

    const/4 v2, 0x0

    .line 1022
    :goto_7
    return v2

    .line 983
    :cond_8
    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 985
    .local v5, searchMailboxId:J
    sget-object v2, Lcom/android/email/Controller;->sSearchParamsMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-nez v2, :cond_5b

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 990
    .local v16, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 992
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 994
    .local v14, cv:Landroid/content/ContentValues;
    const-string v2, "displayName"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 999
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v16           #resolver:Landroid/content/ContentResolver;
    :cond_5b
    invoke-direct/range {p0 .. p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1000
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_74

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 1003
    :try_start_65
    invoke-interface/range {v1 .. v6}, Lcom/android/emailcommon/service/IEmailService;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_6a

    move-result v2

    goto :goto_7

    .line 1004
    :catch_6a
    move-exception v15

    .line 1007
    .local v15, e:Landroid/os/RemoteException;
    const-string v2, "searchMessages"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    const/4 v2, 0x0

    goto :goto_7

    .line 1012
    .end local v15           #e:Landroid/os/RemoteException;
    :cond_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v13

    .line 1013
    .local v13, actualMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v13, :cond_ad

    .line 1014
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find mailbox "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to search in with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1019
    :cond_ad
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_cd

    .line 1020
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_cd
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/email/MessagingController;->searchMailbox(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v2

    goto/16 :goto_7
.end method

.method public searchMore(J)V
    .registers 6
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 966
    sget-object v1, Lcom/android/email/Controller;->sSearchParamsMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    .line 967
    .local v0, params:Lcom/android/emailcommon/service/SearchParams;
    if-nez v0, :cond_f

    .line 970
    :goto_e
    return-void

    .line 968
    :cond_f
    iget v1, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 969
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/Controller;->searchMessages(JLcom/android/emailcommon/service/SearchParams;)I

    goto :goto_e
.end method

.method public sendMeetingResponse(JI)V
    .registers 8
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 1034
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1035
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_9

    .line 1038
    :try_start_6
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1045
    :cond_9
    :goto_9
    return-void

    .line 1039
    :catch_a
    move-exception v0

    .line 1042
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onDownloadAttachment"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public sendMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 18
    .parameter "message"

    .prologue
    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 563
    .local v10, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 564
    .local v1, accountId:J
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 565
    .local v6, messageId:J
    const-wide/16 v14, -0x1

    cmp-long v14, v1, v14

    if-nez v14, :cond_1c

    .line 566
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v1

    .line 568
    :cond_1c
    const-wide/16 v14, -0x1

    cmp-long v14, v1, v14

    if-nez v14, :cond_3d

    .line 570
    sget-boolean v14, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v14, :cond_3c

    .line 571
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no account found for message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 594
    :cond_3c
    :goto_3c
    return-void

    .line 577
    :cond_3d
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v8

    .line 578
    .local v8, outboxId:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v3, cv:Landroid/content/ContentValues;
    const-string v14, "mailboxKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 583
    .local v13, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v3, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 587
    .local v11, sourceKey:J
    const-wide/16 v14, -0x1

    cmp-long v14, v11, v14

    if-eqz v14, :cond_79

    .line 588
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_7f

    const/4 v5, 0x1

    .line 589
    .local v5, isReply:Z
    :goto_70
    if-eqz v5, :cond_81

    const/high16 v4, 0x4

    .line 590
    .local v4, flagUpdate:I
    :goto_74
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/email/Controller;->setMessageAnsweredOrForwarded(JI)V

    .line 593
    .end local v4           #flagUpdate:I
    .end local v5           #isReply:Z
    :cond_79
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->sendPendingMessages(J)V

    goto :goto_3c

    .line 588
    :cond_7f
    const/4 v5, 0x0

    goto :goto_70

    .line 589
    .restart local v5       #isReply:Z
    :cond_81
    const/high16 v4, 0x8

    goto :goto_74
.end method

.method public sendPendingMessages(J)V
    .registers 10
    .parameter "accountId"

    .prologue
    .line 618
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, p1, p2, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 620
    .local v1, outboxId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_e

    .line 639
    :goto_d
    return-void

    .line 625
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v3

    .line 626
    .local v3, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v3, :cond_33

    .line 629
    const/4 v4, 0x0

    :try_start_15
    invoke-interface {v3, v1, v2, v4}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_d

    .line 630
    :catch_19
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "updateMailbox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 637
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->sendPendingMessagesSmtp(J)V

    goto :goto_d
.end method

.method public serviceCheckMail(JJJ)V
    .registers 16
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v8

    .line 372
    .local v8, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v8, :cond_11

    .line 378
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$LegacyListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 392
    :goto_10
    return-void

    .line 386
    :cond_11
    new-instance v0, Lcom/android/email/Controller$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_10
.end method

.method public serviceLogging(I)V
    .registers 7
    .parameter "debugFlags"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 331
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    :try_start_8
    invoke-interface {v1, p1}, Lcom/android/emailcommon/service/IEmailService;->setLogging(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 337
    :goto_b
    return-void

    .line 332
    :catch_c
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "setLogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public setMessageAnsweredOrForwarded(JI)V
    .registers 5
    .parameter "messageId"
    .parameter "flag"

    .prologue
    .line 908
    new-instance v0, Lcom/android/email/Controller$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 920
    return-void
.end method

.method public setMessageFavorite(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .registers 5
    .parameter "messageId"
    .parameter "isFavorite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    new-instance v0, Lcom/android/email/Controller$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;JZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageFavoriteSync(JZ)V
    .registers 5
    .parameter "messageId"
    .parameter "isFavorite"

    .prologue
    .line 945
    const-string v0, "flagFavorite"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V

    .line 946
    return-void
.end method

.method public setMessageRead(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .registers 5
    .parameter "messageId"
    .parameter "isRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v0, Lcom/android/email/Controller$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;JZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageReadSync(JZ)V
    .registers 5
    .parameter "messageId"
    .parameter "isRead"

    .prologue
    .line 863
    const-string v0, "flagRead"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V

    .line 864
    return-void
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .registers 2
    .parameter "providerContext"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 173
    return-void
.end method

.method public updateMailbox(JJZ)V
    .registers 14
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v7

    .line 404
    .local v7, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v7, :cond_24

    .line 406
    :try_start_6
    invoke-interface {v7, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 429
    :goto_9
    return-void

    .line 407
    :catch_a
    move-exception v6

    .line 410
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "updateMailbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 414
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_24
    new-instance v0, Lcom/android/email/Controller$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_9
.end method

.method public updateMailboxList(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 343
    new-instance v0, Lcom/android/email/Controller$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method
