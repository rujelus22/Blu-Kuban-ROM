.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$SyncResults;,
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$SortableMessage;,
        Lcom/android/email/MessagingController$LocalMessageInfo;
    }
.end annotation


# static fields
.field private static final FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static final MAILBOX_PROJECTION:[Ljava/lang/String;

.field private static final PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static sInstance:Lcom/android/email/MessagingController;

.field private static final sSearchResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/android/email/MessagingController$SortableMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBusy:Z

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mLastSearchAccountKey:J

.field private mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mLastSearchServerId:Ljava/lang/String;

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    .line 107
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    .line 108
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->sSearchResults:Ljava/util/HashMap;

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 125
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 228
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController;->MAILBOX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;)V
    .registers 6
    .parameter "_context"
    .parameter "_controller"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 135
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/MessagingController;->mLastSearchAccountKey:J

    .line 145
    iput-object v2, p0, Lcom/android/email/MessagingController;->mLastSearchServerId:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/android/email/MessagingController;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    .line 151
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/email/MessagingController;->MAILBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .registers 4
    .parameter "_context"
    .parameter "_controller"

    .prologue
    .line 161
    const-class v1, Lcom/android/email/MessagingController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    if-nez v0, :cond_e

    .line 162
    new-instance v0, Lcom/android/email/MessagingController;

    invoke-direct {v0, p0, p1}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 164
    :cond_e
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 15
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 1112
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1113
    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1114
    .local v6, accountKey:J
    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1115
    .local v10, protocolSearchInfo:Ljava/lang/String;
    iget-wide v0, p0, Lcom/android/email/MessagingController;->mLastSearchAccountKey:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/MessagingController;->mLastSearchServerId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1117
    iget-object v9, p0, Lcom/android/email/MessagingController;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1138
    .end local v6           #accountKey:J
    .end local v10           #protocolSearchInfo:Ljava/lang/String;
    :goto_1d
    return-object v9

    .line 1119
    .restart local v6       #accountKey:J
    .restart local v10       #protocolSearchInfo:Ljava/lang/String;
    :cond_1e
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1124
    .local v8, c:Landroid/database/Cursor;
    :try_start_3b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1125
    new-instance v9, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 1126
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 1127
    iput-wide v6, p0, Lcom/android/email/MessagingController;->mLastSearchAccountKey:J

    .line 1128
    iput-object v10, p0, Lcom/android/email/MessagingController;->mLastSearchServerId:Ljava/lang/String;

    .line 1129
    iput-object v9, p0, Lcom/android/email/MessagingController;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_58

    .line 1135
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    .end local v9           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v9, v5

    goto :goto_1d

    :catchall_58
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1138
    .end local v6           #accountKey:J
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #protocolSearchInfo:Ljava/lang/String;
    :cond_5d
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    goto :goto_1d
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .registers 1
    .parameter "mockController"

    .prologue
    .line 171
    sput-object p0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 172
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V
    .registers 7
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1090
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1091
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1094
    .local v0, accountIdArgs:[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1097
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .registers 14
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

    const/4 v1, 0x1

    .line 1722
    .line 1727
    iget-object v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 1728
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_62

    .line 1729
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 1732
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_57

    .line 1733
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1734
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1736
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1737
    const-string v3, "syncServerId"

    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1836
    :cond_57
    :goto_57
    return v1

    .line 1742
    :cond_58
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v2

    if-nez v2, :cond_62

    move v1, v0

    .line 1744
    goto :goto_57

    .line 1747
    :cond_62
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1748
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_71

    move v1, v0

    .line 1749
    goto :goto_57

    .line 1754
    :cond_71
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_15d

    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15d

    .line 1755
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1759
    :goto_83
    if-nez v2, :cond_eb

    .line 1761
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1764
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1765
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1766
    new-array v3, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v2, v3, v0

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 1769
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v2, v0

    move v3, v1

    move v0, v1

    .line 1807
    :goto_a5
    if-eqz v3, :cond_d2

    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_d2

    .line 1809
    :try_start_ab
    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v3

    .line 1810
    if-eqz v3, :cond_d2

    .line 1811
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1812
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1813
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1814
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_d1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_ab .. :try_end_d1} :catch_15a

    move v0, v1

    .line 1823
    :cond_d2
    :goto_d2
    if-nez v2, :cond_d6

    if-eqz v0, :cond_57

    .line 1824
    :cond_d6
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1825
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1826
    if-eqz v2, :cond_13c

    .line 1827
    invoke-virtual {v5, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_57

    .line 1774
    :cond_eb
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1775
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1776
    new-array v6, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v2, v6, v0

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1777
    new-instance v6, Ljava/util/Date;

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1778
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v7

    .line 1779
    if-eqz v7, :cond_112

    invoke-virtual {v7, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-lez v6, :cond_112

    move v2, v1

    move v3, v0

    .line 1783
    goto :goto_a5

    .line 1788
    :cond_112
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v6, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 1791
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1792
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1793
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1794
    new-array v3, v1, [Lcom/android/emailcommon/mail/Message;

    aput-object v6, v3, v0

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 1797
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1802
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v2, v0

    move v3, v1

    move v0, v1

    goto/16 :goto_a5

    .line 1828
    :cond_13c
    if-eqz v0, :cond_57

    .line 1829
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1830
    const-string v2, "syncServerId"

    iget-object v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string v2, "syncServerTimeStamp"

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1832
    invoke-virtual {v5, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_57

    .line 1817
    :catch_15a
    move-exception v3

    goto/16 :goto_d2

    :cond_15d
    move-object v2, v4

    goto/16 :goto_83
.end method

.method private processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 15
    .parameter
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
    .line 1466
    .line 1468
    invoke-direct {p0, p7}, Lcom/android/email/MessagingController;->getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1471
    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, "Local-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    if-nez v0, :cond_1f

    .line 1543
    :cond_1e
    :goto_1e
    return-void

    .line 1477
    :cond_1f
    iget v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    iget v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1e

    .line 1482
    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 1483
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1486
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1487
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-ne v0, v2, :cond_1e

    .line 1492
    iget-object v0, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1493
    if-eqz v2, :cond_1e

    .line 1496
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_9e

    .line 1497
    const-string v3, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update for msg id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " read="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " flagged="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " answered="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v5, 0x4

    and-int/2addr v0, v5

    if-eqz v0, :cond_ef

    const/4 v0, 0x1

    :goto_87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " new mailbox="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_9e
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/android/emailcommon/mail/Message;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    .line 1506
    if-eqz p3, :cond_ad

    .line 1507
    sget-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1509
    :cond_ad
    if-eqz p4, :cond_b6

    .line 1510
    sget-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1512
    :cond_b6
    if-eqz p6, :cond_c5

    .line 1513
    sget-object v4, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    iget v0, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v5, 0x4

    and-int/2addr v0, v5

    if-eqz v0, :cond_f1

    const/4 v0, 0x1

    :goto_c2
    invoke-virtual {v1, v3, v4, v0}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1516
    :cond_c5
    if-eqz p5, :cond_e9

    .line 1517
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 1518
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1522
    iget-object v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/mail/Message;->setMessageId(Ljava/lang/String;)V

    .line 1524
    new-instance v4, Lcom/android/email/MessagingController$8;

    invoke-direct {v4, p0, p8}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1539
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1540
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1542
    :cond_e9
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1e

    .line 1497
    :cond_ef
    const/4 v0, 0x0

    goto :goto_87

    .line 1513
    :cond_f1
    const/4 v0, 0x0

    goto :goto_c2
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
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

    .line 1678
    iget v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    .line 1705
    :cond_6
    :goto_6
    return-void

    .line 1683
    :cond_7
    iget-object v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 1684
    .local v1, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1688
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1689
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_24

    .line 1690
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_6

    .line 1695
    :cond_24
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 1696
    .local v0, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v0, :cond_30

    .line 1697
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_6

    .line 1702
    :cond_30
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1703
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1704
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_6
.end method

.method private processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1152
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    const-string v5, "mailboxKey"

    move-object v0, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1156
    const-wide/16 v1, -0x1

    move-object v4, v6

    .line 1161
    :cond_12
    :goto_12
    :try_start_12
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1164
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v5, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1167
    if-eqz v0, :cond_3f

    .line 1168
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1170
    invoke-direct {p0, v0}, Lcom/android/email/MessagingController;->getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 1171
    if-eqz v6, :cond_12

    .line 1174
    iget v3, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v7, 0x6

    if-ne v3, v7, :cond_4f

    const/4 v3, 0x1

    .line 1177
    :goto_30
    if-nez v4, :cond_3a

    if-eqz v3, :cond_3a

    .line 1178
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 1182
    :cond_3a
    if-eqz v3, :cond_3f

    .line 1184
    invoke-direct {p0, v4, p1, v6, v0}, Lcom/android/email/MessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    :cond_3f
    move-object v3, v4

    .line 1189
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1191
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_80
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_12 .. :try_end_4d} :catch_55

    move-object v4, v3

    .line 1192
    goto :goto_12

    .line 1174
    :cond_4f
    const/4 v3, 0x0

    goto :goto_30

    .line 1201
    :cond_51
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1203
    :goto_54
    return-void

    .line 1193
    :catch_55
    move-exception v0

    .line 1196
    :try_start_56
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_7c

    .line 1197
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending delete for id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_56 .. :try_end_7c} :catchall_80

    .line 1201
    :cond_7c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_54

    :catchall_80
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1559
    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1663
    :cond_1a
    :goto_1a
    return-void

    .line 1566
    :cond_1b
    invoke-direct {p0, p4}, Lcom/android/email/MessagingController;->getRemoteMailboxForMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1567
    if-eqz v0, :cond_1a

    .line 1572
    iget v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1a

    .line 1582
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v1

    if-nez v1, :cond_48

    .line 1583
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1584
    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1585
    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1586
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1587
    iput-boolean v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1588
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1589
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_1a

    .line 1597
    :cond_48
    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 1598
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1602
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1603
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_65

    .line 1604
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1a

    .line 1609
    :cond_65
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    .line 1610
    if-nez v1, :cond_71

    .line 1611
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1a

    .line 1616
    :cond_71
    iget-object v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 1617
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_82

    .line 1621
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 1626
    :cond_82
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1630
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1631
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_9d

    .line 1632
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1633
    invoke-virtual {v2, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1a

    .line 1637
    :cond_9d
    new-array v3, v6, [Lcom/android/emailcommon/mail/Message;

    aput-object v1, v3, v5

    new-instance v4, Lcom/android/email/MessagingController$9;

    invoke-direct {v4, p0, p5}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1656
    invoke-virtual {v2, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1660
    :cond_ac
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1, v2, v6}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1661
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1662
    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1a
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 24
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1322
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1326
    const-wide/16 v17, -0x1

    .line 1329
    const/4 v3, 0x0

    .line 1331
    const/4 v5, 0x0

    move-object v8, v3

    move-wide/from16 v3, v17

    .line 1333
    :goto_17
    :try_start_17
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 1334
    const/4 v2, 0x0

    .line 1335
    const/4 v11, 0x0

    .line 1336
    const/4 v12, 0x0

    .line 1337
    const/4 v13, 0x0

    .line 1338
    const/4 v14, 0x0

    .line 1340
    const-class v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1342
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v17, v0
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_f8
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_17 .. :try_end_30} :catch_fd

    .line 1343
    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 1345
    if-eqz v7, :cond_77

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 1347
    if-nez v5, :cond_4b

    move-wide/from16 v3, v17

    .line 1348
    goto :goto_17

    .line 1350
    :cond_4b
    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v9, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_101

    .line 1351
    iget v3, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_ab

    .line 1352
    const/4 v2, 0x1

    move v3, v2

    .line 1357
    :goto_5a
    iget-boolean v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v2, v4, :cond_ae

    const/4 v11, 0x1

    .line 1358
    :goto_61
    iget-boolean v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v2, v4, :cond_b0

    const/4 v12, 0x1

    .line 1359
    :goto_68
    iget v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v4, 0x4

    and-int/2addr v2, v4

    iget v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x4

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_b2

    const/4 v2, 0x1

    :goto_75
    move v14, v2

    move v2, v3

    .line 1364
    :cond_77
    if-nez v8, :cond_ff

    if-nez v2, :cond_83

    if-nez v11, :cond_83

    if-nez v12, :cond_83

    if-nez v13, :cond_83

    if-eqz v14, :cond_ff

    .line 1367
    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v8

    move-object v3, v8

    .line 1371
    :goto_8e
    if-eqz v2, :cond_b4

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 1373
    invoke-direct/range {v2 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1381
    :cond_97
    :goto_97
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1383
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v8, v3

    move-wide/from16 v3, v17

    .line 1384
    goto/16 :goto_17

    .line 1354
    :cond_ab
    const/4 v13, 0x1

    move v3, v2

    goto :goto_5a

    .line 1357
    :cond_ae
    const/4 v11, 0x0

    goto :goto_61

    .line 1358
    :cond_b0
    const/4 v12, 0x0

    goto :goto_68

    .line 1359
    :cond_b2
    const/4 v2, 0x0

    goto :goto_75

    .line 1375
    :cond_b4
    if-nez v11, :cond_bc

    if-nez v12, :cond_bc

    if-nez v13, :cond_bc

    if-eqz v14, :cond_97

    :cond_bc
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v5

    move-object v15, v6

    move-object/from16 v16, v7

    .line 1376
    invoke-direct/range {v8 .. v16}, Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_c6
    .catchall {:try_start_30 .. :try_end_c6} :catchall_f8
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_30 .. :try_end_c6} :catch_c7

    goto :goto_97

    .line 1386
    :catch_c7
    move-exception v2

    move-wide/from16 v3, v17

    .line 1389
    :goto_ca
    :try_start_ca
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_f0

    .line 1390
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending update for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_ca .. :try_end_f0} :catchall_f8

    .line 1394
    :cond_f0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1396
    :goto_f3
    return-void

    .line 1394
    :cond_f4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_f3

    :catchall_f8
    move-exception v2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1386
    :catch_fd
    move-exception v2

    goto :goto_ca

    :cond_ff
    move-object v3, v8

    goto :goto_8e

    :cond_101
    move v3, v2

    goto/16 :goto_5a
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1223
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? and type=5"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1227
    const-wide/16 v7, -0x1

    .line 1230
    const/4 v1, 0x0

    move-object v9, v1

    .line 1231
    :goto_13
    :try_start_13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 1232
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1233
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    .line 1235
    const/4 v10, 0x0

    .line 1238
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_105
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_13 .. :try_end_36} :catch_112

    move-result-object v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 1246
    :goto_3c
    :try_start_3c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1248
    if-nez v10, :cond_118

    .line 1249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 1252
    :goto_4e
    if-nez v9, :cond_5d

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 1254
    if-nez v5, :cond_5e

    move-object v9, v5

    move-object v10, v3

    .line 1255
    goto :goto_3c

    :cond_5d
    move-object v5, v9

    .line 1259
    :cond_5e
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_ac

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 1261
    :try_start_69
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_114

    move-object v9, v5

    move-object v10, v3

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 1262
    goto :goto_3c

    .line 1264
    :cond_73
    if-eqz v15, :cond_78

    .line 1265
    :try_start_75
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1270
    :cond_78
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_105
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_75 .. :try_end_85} :catch_112

    move-result-object v14

    move-object v5, v9

    move-object v1, v10

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    .line 1275
    :goto_8c
    :try_start_8c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 1277
    if-nez v1, :cond_116

    .line 1278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 1281
    :goto_9e
    if-nez v5, :cond_e2

    .line 1282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_a7
    .catchall {:try_start_8c .. :try_end_a7} :catchall_fe

    move-result-object v5

    .line 1283
    if-nez v5, :cond_e2

    move-object v1, v3

    .line 1284
    goto :goto_8c

    .line 1264
    :catchall_ac
    move-exception v1

    move-wide v6, v7

    :goto_ae
    if-eqz v15, :cond_b3

    .line 1265
    :try_start_b0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_b3
    throw v1
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_105
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b0 .. :try_end_b4} :catch_b4

    .line 1298
    :catch_b4
    move-exception v1

    move-wide v7, v6

    .line 1301
    :goto_b6
    :try_start_b6
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_dc

    .line 1302
    const-string v2, "Email"

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
    :try_end_dc
    .catchall {:try_start_b6 .. :try_end_dc} :catchall_105

    .line 1306
    :cond_dc
    if-eqz v11, :cond_e1

    .line 1307
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1310
    :cond_e1
    :goto_e1
    return-void

    .line 1288
    :cond_e2
    const/4 v1, 0x0

    :try_start_e3
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 1290
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    :try_end_f0
    .catchall {:try_start_e3 .. :try_end_f0} :catchall_fe

    move-object v1, v3

    .line 1291
    goto :goto_8c

    .line 1293
    :cond_f2
    if-eqz v14, :cond_f7

    .line 1294
    :try_start_f4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_f7
    move-object v9, v1

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 1297
    goto/16 :goto_13

    .line 1293
    :catchall_fe
    move-exception v1

    if-eqz v14, :cond_104

    .line 1294
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_104
    throw v1
    :try_end_105
    .catchall {:try_start_f4 .. :try_end_105} :catchall_105
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f4 .. :try_end_105} :catch_b4

    .line 1306
    :catchall_105
    move-exception v1

    if-eqz v11, :cond_10b

    .line 1307
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10b
    throw v1

    .line 1306
    :cond_10c
    if-eqz v11, :cond_e1

    .line 1307
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_e1

    .line 1298
    :catch_112
    move-exception v1

    goto :goto_b6

    .line 1264
    :catchall_114
    move-exception v1

    goto :goto_ae

    :cond_116
    move-object v3, v1

    goto :goto_9e

    :cond_118
    move-object v3, v10

    goto/16 :goto_4e
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    .registers 14
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
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1419
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1422
    if-nez v1, :cond_2f

    .line 1423
    const/4 v0, 0x1

    .line 1424
    const-string v1, "Email"

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

    .line 1441
    :goto_23
    if-eqz v0, :cond_2e

    .line 1443
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1445
    invoke-virtual {p1, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1447
    :cond_2e
    return-void

    .line 1425
    :cond_2f
    iget v2, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 1427
    const-string v1, "Email"

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

    .line 1428
    :cond_4d
    iget v2, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6b

    .line 1430
    const-string v1, "Email"

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

    .line 1431
    :cond_6b
    iget v2, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_89

    .line 1433
    const-string v1, "Email"

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

    .line 1434
    :cond_89
    if-eqz v1, :cond_ad

    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v4, p4, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_ad

    .line 1436
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped; mailbox changed, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 1438
    :cond_ad
    const-string v0, "Email"

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

    .line 1439
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_23
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "description"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    .line 200
    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 201
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 202
    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 203
    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_11} :catch_12

    .line 209
    return-void

    .line 206
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_12
    move-exception v1

    .line 207
    .local v1, ie:Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .registers 4
    .parameter "content"
    .parameter "context"

    .prologue
    .line 425
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 426
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 430
    :goto_d
    return-void

    .line 428
    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_d
.end method

.method private searchMailboxImpl(JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 31
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 618
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 619
    .local v5, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p4

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 620
    .local v9, destMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v4, :cond_26

    if-eqz v5, :cond_26

    if-nez v9, :cond_49

    .line 621
    :cond_26
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted search for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " but account or mailbox information was missing"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/16 v17, 0x0

    .line 715
    :goto_48
    return v17

    .line 627
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, v9, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v6, v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v22

    .line 630
    .local v22, remoteStore:Lcom/android/email/mail/Store;
    iget-object v2, v5, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v20

    .line 631
    .local v20, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 633
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/android/email/MessagingController$SortableMessage;

    move-object/from16 v23, v0

    .line 634
    .local v23, sortableMessages:[Lcom/android/email/MessagingController$SortableMessage;
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-nez v2, :cond_dd

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v21

    .line 637
    .local v21, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v19, v0

    .line 638
    .local v19, remoteCount:I
    if-lez v19, :cond_c4

    .line 639
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/email/MessagingController$SortableMessage;

    move-object/from16 v23, v0

    .line 640
    const/4 v11, 0x0

    .line 641
    .local v11, i:I
    move-object/from16 v8, v21

    .local v8, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v14, v8

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v12, v11

    .end local v11           #i:I
    .local v12, i:I
    :goto_92
    if-ge v13, v14, :cond_ad

    aget-object v16, v8, v13

    .line 642
    .local v16, msg:Lcom/android/emailcommon/mail/Message;
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    new-instance v2, Lcom/android/email/MessagingController$SortableMessage;

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v6, v7}, Lcom/android/email/MessagingController$SortableMessage;-><init>(Lcom/android/emailcommon/mail/Message;J)V

    aput-object v2, v23, v12

    .line 641
    add-int/lit8 v13, v13, 0x1

    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_92

    .line 647
    .end local v16           #msg:Lcom/android/emailcommon/mail/Message;
    :cond_ad
    new-instance v2, Lcom/android/email/MessagingController$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;)V

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 653
    sget-object v2, Lcom/android/email/MessagingController;->sSearchResults:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .end local v8           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v19           #remoteCount:I
    .end local v21           #remoteMessages:[Lcom/android/emailcommon/mail/Message;
    :cond_c4
    :goto_c4
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v17, v0

    .line 660
    .local v17, numSearchResults:I
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    sub-int v2, v17, v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 662
    .local v18, numToLoad:I
    if-gtz v18, :cond_ea

    .line 663
    const/16 v17, 0x0

    goto/16 :goto_48

    .line 656
    .end local v17           #numSearchResults:I
    .end local v18           #numToLoad:I
    :cond_dd
    sget-object v2, Lcom/android/email/MessagingController;->sSearchResults:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sortableMessages:[Lcom/android/email/MessagingController$SortableMessage;
    check-cast v23, [Lcom/android/email/MessagingController$SortableMessage;

    .restart local v23       #sortableMessages:[Lcom/android/email/MessagingController$SortableMessage;
    goto :goto_c4

    .line 666
    .restart local v17       #numSearchResults:I
    .restart local v18       #numToLoad:I
    :cond_ea
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v15, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .restart local v11       #i:I
    :goto_f3
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    add-int v2, v2, v18

    if-ge v11, v2, :cond_107

    .line 668
    aget-object v2, v23, v11

    #getter for: Lcom/android/email/MessagingController$SortableMessage;->mMessage:Lcom/android/emailcommon/mail/Message;
    invoke-static {v2}, Lcom/android/email/MessagingController$SortableMessage;->access$700(Lcom/android/email/MessagingController$SortableMessage;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v11, v11, 0x1

    goto :goto_f3

    .line 672
    :cond_107
    new-instance v10, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v10}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 673
    .local v10, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 677
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, [Lcom/android/emailcommon/mail/Message;

    new-instance v2, Lcom/android/email/MessagingController$6;

    move-object/from16 v3, p0

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto/16 :goto_48
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/MessagingController$SyncResults;
    .registers 58
    .parameter "account"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v10, unseenMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "Email"

    const-string v5, "*** synchronizeMailboxGeneric ***"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 742
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_22

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3b

    .line 743
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v52

    invoke-static {v4, v5, v6, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v46

    .line 744
    .local v46, totalMessages:I
    new-instance v4, Lcom/android/email/MessagingController$SyncResults;

    move/from16 v0, v46

    invoke-direct {v4, v0, v10}, Lcom/android/email/MessagingController$SyncResults;-><init>(ILjava/util/ArrayList;)V

    .line 947
    .end local v46           #totalMessages:I
    :goto_3a
    return-object v4

    .line 749
    :cond_3b
    const/16 v25, 0x0

    .line 750
    .local v25, localUidCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v9, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :try_start_42
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController$LocalMessageInfo;->access$800()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v7, v0, [Ljava/lang/String;

    const/16 v52, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v7, v52

    const/16 v52, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v7, v52

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 763
    :goto_71
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 764
    new-instance v16, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 765
    .local v16, info:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_42 .. :try_end_89} :catchall_8a

    goto :goto_71

    .line 768
    .end local v16           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_8a
    move-exception v4

    if-eqz v25, :cond_90

    .line 769
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v4

    .line 768
    :cond_91
    if-eqz v25, :cond_96

    .line 769
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v40

    .line 777
    .local v40, remoteStore:Lcom/android/email/mail/Store;
    if-nez v40, :cond_a4

    const/4 v4, 0x0

    goto :goto_3a

    .line 778
    :cond_a4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    .line 787
    .local v7, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_c3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_c3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d9

    .line 789
    :cond_c3
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_d9

    .line 790
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_d9

    .line 791
    new-instance v4, Lcom/android/email/MessagingController$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v10}, Lcom/android/email/MessagingController$SyncResults;-><init>(ILjava/util/ArrayList;)V

    goto/16 :goto_3a

    .line 797
    :cond_d9
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 803
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v36

    .line 806
    .local v36, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    move/from16 v51, v0

    .line 807
    .local v51, visibleLimit:I
    if-gtz v51, :cond_ec

    .line 808
    const/16 v51, 0x19

    .line 812
    :cond_ec
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v37, v0

    .line 813
    .local v37, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v8, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v44, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    const/16 v30, 0x0

    .line 817
    .local v30, newMessageCount:I
    if-lez v36, :cond_157

    .line 821
    const/4 v4, 0x0

    sub-int v5, v36, v51

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v39, v4, 0x1

    .line 822
    .local v39, remoteStart:I
    move/from16 v33, v36

    .line 823
    .local v33, remoteEnd:I
    const/4 v4, 0x0

    move/from16 v0, v39

    move/from16 v1, v33

    invoke-virtual {v7, v0, v1, v4}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v37

    .line 825
    move-object/from16 v11, v37

    .local v11, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_119
    move/from16 v0, v18

    if-ge v15, v0, :cond_12d

    aget-object v27, v11, v15

    .line 826
    .local v27, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v27 .. v27}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    add-int/lit8 v15, v15, 0x1

    goto :goto_119

    .line 837
    .end local v27           #message:Lcom/android/emailcommon/mail/Message;
    :cond_12d
    move-object/from16 v11, v37

    array-length v0, v11

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_133
    move/from16 v0, v18

    if-ge v15, v0, :cond_157

    aget-object v27, v11, v15

    .line 838
    .restart local v27       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v27 .. v27}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 839
    .local v22, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v22, :cond_147

    .line 840
    add-int/lit8 v30, v30, 0x1

    .line 848
    :cond_147
    if-eqz v22, :cond_14f

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_154

    .line 850
    :cond_14f
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_154
    add-int/lit8 v15, v15, 0x1

    goto :goto_133

    .line 860
    .end local v11           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v22           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v27           #message:Lcom/android/emailcommon/mail/Message;
    .end local v33           #remoteEnd:I
    .end local v39           #remoteStart:I
    :cond_157
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_166

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 861
    invoke-virtual/range {v4 .. v10}, Lcom/android/email/MessagingController;->downloadFlagAndEnvelope(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 866
    :cond_166
    new-instance v14, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v14}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 867
    .local v14, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v14, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 868
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v7, v0, v14, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 869
    const/16 v43, 0x0

    .line 870
    .local v43, remoteSupportsSeen:Z
    const/16 v42, 0x0

    .line 871
    .local v42, remoteSupportsFlagged:Z
    const/16 v41, 0x0

    .line 872
    .local v41, remoteSupportsAnswered:Z
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v11

    .local v11, arr$:[Lcom/android/emailcommon/mail/Flag;
    array-length v0, v11

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_184
    move/from16 v0, v18

    if-ge v15, v0, :cond_19f

    aget-object v13, v11, v15

    .line 873
    .local v13, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v13, v4, :cond_190

    .line 874
    const/16 v43, 0x1

    .line 876
    :cond_190
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v13, v4, :cond_196

    .line 877
    const/16 v42, 0x1

    .line 879
    :cond_196
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v13, v4, :cond_19c

    .line 880
    const/16 v41, 0x1

    .line 872
    :cond_19c
    add-int/lit8 v15, v15, 0x1

    goto :goto_184

    .line 884
    .end local v13           #flag:Lcom/android/emailcommon/mail/Flag;
    :cond_19f
    if-nez v43, :cond_1a5

    if-nez v42, :cond_1a5

    if-eqz v41, :cond_26a

    .line 885
    :cond_1a5
    move-object/from16 v11, v37

    .local v11, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v11

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_1ab
    move/from16 v0, v18

    if-ge v15, v0, :cond_26a

    aget-object v35, v11, v15

    .line 886
    .local v35, remoteMessage:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v35 .. v35}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 887
    .local v23, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v23, :cond_1c0

    .line 885
    :cond_1bd
    :goto_1bd
    add-int/lit8 v15, v15, 0x1

    goto :goto_1ab

    .line 890
    :cond_1c0
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v24, v0

    .line 891
    .local v24, localSeen:Z
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v38

    .line 892
    .local v38, remoteSeen:Z
    if-eqz v43, :cond_257

    move/from16 v0, v38

    move/from16 v1, v24

    if-eq v0, v1, :cond_257

    const/16 v31, 0x1

    .line 893
    .local v31, newSeen:Z
    :goto_1d8
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v20, v0

    .line 894
    .local v20, localFlagged:Z
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v34

    .line 895
    .local v34, remoteFlagged:Z
    if-eqz v42, :cond_25b

    move/from16 v0, v20

    move/from16 v1, v34

    if-eq v0, v1, :cond_25b

    const/16 v29, 0x1

    .line 896
    .local v29, newFlagged:Z
    :goto_1f0
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlags:I

    move/from16 v21, v0

    .line 897
    .local v21, localFlags:I
    const/high16 v4, 0x4

    and-int v4, v4, v21

    if-eqz v4, :cond_25e

    const/16 v19, 0x1

    .line 898
    .local v19, localAnswered:Z
    :goto_1fe
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v32

    .line 899
    .local v32, remoteAnswered:Z
    if-eqz v41, :cond_261

    move/from16 v0, v19

    move/from16 v1, v32

    if-eq v0, v1, :cond_261

    const/16 v28, 0x1

    .line 900
    .local v28, newAnswered:Z
    :goto_210
    if-nez v31, :cond_216

    if-nez v29, :cond_216

    if-eqz v28, :cond_1bd

    .line 901
    :cond_216
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    .line 903
    .local v49, uri:Landroid/net/Uri;
    new-instance v48, Landroid/content/ContentValues;

    invoke-direct/range {v48 .. v48}, Landroid/content/ContentValues;-><init>()V

    .line 904
    .local v48, updateValues:Landroid/content/ContentValues;
    const-string v4, "flagRead"

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 905
    const-string v4, "flagFavorite"

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 906
    if-eqz v32, :cond_264

    .line 907
    const/high16 v4, 0x4

    or-int v21, v21, v4

    .line 911
    :goto_241
    const-string v4, "flags"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1bd

    .line 892
    .end local v19           #localAnswered:Z
    .end local v20           #localFlagged:Z
    .end local v21           #localFlags:I
    .end local v28           #newAnswered:Z
    .end local v29           #newFlagged:Z
    .end local v31           #newSeen:Z
    .end local v32           #remoteAnswered:Z
    .end local v34           #remoteFlagged:Z
    .end local v48           #updateValues:Landroid/content/ContentValues;
    .end local v49           #uri:Landroid/net/Uri;
    :cond_257
    const/16 v31, 0x0

    goto/16 :goto_1d8

    .line 895
    .restart local v20       #localFlagged:Z
    .restart local v31       #newSeen:Z
    .restart local v34       #remoteFlagged:Z
    :cond_25b
    const/16 v29, 0x0

    goto :goto_1f0

    .line 897
    .restart local v21       #localFlags:I
    .restart local v29       #newFlagged:Z
    :cond_25e
    const/16 v19, 0x0

    goto :goto_1fe

    .line 899
    .restart local v19       #localAnswered:Z
    .restart local v32       #remoteAnswered:Z
    :cond_261
    const/16 v28, 0x0

    goto :goto_210

    .line 909
    .restart local v28       #newAnswered:Z
    .restart local v48       #updateValues:Landroid/content/ContentValues;
    .restart local v49       #uri:Landroid/net/Uri;
    :cond_264
    const v4, -0x40001

    and-int v21, v21, v4

    goto :goto_241

    .line 918
    .end local v11           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v19           #localAnswered:Z
    .end local v20           #localFlagged:Z
    .end local v21           #localFlags:I
    .end local v23           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v24           #localSeen:Z
    .end local v28           #newAnswered:Z
    .end local v29           #newFlagged:Z
    .end local v31           #newSeen:Z
    .end local v32           #remoteAnswered:Z
    .end local v34           #remoteFlagged:Z
    .end local v35           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    .end local v38           #remoteSeen:Z
    .end local v48           #updateValues:Landroid/content/ContentValues;
    .end local v49           #uri:Landroid/net/Uri;
    :cond_26a
    new-instance v26, Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 919
    .local v26, localUidsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 920
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_282
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2db

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 921
    .local v47, uidToDelete:Ljava/lang/String;
    move-object/from16 v0, v47

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 925
    .local v17, infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 929
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v50

    .line 931
    .local v50, uriToDelete:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    .line 936
    .local v45, syncRowToDelete:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 937
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 939
    .local v12, deletERowToDelete:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v12, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_282

    .line 942
    .end local v12           #deletERowToDelete:Landroid/net/Uri;
    .end local v17           #infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v45           #syncRowToDelete:Landroid/net/Uri;
    .end local v47           #uidToDelete:Ljava/lang/String;
    .end local v50           #uriToDelete:Landroid/net/Uri;
    :cond_2db
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/android/email/MessagingController;->loadUnsyncedMessages(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 945
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 947
    new-instance v4, Lcom/android/email/MessagingController$SyncResults;

    move/from16 v0, v36

    invoke-direct {v4, v0, v10}, Lcom/android/email/MessagingController$SyncResults;-><init>(ILjava/util/ArrayList;)V

    goto/16 :goto_3a
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 13
    .parameter "account"
    .parameter "folder"

    .prologue
    const/4 v5, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 355
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 356
    iget v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_25

    .line 358
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    const/4 v7, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    .line 385
    :cond_24
    :goto_24
    return-void

    .line 361
    :cond_25
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 363
    .local v8, nc:Lcom/android/email/NotificationController;
    :try_start_2b
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/MessagingController$SyncResults;

    move-result-object v9

    .line 368
    .local v9, results:Lcom/android/email/MessagingController$SyncResults;
    if-eqz v9, :cond_24

    .line 369
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget v5, v9, Lcom/android/email/MessagingController$SyncResults;->mTotalMessages:I

    iget-object v6, v9, Lcom/android/email/MessagingController$SyncResults;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v9, Lcom/android/email/MessagingController$SyncResults;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    .line 374
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_4c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2b .. :try_end_4c} :catch_4d

    goto :goto_24

    .line 375
    .end local v9           #results:Lcom/android/email/MessagingController$SyncResults;
    :catch_4d
    move-exception v5

    .line 376
    .local v5, e:Lcom/android/emailcommon/mail/MessagingException;
    sget-boolean v0, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v0, :cond_59

    .line 377
    const-string v0, "Email"

    const-string v1, "synchronizeMailbox"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    :cond_59
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_62

    .line 381
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 383
    :cond_62
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_24
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 213
    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 2126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 2129
    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$13;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 2156
    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 962
    .line 965
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v7, p3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

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
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_53

    move-result-object v1

    .line 977
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 978
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 979
    iget-wide v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 980
    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 981
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p4, v2}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_5b

    .line 984
    :cond_4d
    if-eqz v1, :cond_52

    .line 985
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 988
    :cond_52
    return-void

    .line 984
    :catchall_53
    move-exception v0

    move-object v1, v6

    :goto_55
    if-eqz v1, :cond_5a

    .line 985
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0

    .line 984
    :catchall_5b
    move-exception v0

    goto :goto_55
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    .registers 22
    .parameter "message"
    .parameter "localMessage"
    .parameter "loadStatus"
    .parameter "context"

    .prologue
    .line 1004
    :try_start_0
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p4

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v10

    .line 1006
    .local v10, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    if-nez v10, :cond_11

    .line 1007
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Body;

    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_a2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_c0

    .line 1011
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :cond_11
    :try_start_11
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 1015
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v16, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1, v9}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1019
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 1022
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v10, v1}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1026
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1, v9}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V

    .line 1029
    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1031
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1032
    .local v11, cv:Landroid/content/ContentValues;
    const-string v3, "flagAttachment"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1033
    const-string v3, "flagLoaded"

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 1036
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_87
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_11 .. :try_end_87} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_87} :catch_a2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_87} :catch_c0

    .line 1047
    .end local v9           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :goto_87
    return-void

    .line 1038
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_88
    move-exception v13

    .line 1039
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_89
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while copying downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_a1} :catch_a2
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a1} :catch_c0

    goto :goto_87

    .line 1042
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_a2
    move-exception v14

    .line 1043
    .local v14, rte:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1044
    .end local v14           #rte:Ljava/lang/RuntimeException;
    :catch_c0
    move-exception v12

    .line 1045
    .local v12, ioe:Ljava/io/IOException;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method public downloadFlagAndEnvelope(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 15
    .parameter "account"
    .parameter "mailbox"
    .parameter "remoteFolder"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MessagingController$LocalMessageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 532
    .local p4, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .local p5, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .local p6, unseenMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 533
    .local v6, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 537
    if-eqz p5, :cond_2d

    .line 538
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 543
    .local v2, localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :goto_16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/android/emailcommon/mail/Message;

    new-instance v0, Lcom/android/email/MessagingController$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v7, v6, v0}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 589
    return-void

    .line 540
    .end local v2           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :cond_2d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2       #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    goto :goto_16
.end method

.method listFolders(JLcom/android/email/MessagingListener;)V
    .registers 8
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 249
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_27

    .line 250
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load account id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Has it been removed?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_26
    return-void

    .line 254
    :cond_27
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 255
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_26
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v8, 0x1

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 1913
    const-string v12, "loadAttachment"

    new-instance v1, Lcom/android/email/MessagingController$11;

    move-object v2, p0

    move-wide/from16 v3, p7

    move-wide v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p10

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;JJJZJ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v12, v0, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 2001
    return-void
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 1847
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1904
    return-void
.end method

.method loadUnsyncedMessages(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 16
    .parameter "account"
    .parameter "remoteFolder"
    .parameter
    .parameter "toMailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 452
    .local p3, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v4, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v7, smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/mail/Message;

    .line 455
    .local v5, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v9

    const/16 v10, 0x6400

    if-le v9, v10, :cond_26

    .line 456
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 458
    :cond_26
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 469
    .end local v5           #message:Lcom/android/emailcommon/mail/Message;
    :cond_2a
    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 470
    .local v1, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/emailcommon/mail/Message;

    new-instance v10, Lcom/android/email/MessagingController$3;

    invoke-direct {v10, p0, p1, p4}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-virtual {p2, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 486
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 487
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 489
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/mail/Message;

    .line 490
    .restart local v5       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v9

    if-nez v9, :cond_8d

    .line 494
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 495
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 499
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 502
    const/4 v9, 0x2

    invoke-virtual {p0, v5, p1, p4, v9}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    goto :goto_64

    .line 509
    :cond_8d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v8, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-static {v5, v8, v0}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 513
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/mail/Part;

    .line 514
    .local v6, part:Lcom/android/emailcommon/mail/Part;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 515
    invoke-virtual {v1, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_9e

    .line 521
    .end local v6           #part:Lcom/android/emailcommon/mail/Part;
    :cond_bb
    const/4 v9, 0x1

    invoke-virtual {p0, v5, p1, p4, v9}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    goto :goto_64

    .line 526
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #message:Lcom/android/emailcommon/mail/Message;
    .end local v8           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_c0
    return-void
.end method

.method public processPendingActions(J)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 1050
    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$7;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1070
    return-void
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 217
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 180
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 185
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_f} :catch_33

    .line 189
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v2}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 190
    :cond_1b
    iput-boolean v3, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 191
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 192
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_35

    move v2, v3

    :goto_2d
    invoke-virtual {v5, v2}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 194
    :cond_30
    iput-boolean v4, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_7

    .line 186
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_33
    move-exception v1

    .line 187
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_7

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    :cond_35
    move v2, v4

    .line 192
    goto :goto_2d
.end method

.method public searchMailbox(JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 15
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 607
    :try_start_2
    invoke-direct/range {p0 .. p5}, Lcom/android/email/MessagingController;->searchMailboxImpl(JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_f

    move-result v8

    .line 611
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-wide v1, p1

    move-wide v3, p4

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    return v8

    :catchall_f
    move-exception v8

    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-wide v1, p1

    move-wide v3, p4

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V

    throw v8
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/Account;JLcom/android/email/MessagingListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2010
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/MessagingController$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;J)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 2015
    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/Account;J)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2024
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 2026
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    .line 2027
    const-wide/16 v0, -0x1

    cmp-long v0, v5, v0

    if-nez v0, :cond_1f

    .line 2109
    :goto_1e
    return-void

    .line 2030
    :cond_1f
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2031
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2037
    :try_start_3a
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3a .. :try_end_3d} :catch_c0

    move-result v1

    if-gtz v1, :cond_44

    .line 2107
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    .line 2041
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 2043
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v10

    .line 2044
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 2045
    invoke-virtual {v1}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v11

    .line 2046
    const/4 v1, 0x0

    .line 2047
    if-eqz v11, :cond_12e

    .line 2048
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2049
    const-string v2, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v7, v1

    .line 2053
    :cond_6f
    :goto_6f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_72
    .catchall {:try_start_44 .. :try_end_72} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_44 .. :try_end_72} :catch_c0

    move-result v1

    if-eqz v1, :cond_11d

    .line 2054
    const-wide/16 v4, -0x1

    .line 2056
    const/4 v1, 0x0

    :try_start_78
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2057
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 2059
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 2060
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_6f

    .line 2061
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t send #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; unloaded attachments"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_78 .. :try_end_ad} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_78 .. :try_end_ad} :catch_ae

    goto :goto_6f

    .line 2067
    :catch_ae
    move-exception v6

    .line 2069
    :try_start_af
    instance-of v1, v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_b8

    .line 2070
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v8, v1, v2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 2072
    :cond_b8
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_af .. :try_end_bf} :catch_c0

    goto :goto_6f

    .line 2101
    :catch_c0
    move-exception v5

    .line 2102
    :try_start_c1
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_ca

    .line 2103
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 2105
    :cond_ca
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_d3
    .catchall {:try_start_c1 .. :try_end_d3} :catchall_ff

    .line 2107
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1e

    .line 2066
    :cond_d8
    :try_start_d8
    invoke-virtual {v10, v4, v5}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d8 .. :try_end_db} :catch_ae

    .line 2076
    :try_start_db
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2078
    if-eqz v11, :cond_104

    .line 2081
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 2083
    if-eqz v2, :cond_f8

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f8

    .line 2085
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v12, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v12, v13, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2088
    :cond_f8
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_db .. :try_end_fd} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_db .. :try_end_fd} :catch_c0

    goto/16 :goto_6f

    .line 2107
    :catchall_ff
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2090
    :cond_104
    :try_start_104
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v12, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v12, v13, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2092
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2094
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2095
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6f

    .line 2099
    :cond_11d
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V

    .line 2100
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_129
    .catchall {:try_start_104 .. :try_end_129} :catchall_ff
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_104 .. :try_end_129} :catch_c0

    .line 2107
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1e

    :cond_12e
    move-object v7, v1

    goto/16 :goto_6f
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;)V
    .registers 9
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    .line 334
    iget v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 343
    :goto_5
    return-void

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 338
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_5
.end method
