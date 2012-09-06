.class public Lcom/android/email/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/NotificationController$NotificationThread;,
        Lcom/android/email/NotificationController$AccountContentObserver;,
        Lcom/android/email/NotificationController$MessageContentObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/email/NotificationController;

.field private static sNotificationHandler:Landroid/os/Handler;

.field private static sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;


# instance fields
.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

.field private final mGenericSenderIcon:Landroid/graphics/Bitmap;

.field private mLastMessageNotifyTime:J

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendAccountId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .registers 5
    .parameter "context"
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    .line 120
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 122
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    .line 123
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

    .line 127
    iput-object p2, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/NotificationController;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->unregisterMessageNotification(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/NotificationController;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$300()Lcom/android/email/NotificationController$NotificationThread;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/NotificationController$NotificationThread;)Lcom/android/email/NotificationController$NotificationThread;
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/email/NotificationController;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->registerMessageNotification(J)V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/NotificationController;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/NotificationController;J)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/email/NotificationController;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    return-object v0
.end method

.method private createAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification;
    .registers 16
    .parameter "account"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "largeIcon"
    .parameter "number"
    .parameter "enableAudio"
    .parameter "ongoing"

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, pending:Landroid/app/PendingIntent;
    if-eqz p5, :cond_c

    .line 173
    iget-object v4, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v4, v3, p5, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 178
    :cond_c
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    if-nez p7, :cond_4c

    :goto_25
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f02005d

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v4}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 189
    .local v0, builder:Landroid/app/Notification$Builder;
    if-eqz p8, :cond_47

    .line 190
    invoke-virtual {p0, v0, p1}, Lcom/android/email/NotificationController;->setupSoundAndVibration(Landroid/app/Notification$Builder;Lcom/android/emailcommon/provider/Account;)V

    .line 193
    :cond_47
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 194
    .local v1, notification:Landroid/app/Notification;
    return-object v1

    .line 178
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v1           #notification:Landroid/app/Notification;
    :cond_4c
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_25
.end method

.method private static declared-synchronized ensureHandlerExists()V
    .registers 3

    .prologue
    .line 309
    const-class v1, Lcom/android/email/NotificationController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    if-nez v0, :cond_1b

    .line 310
    new-instance v0, Lcom/android/email/NotificationController$NotificationThread;

    invoke-direct {v0}, Lcom/android/email/NotificationController$NotificationThread;-><init>()V

    sput-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    .line 311
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    invoke-virtual {v2}, Lcom/android/email/NotificationController$NotificationThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    .line 313
    :cond_1b
    monitor-exit v1

    return-void

    .line 309
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;
    .registers 4
    .parameter "context"

    .prologue
    .line 133
    const-class v1, Lcom/android/email/NotificationController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    if-nez v0, :cond_10

    .line 134
    new-instance v0, Lcom/android/email/NotificationController;

    sget-object v2, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-direct {v0, p0, v2}, Lcom/android/email/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    sput-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    .line 136
    :cond_10
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLoginFailedNotificationId(J)I
    .registers 5
    .parameter "accountId"

    .prologue
    .line 519
    const/high16 v0, 0x2000

    long-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getNewMessageNotificationId(J)I
    .registers 5
    .parameter "accountId"

    .prologue
    .line 219
    const-wide/32 v0, 0x10000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 396
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-nez v1, :cond_a

    .line 403
    :cond_9
    :goto_9
    return-object v2

    .line 399
    :cond_a
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 403
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/email/activity/ContactStatusLoader;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_9
.end method

.method private needsOngoingNotification(I)Z
    .registers 3
    .parameter "notificationId"

    .prologue
    const/4 v0, 0x1

    .line 147
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private registerMessageNotification(J)V
    .registers 16
    .parameter "accountId"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, resolver:Landroid/content/ContentResolver;
    const-wide/high16 v2, 0x1000

    cmp-long v2, p1, v2

    if-nez v2, :cond_30

    .line 326
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "flags&1 != 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    .local v8, c:Landroid/database/Cursor;
    :goto_18
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 331
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 332
    .local v9, id:J
    invoke-direct {p0, v9, v10}, Lcom/android/email/NotificationController;->registerMessageNotification(J)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_27

    goto :goto_18

    .line 335
    .end local v9           #id:J
    :catchall_27
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 356
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2f
    :goto_2f
    return-void

    .line 338
    :cond_30
    iget-object v2, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/ContentObserver;

    .line 339
    .local v12, obs:Landroid/database/ContentObserver;
    if-nez v12, :cond_2f

    .line 341
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 342
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_60

    .line 343
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load INBOX for account id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 346
    :cond_60
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_7c

    .line 347
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering for notifications for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_7c
    new-instance v1, Lcom/android/email/NotificationController$MessageContentObserver;

    sget-object v2, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v4, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/email/NotificationController$MessageContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;JJ)V

    .line 351
    .local v1, observer:Landroid/database/ContentObserver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    iget-object v2, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_2f
.end method

.method private showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 19
    .parameter "account"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "notificationId"

    .prologue
    .line 209
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/email/NotificationController;->needsOngoingNotification(I)Z

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/email/NotificationController;->createAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification;

    move-result-object v11

    .line 211
    .local v11, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p6

    invoke-virtual {v1, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 212
    return-void
.end method

.method private unregisterMessageNotification(J)V
    .registers 9
    .parameter "accountId"

    .prologue
    .line 367
    iget-object v3, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 368
    .local v2, resolver:Landroid/content/ContentResolver;
    const-wide/high16 v3, 0x1000

    cmp-long v3, p1, v3

    if-nez v3, :cond_37

    .line 369
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_17

    .line 370
    const-string v3, "Email"

    const-string v4, "Unregistering notifications for all accounts"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_17
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 374
    .local v1, observer:Landroid/database/ContentObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_21

    .line 376
    .end local v1           #observer:Landroid/database/ContentObserver;
    :cond_31
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 386
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_36
    :goto_36
    return-void

    .line 378
    :cond_37
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_53

    .line 379
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistering notifications for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_53
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 382
    .restart local v1       #observer:Landroid/database/ContentObserver;
    if-eqz v1, :cond_36

    .line 383
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_36
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 544
    return-void
.end method

.method public cancelPasswordExpirationNotifications()V
    .registers 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 590
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 591
    return-void
.end method

.method public cancelSecurityNeededNotification()V
    .registers 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 612
    return-void
.end method

.method createNewMessageNotification(JJJII)Landroid/app/Notification;
    .registers 33
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "unseenMessageCount"
    .parameter "unreadCount"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v13

    .line 415
    .local v13, account:Lcom/android/emailcommon/provider/Account;
    if-nez v13, :cond_f

    .line 416
    const/16 v17, 0x0

    .line 453
    :goto_e
    return-object v17

    .line 419
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 420
    .local v15, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v15, :cond_1e

    .line 421
    const/16 v17, 0x0

    goto :goto_e

    .line 424
    :cond_1e
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v20

    .line 425
    .local v20, senderName:Ljava/lang/String;
    if-nez v20, :cond_2c

    .line 426
    const-string v20, ""

    .line 428
    :cond_2c
    const/4 v3, 0x1

    move/from16 v0, p7

    if-le v0, v3, :cond_9b

    const/16 v16, 0x1

    .line 429
    .local v16, multipleUnseen:Z
    :goto_33
    if-eqz v16, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    .line 432
    .local v21, senderPhoto:Landroid/graphics/Bitmap;
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/android/email/NotificationController;->getNewMessageTitle(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v23

    .line 435
    .local v23, title:Landroid/text/SpannableString;
    if-eqz v16, :cond_a5

    iget-object v0, v13, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 438
    .local v22, text:Ljava/lang/String;
    :goto_4b
    if-eqz v21, :cond_aa

    move-object/from16 v14, v21

    .line 439
    .local v14, largeIcon:Landroid/graphics/Bitmap;
    :goto_4f
    const/4 v3, 0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_af

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 441
    .local v10, number:Ljava/lang/Integer;
    :goto_58
    const/4 v3, 0x1

    move/from16 v0, p7

    if-le v0, v3, :cond_b1

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v8

    .line 446
    .local v8, intent:Landroid/content/Intent;
    :goto_67
    const v3, 0x10008000

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v18

    .line 448
    .local v18, now:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController;->mLastMessageNotifyTime:J

    sub-long v3, v18, v3

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-lez v3, :cond_c0

    const/4 v11, 0x1

    .line 449
    .local v11, enableAudio:Z
    :goto_82
    invoke-virtual/range {v23 .. v23}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object v4, v13

    move-object/from16 v6, v23

    move-object/from16 v7, v22

    move-object v9, v14

    invoke-direct/range {v3 .. v12}, Lcom/android/email/NotificationController;->createAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification;

    move-result-object v17

    .line 452
    .local v17, notification:Landroid/app/Notification;
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/NotificationController;->mLastMessageNotifyTime:J

    goto/16 :goto_e

    .line 428
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #number:Ljava/lang/Integer;
    .end local v11           #enableAudio:Z
    .end local v14           #largeIcon:Landroid/graphics/Bitmap;
    .end local v16           #multipleUnseen:Z
    .end local v17           #notification:Landroid/app/Notification;
    .end local v18           #now:J
    .end local v21           #senderPhoto:Landroid/graphics/Bitmap;
    .end local v22           #text:Ljava/lang/String;
    .end local v23           #title:Landroid/text/SpannableString;
    :cond_9b
    const/16 v16, 0x0

    goto :goto_33

    .line 429
    .restart local v16       #multipleUnseen:Z
    :cond_9e
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/NotificationController;->getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;

    move-result-object v21

    goto :goto_3b

    .line 435
    .restart local v21       #senderPhoto:Landroid/graphics/Bitmap;
    .restart local v23       #title:Landroid/text/SpannableString;
    :cond_a5
    iget-object v0, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_4b

    .line 438
    .restart local v22       #text:Ljava/lang/String;
    :cond_aa
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    goto :goto_4f

    .line 439
    .restart local v14       #largeIcon:Landroid/graphics/Bitmap;
    :cond_af
    const/4 v10, 0x0

    goto :goto_58

    .line 444
    .restart local v10       #number:Ljava/lang/Integer;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v8

    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_67

    .line 448
    .restart local v18       #now:J
    :cond_c0
    const/4 v11, 0x0

    goto :goto_82
.end method

.method getNewMessageTitle(Ljava/lang/String;I)Landroid/text/SpannableString;
    .registers 8
    .parameter "sender"
    .parameter "unseenCount"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 463
    if-le p2, v3, :cond_1f

    .line 464
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, title:Ljava/lang/String;
    :goto_19
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 468
    .end local v0           #title:Ljava/lang/String;
    :cond_1f
    move-object v0, p1

    .restart local v0       #title:Ljava/lang/String;
    goto :goto_19
.end method

.method getRingerMode()I
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method setupSoundAndVibration(Landroid/app/Notification$Builder;Lcom/android/emailcommon/provider/Account;)V
    .registers 13
    .parameter "builder"
    .parameter "account"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 482
    iget v1, p2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 483
    .local v1, flags:I
    iget-object v3, p2, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 484
    .local v3, ringtoneUri:Ljava/lang/String;
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_2c

    move v4, v6

    .line 485
    .local v4, vibrate:Z
    :goto_b
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_2e

    move v5, v6

    .line 486
    .local v5, vibrateWhenSilent:Z
    :goto_10
    invoke-virtual {p0}, Lcom/android/email/NotificationController;->getRingerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_30

    move v2, v6

    .line 488
    .local v2, isRingerSilent:Z
    :goto_18
    const/4 v0, 0x4

    .line 489
    .local v0, defaults:I
    if-nez v4, :cond_1f

    if-eqz v5, :cond_21

    if-eqz v2, :cond_21

    .line 490
    :cond_1f
    or-int/lit8 v0, v0, 0x2

    .line 493
    :cond_21
    if-nez v3, :cond_32

    const/4 v6, 0x0

    :goto_24
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 495
    return-void

    .end local v0           #defaults:I
    .end local v2           #isRingerSilent:Z
    .end local v4           #vibrate:Z
    .end local v5           #vibrateWhenSilent:Z
    :cond_2c
    move v4, v7

    .line 484
    goto :goto_b

    .restart local v4       #vibrate:Z
    :cond_2e
    move v5, v7

    .line 485
    goto :goto_10

    .restart local v5       #vibrateWhenSilent:Z
    :cond_30
    move v2, v7

    .line 486
    goto :goto_18

    .line 493
    .restart local v0       #defaults:I
    .restart local v2       #isRingerSilent:Z
    :cond_32
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_24
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 9
    .parameter "attachment"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 506
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_b

    .line 513
    :goto_a
    return-void

    .line 507
    :cond_b
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_a
.end method

.method public showLoginFailedNotification(J)V
    .registers 10
    .parameter "accountId"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 529
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_9

    .line 537
    :goto_8
    return-void

    .line 530
    :cond_9
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v5}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method public showPasswordExpiredNotification(J)V
    .registers 10
    .parameter "accountId"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 574
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_9

    .line 583
    :goto_8
    return-void

    .line 576
    :cond_9
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v0, p1, p2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 578
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f080127

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, ticker:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f080128

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, title:Ljava/lang/String;
    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method public showPasswordExpiringNotification(J)V
    .registers 12
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 554
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_a

    .line 564
    :goto_9
    return-void

    .line 556
    :cond_a
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 558
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f080125

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, ticker:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f080126

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, title:Ljava/lang/String;
    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V
    .registers 11
    .parameter "account"

    .prologue
    const/4 v6, 0x1

    .line 598
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v7, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v7, v8, v6}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 599
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f080120

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, ticker:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 603
    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 605
    return-void
.end method

.method public suspendMessageNotification(ZJ)V
    .registers 8
    .parameter "suspend"
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 282
    iget-wide v0, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 284
    iput-wide v2, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    .line 286
    :cond_a
    if-eqz p1, :cond_2b

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2b

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2b

    .line 287
    iput-wide p2, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    .line 288
    const-wide/high16 v0, 0x1000

    cmp-long v0, p2, v0

    if-nez v0, :cond_2c

    .line 290
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 291
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/NotificationController$2;

    invoke-direct {v1, p0}, Lcom/android/email/NotificationController$2;-><init>(Lcom/android/email/NotificationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    :cond_2b
    :goto_2b
    return-void

    .line 300
    :cond_2c
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p2, p3}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2b
.end method

.method public watchForMessages(Z)V
    .registers 5
    .parameter "watch"

    .prologue
    .line 232
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 233
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifications being toggled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1c
    if-nez p1, :cond_23

    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    if-nez v0, :cond_23

    .line 269
    :goto_22
    return-void

    .line 238
    :cond_23
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 240
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/NotificationController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/NotificationController$1;-><init>(Lcom/android/email/NotificationController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22
.end method
