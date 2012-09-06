.class public Lcom/android/email/activity/RecentMailboxManager;
.super Ljava/lang/Object;
.source "RecentMailboxManager.java"


# static fields
.field static final DEFAULT_RECENT_TYPES:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static RECENT_MAILBOXES_SORT_ORDER:Ljava/lang/String;

.field static sClock:Lcom/android/email/Clock;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sInstance:Lcom/android/email/activity/RecentMailboxManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultRecentsInitialized:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    sput-object v0, Lcom/android/email/activity/RecentMailboxManager;->sClock:Lcom/android/email/Clock;

    .line 45
    const-string v0, "displayName"

    sput-object v0, Lcom/android/email/activity/RecentMailboxManager;->RECENT_MAILBOXES_SORT_ORDER:Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/email/activity/RecentMailboxManager;->DEFAULT_RECENT_TYPES:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/email/activity/RecentMailboxManager;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/RecentMailboxManager;->mDefaultRecentsInitialized:Ljava/util/HashMap;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/RecentMailboxManager;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/RecentMailboxManager;->ensureDefaultsInitialized(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/RecentMailboxManager;JJJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/android/email/activity/RecentMailboxManager;->touchMailboxSynchronous(JJJ)V

    return-void
.end method

.method private declared-synchronized ensureDefaultsInitialized(JJ)V
    .registers 17
    .parameter "accountId"
    .parameter "time"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/email/activity/RecentMailboxManager;->mDefaultRecentsInitialized:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_5d

    move-result v0

    if-eqz v0, :cond_15

    .line 168
    :goto_13
    monitor-exit p0

    return-void

    .line 157
    :cond_15
    const/4 v0, 0x2

    :try_start_16
    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 158
    .local v7, args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN ( SELECT _id FROM Mailbox WHERE ( accountKey=?  AND type<64 AND flagVisible=1 AND type!=0 AND lastTouchedTime>0 ) ORDER BY lastTouchedTime DESC LIMIT ? )"

    invoke-static {v0, v1, v2, v7}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4e

    .line 160
    sget-object v8, Lcom/android/email/activity/RecentMailboxManager;->DEFAULT_RECENT_TYPES:[I

    .local v8, arr$:[I
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_37
    if-ge v9, v10, :cond_4e

    aget v11, v8, v9

    .line 161
    .local v11, type:I
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v11}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .local v3, mailbox:J
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/RecentMailboxManager;->touchMailboxSynchronous(JJJ)V

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 167
    .end local v3           #mailbox:J
    .end local v8           #arr$:[I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #type:I
    :cond_4e
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager;->mDefaultRecentsInitialized:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_16 .. :try_end_5c} :catchall_5d

    goto :goto_13

    .line 153
    .end local v7           #args:[Ljava/lang/String;
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fireAndForget(JJJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .registers 15
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/android/email/activity/RecentMailboxManager$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/RecentMailboxManager$1;-><init>(Lcom/android/email/activity/RecentMailboxManager;JJJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/activity/RecentMailboxManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/android/email/activity/RecentMailboxManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/activity/RecentMailboxManager;->sInstance:Lcom/android/email/activity/RecentMailboxManager;

    if-nez v0, :cond_e

    .line 84
    new-instance v0, Lcom/android/email/activity/RecentMailboxManager;

    invoke-direct {v0, p0}, Lcom/android/email/activity/RecentMailboxManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/activity/RecentMailboxManager;->sInstance:Lcom/android/email/activity/RecentMailboxManager;

    .line 86
    :cond_e
    sget-object v0, Lcom/android/email/activity/RecentMailboxManager;->sInstance:Lcom/android/email/activity/RecentMailboxManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private touchMailboxSynchronous(JJJ)V
    .registers 11
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 142
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "lastTouchedTime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    iget-object v1, p0, Lcom/android/email/activity/RecentMailboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method


# virtual methods
.method public getMostRecent(JZ)Ljava/util/ArrayList;
    .registers 13
    .parameter "accountId"
    .parameter "withExclusions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 110
    sget-object v0, Lcom/android/email/activity/RecentMailboxManager;->sClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/email/activity/RecentMailboxManager;->ensureDefaultsInitialized(JJ)V

    .line 112
    if-eqz p3, :cond_4c

    const-string v3, "_id IN ( SELECT _id FROM Mailbox WHERE ( accountKey=?  AND type<64 AND flagVisible=1 AND type=1 AND lastTouchedTime>0 ) ORDER BY lastTouchedTime DESC LIMIT ? )"

    .line 113
    .local v3, selection:Ljava/lang/String;
    :goto_e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v7, returnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v5, Lcom/android/email/activity/RecentMailboxManager;->RECENT_MAILBOXES_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, cursor:Landroid/database/Cursor;
    :goto_34
    :try_start_34
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 121
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_47

    goto :goto_34

    .line 124
    :catchall_47
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 112
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #returnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4c
    const-string v3, "_id IN ( SELECT _id FROM Mailbox WHERE ( accountKey=?  AND type<64 AND flagVisible=1 AND type!=0 AND lastTouchedTime>0 ) ORDER BY lastTouchedTime DESC LIMIT ? )"

    goto :goto_e

    .line 124
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #returnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    return-object v7
.end method

.method public touch(JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .registers 12
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/android/email/activity/RecentMailboxManager;->sClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/RecentMailboxManager;->fireAndForget(JJJ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method
