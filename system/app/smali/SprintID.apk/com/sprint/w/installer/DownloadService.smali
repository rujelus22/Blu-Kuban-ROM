.class public Lcom/sprint/w/installer/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/DownloadService$ChangeListener;,
        Lcom/sprint/w/installer/DownloadService$StatusListener;,
        Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    }
.end annotation


# static fields
.field public static final ACTION_CLEANUP:Ljava/lang/String; = "com.sprint.action.ACTION_CLEANUP"

.field public static final ACTION_DOWNLOAD_FROM_DELIVERY_REQUEST:Ljava/lang/String; = "com.sprint.action.DOWNLOAD_FROM_DELIVERY_REQUEST"

.field public static final ACTION_DOWNLOAD_FROM_PSI:Ljava/lang/String; = "com.sprint.action.DOWNLOAD_FROM_PSI"

.field public static final ACTION_DOWNLOAD_FROM_URL:Ljava/lang/String; = "com.sprint.action.DOWNLOAD_FROM_URL"

.field public static final CONNECTION_TIMEOUT:I = 0x1d4c0

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "extra.FILE_PATH"

.field public static final EXTRA_IS_DEFAULT:Ljava/lang/String; = "extra.IS_DEFAULT"

.field public static final EXTRA_NOTIFY_URL:Ljava/lang/String; = "extra.NOTIFY_URL"

.field public static final EXTRA_PACK:Ljava/lang/String; = "extra.PACK"

.field public static final EXTRA_PACK_NAME:Ljava/lang/String; = "extra.PACK_NAME"

.field public static final EXTRA_PACK_URL:Ljava/lang/String; = "extra.PACK_URL"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "extra.PASSWORD"

.field public static final EXTRA_PSI_PRODUCT_ID:Ljava/lang/String; = "extra.PSI_PRODUCT_ID"

.field public static final EXTRA_USERID:Ljava/lang/String; = "extra.USERID"

.field static final REQUEST_FROM_DOWNLOAD_NOTIFICATION:I = 0x1

.field public static final STATUS_DOWNLOAD_FAILED:I = 0x3

.field public static final STATUS_DOWNLOAD_IN_PROGRESS:I = 0x1

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_READY_TO_INSTALL:I = 0x2

.field private static log:Lcom/sprint/id/logger/Logger;

.field static final sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sprint/w/installer/DownloadService$DownloaderThread;",
            ">;"
        }
    .end annotation
.end field

.field static final sChangeListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/w/installer/DownloadService$ChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field static final sReadyToInstallDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sprint/w/installer/DownloadService$DownloaderThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFromDeliveryReq:Z

.field mHandler:Landroid/os/Handler;

.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/sprint/w/installer/DownloadService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/DownloadService;->sReadyToInstallDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/DownloadService;->sChangeListeners:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1104
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/DownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sprint/w/installer/DownloadService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z

    return p1
.end method

.method static synthetic access$100()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/DownloadService;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sprint/w/installer/DownloadService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/psi/ServicePack;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/DownloadService;->downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/DownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sprint/w/installer/DownloadService;->notifyCleanupDone()V

    return-void
.end method

.method public static addChangeListener(Lcom/sprint/w/installer/DownloadService$ChangeListener;)V
    .registers 2
    .parameter "ccl"

    .prologue
    .line 1058
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sChangeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1059
    return-void
.end method

.method private addNotifications(Landroid/content/Context;)V
    .registers 28
    .parameter "c"

    .prologue
    .line 1170
    sget-object v4, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "addNotifications()"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1171
    invoke-static/range {p1 .. p1}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v18

    .line 1172
    .local v18, packs:[Lcom/sprint/w/installer/psi/ServicePack;
    if-eqz v18, :cond_10b

    move-object/from16 v0, v18

    array-length v4, v0

    if-lez v4, :cond_10b

    .line 1173
    sget-object v4, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "addNotifications(): Adding Notifications"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1174
    const v14, 0x1080082

    .line 1175
    .local v14, icon:I
    const v4, 0x7f06009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 1177
    .local v23, tickerText:Ljava/lang/CharSequence;
    move-object/from16 v10, v18

    .local v10, arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2b
    move/from16 v0, v16

    if-ge v13, v0, :cond_10b

    aget-object v20, v10, v13

    .line 1178
    .local v20, sPack:Lcom/sprint/w/installer/psi/ServicePack;
    move-object/from16 v21, v20

    .line 1180
    .local v21, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1181
    .local v24, when:J
    const v4, 0x7f06009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    .line 1183
    .local v22, text:Ljava/lang/CharSequence;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    .line 1185
    .local v12, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v12, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 1187
    .local v19, pi:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f06009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .line 1188
    .local v17, n:Landroid/app/Notification;
    const/16 v4, 0x20

    move-object/from16 v0, v17

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sprint/w/installer/DownloadService$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lcom/sprint/w/installer/DownloadService$6;-><init>(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/psi/ServicePack;Landroid/app/Notification;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1196
    invoke-virtual/range {v21 .. v21}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v4

    if-eqz v4, :cond_102

    .line 1197
    sget-object v4, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "addNotifications(): Adding Default Pack Alarm"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1198
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-direct {v15, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1199
    .local v15, intent:Landroid/content/Intent;
    const-string v4, "com.sprint.w.installer.ACTION_NOTIFY"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string v4, "EXTRA_SERVICEPACK"

    move-object/from16 v0, v21

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1201
    const-string v4, "EXTRA_PENDINGINTENT"

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1202
    const/high16 v4, 0x1000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v15, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1206
    .local v9, pIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 1207
    .local v3, am:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_102
    .catch Ljava/net/URISyntaxException; {:try_start_33 .. :try_end_102} :catch_106

    .line 1177
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v9           #pIntent:Landroid/app/PendingIntent;
    .end local v12           #i:Landroid/content/Intent;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #n:Landroid/app/Notification;
    .end local v19           #pi:Landroid/app/PendingIntent;
    .end local v22           #text:Ljava/lang/CharSequence;
    .end local v24           #when:J
    :cond_102
    :goto_102
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2b

    .line 1209
    :catch_106
    move-exception v11

    .line 1211
    .local v11, e:Ljava/net/URISyntaxException;
    invoke-virtual {v11}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_102

    .line 1215
    .end local v10           #arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    .end local v11           #e:Ljava/net/URISyntaxException;
    .end local v13           #i$:I
    .end local v14           #icon:I
    .end local v16           #len$:I
    .end local v20           #sPack:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v21           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v23           #tickerText:Ljava/lang/CharSequence;
    :cond_10b
    return-void
.end method

.method public static addStatusListener(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)I
    .registers 5
    .parameter "c"
    .parameter "packId"
    .parameter "sl"

    .prologue
    .line 1042
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 1043
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v0, :cond_19

    .line 1044
    monitor-enter v0

    .line 1045
    :try_start_b
    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v1, :cond_18

    .line 1046
    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1047
    iget v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStatus:I

    monitor-exit v0

    .line 1054
    :goto_17
    return v1

    .line 1049
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_21

    .line 1051
    :cond_19
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1052
    const/4 v1, 0x2

    goto :goto_17

    .line 1049
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 1054
    :cond_24
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static cancelDownload(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 1078
    sget-object v2, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download canceled by user, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 1079
    sget-object v2, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 1080
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v0, :cond_27

    .line 1081
    monitor-enter v0

    .line 1082
    const/4 v2, 0x1

    :try_start_24
    iput-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    .line 1086
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3f

    .line 1088
    :cond_27
    sget-object v2, Lcom/sprint/w/installer/DownloadService;->sReadyToInstallDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1090
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {p1}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1091
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DownloadService;->clearDownloadsForPack(Landroid/content/Context;Ljava/lang/String;)V

    .line 1092
    return-void

    .line 1086
    .end local v1           #nm:Landroid/app/NotificationManager;
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method private cleanupInProgressPacks(Landroid/content/Context;I)V
    .registers 13
    .parameter "c"
    .parameter "startId"

    .prologue
    .line 1117
    sget-object v8, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "cleanupInProgressPacks()"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1118
    const/4 v3, 0x0

    .line 1119
    .local v3, mDefault:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-static {p1}, Lcom/sprint/w/installer/DownloadService;->getDownloadingPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v4

    .line 1120
    .local v4, packs:[Lcom/sprint/w/installer/psi/ServicePack;
    if-eqz v4, :cond_38

    array-length v8, v4

    if-lez v8, :cond_38

    .line 1121
    move-object v0, v4

    .local v0, arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_38

    aget-object v5, v0, v1

    .line 1122
    .local v5, sPack:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-virtual {v5}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1123
    sget-object v8, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "cleanupInProgressPacks(): Found Default Pack"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1124
    move-object v3, v5

    .line 1121
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1126
    :cond_29
    sget-object v8, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "cleanupInProgressPacks(): Removing hung download"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v5}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/sprint/w/installer/DownloadService;->clearReadyToInstallDownload(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 1132
    .end local v0           #arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #sPack:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_38
    if-eqz v3, :cond_51

    .line 1133
    move-object v6, v3

    .line 1134
    .local v6, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-static {p1}, Lcom/sprint/w/installer/util/Util;->isConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 1135
    invoke-direct {p0, v6, p2}, Lcom/sprint/w/installer/DownloadService;->downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;I)V

    .line 1136
    invoke-direct {p0}, Lcom/sprint/w/installer/DownloadService;->notifyCleanupDone()V

    .line 1154
    .end local v6           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :goto_47
    return-void

    .line 1138
    .restart local v6       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_48
    new-instance v7, Lcom/sprint/w/installer/DownloadService$5;

    invoke-direct {v7, p0, p1, v6, p2}, Lcom/sprint/w/installer/DownloadService$5;-><init>(Lcom/sprint/w/installer/DownloadService;Landroid/content/Context;Lcom/sprint/w/installer/psi/ServicePack;I)V

    .line 1149
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_47

    .line 1152
    .end local v6           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_51
    invoke-direct {p0}, Lcom/sprint/w/installer/DownloadService;->notifyCleanupDone()V

    goto :goto_47
.end method

.method private static clearDownloadsForPack(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "c"
    .parameter "packId"

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const-string v2, "packId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1114
    return-void
.end method

.method public static clearReadyToInstallDownload(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 1073
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sReadyToInstallDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DownloadService;->clearDownloadsForPack(Landroid/content/Context;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private createDownloadsRecord(Lcom/sprint/w/installer/delivery/DeliveryRequest;)V
    .registers 10
    .parameter "dr"

    .prologue
    const/4 v7, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const-string v4, "packId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "packId"

    iget-object v4, p1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "title"

    iget-object v4, p1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sop://deliverydetails?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&packname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v1, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    const-string v3, "detailsIntent"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v3, "percentComplete"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v3, "isDefault"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v3, "isLocked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 222
    return-void
.end method

.method private createDownloadsRecord(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "id"
    .parameter "name"
    .parameter "isDefault"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const-string v6, "packId=?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "packId"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v5, "title"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sop://details?product="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .local v1, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const-string v5, "detailsIntent"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "percentComplete"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v5, "isDefault"

    if-eqz p3, :cond_6f

    :goto_59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v3, "isLocked"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 205
    return-void

    :cond_6f
    move v3, v4

    .line 202
    goto :goto_59
.end method

.method private downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;I)V
    .registers 10
    .parameter "sp"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 1163
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "cleanupInProgressPacks(): Network Connected"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1164
    new-instance v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1165
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    invoke-virtual {v0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->start()V

    .line 1167
    return-void
.end method

.method private downloadPack(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "url"
    .parameter "name"
    .parameter "startId"
    .parameter "userId"
    .parameter "password"

    .prologue
    const/4 v7, 0x0

    .line 179
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 180
    new-instance v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;-><init>(Lcom/sprint/w/installer/DownloadService;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0, p1, p2, v7}, Lcom/sprint/w/installer/DownloadService;->createDownloadsRecord(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    invoke-virtual {v0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->start()V

    .line 184
    const/4 v1, 0x1

    .line 186
    .end local v0           #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    :goto_23
    return v1

    :cond_24
    move v1, v7

    goto :goto_23
.end method

.method private downloadPack(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 12
    .parameter "psiProductId"
    .parameter "name"
    .parameter "startId"
    .parameter "isDefault"

    .prologue
    const/4 v5, 0x1

    .line 168
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 169
    new-instance v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 170
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-direct {p0, p1, p2, p4}, Lcom/sprint/w/installer/DownloadService;->createDownloadsRecord(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {v0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->start()V

    .line 175
    .end local v0           #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    :goto_1e
    return v5

    :cond_1f
    const/4 v5, 0x0

    goto :goto_1e
.end method

.method public static getDownloadProgress(Ljava/lang/String;)I
    .registers 3
    .parameter "packId"

    .prologue
    .line 873
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 874
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v0, :cond_d

    .line 875
    iget v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mProgress:I

    .line 877
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static getDownloadingPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;
    .registers 19
    .parameter "c"

    .prologue
    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "packId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "percentComplete"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "filepath"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "isDefault"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "isLocked"

    aput-object v5, v3, v4

    const-string v4, "percentComplete < 100"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1007
    .local v7, cur:Landroid/database/Cursor;
    :try_start_2f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v0, v1, [Lcom/sprint/w/installer/psi/ServicePack;

    move-object/from16 v16, v0

    .line 1008
    .local v16, res:[Lcom/sprint/w/installer/psi/ServicePack;
    const/4 v8, 0x0

    .line 1009
    .local v8, i:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1010
    const-string v1, "packId"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1011
    .local v11, idxId:I
    const-string v1, "title"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1012
    .local v13, idxName:I
    const-string v1, "percentComplete"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1013
    .local v14, idxPercent:I
    const-string v1, "filepath"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1014
    .local v15, idxfilepath:I
    const-string v1, "isDefault"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1015
    .local v10, idxDefault:I
    const-string v1, "isLocked"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .local v12, idxLocked:I
    move v9, v8

    .line 1017
    .end local v8           #i:I
    .local v9, i:I
    :goto_63
    new-instance v17, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct/range {v17 .. v17}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 1018
    .local v17, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 1019
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 1020
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/sprint/w/installer/psi/ServicePack;->downloadPercent:I

    .line 1021
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setDownloadFilePath(Ljava/lang/String;)V

    .line 1022
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b3

    const/4 v1, 0x1

    :goto_93
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 1023
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b5

    const/4 v1, 0x1

    :goto_a0
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setLocked(Z)V

    .line 1024
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    aput-object v17, v16, v9

    .line 1025
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ac
    .catchall {:try_start_2f .. :try_end_ac} :catchall_b7

    move-result v1

    if-nez v1, :cond_bc

    .line 1029
    .end local v10           #idxDefault:I
    .end local v11           #idxId:I
    .end local v12           #idxLocked:I
    .end local v13           #idxName:I
    .end local v14           #idxPercent:I
    .end local v15           #idxfilepath:I
    .end local v17           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_af
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v16

    .line 1022
    .end local v8           #i:I
    .restart local v9       #i:I
    .restart local v10       #idxDefault:I
    .restart local v11       #idxId:I
    .restart local v12       #idxLocked:I
    .restart local v13       #idxName:I
    .restart local v14       #idxPercent:I
    .restart local v15       #idxfilepath:I
    .restart local v17       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_b3
    const/4 v1, 0x0

    goto :goto_93

    .line 1023
    :cond_b5
    const/4 v1, 0x0

    goto :goto_a0

    .line 1029
    .end local v9           #i:I
    .end local v10           #idxDefault:I
    .end local v11           #idxId:I
    .end local v12           #idxLocked:I
    .end local v13           #idxName:I
    .end local v14           #idxPercent:I
    .end local v15           #idxfilepath:I
    .end local v16           #res:[Lcom/sprint/w/installer/psi/ServicePack;
    .end local v17           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catchall_b7
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v8       #i:I
    .restart local v10       #idxDefault:I
    .restart local v11       #idxId:I
    .restart local v12       #idxLocked:I
    .restart local v13       #idxName:I
    .restart local v14       #idxPercent:I
    .restart local v15       #idxfilepath:I
    .restart local v16       #res:[Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v17       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_bc
    move v9, v8

    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_63
.end method

.method public static getNotificationId(Ljava/lang/String;)I
    .registers 2
    .parameter "packId"

    .prologue
    .line 869
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    .line 114
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static getReadyToInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/psi/ServicePack;
    .registers 15
    .parameter "c"
    .parameter "packId"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 881
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "packId"

    aput-object v3, v2, v12

    const-string v3, "title"

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, "installIntent"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isDefault"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "isLocked"

    aput-object v4, v2, v3

    const-string v3, "installIntent NOT NULL AND packId=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    .local v6, cur:Landroid/database/Cursor;
    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 888
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 889
    .local v7, idxId:I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 890
    .local v9, idxName:I
    const-string v0, "installIntent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 891
    .local v8, idxInstallIntent:I
    new-instance v10, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v10}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 892
    .local v10, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 893
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 894
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    .line 895
    const-string v0, "isDefault"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_82

    move v0, v11

    :goto_6b
    invoke-virtual {v10, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 896
    const-string v0, "isLocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_84

    move v0, v11

    :goto_7b
    invoke-virtual {v10, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setLocked(Z)V
    :try_end_7e
    .catchall {:try_start_2d .. :try_end_7e} :catchall_8b

    .line 901
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #idxId:I
    .end local v8           #idxInstallIntent:I
    .end local v9           #idxName:I
    .end local v10           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :goto_81
    return-object v10

    .restart local v7       #idxId:I
    .restart local v8       #idxInstallIntent:I
    .restart local v9       #idxName:I
    .restart local v10       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_82
    move v0, v12

    .line 895
    goto :goto_6b

    :cond_84
    move v0, v12

    .line 896
    goto :goto_7b

    .line 901
    .end local v7           #idxId:I
    .end local v8           #idxInstallIntent:I
    .end local v9           #idxName:I
    .end local v10           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v10, v5

    goto :goto_81

    :catchall_8b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getReadyToInstallPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;
    .registers 17
    .parameter "c"

    .prologue
    .line 973
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "installIntent"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isDefault"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "isLocked"

    aput-object v4, v2, v3

    const-string v3, "installIntent NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 978
    .local v6, cur:Landroid/database/Cursor;
    :try_start_2a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v14, v0, [Lcom/sprint/w/installer/psi/ServicePack;

    .line 979
    .local v14, res:[Lcom/sprint/w/installer/psi/ServicePack;
    const/4 v7, 0x0

    .line 980
    .local v7, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 981
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 982
    .local v10, idxId:I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 983
    .local v13, idxName:I
    const-string v0, "installIntent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 984
    .local v11, idxInstallIntent:I
    const-string v0, "isDefault"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 985
    .local v9, idxDefault:I
    const-string v0, "isLocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .local v12, idxLocked:I
    move v8, v7

    .line 987
    .end local v7           #i:I
    .local v8, i:I
    :goto_56
    new-instance v15, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v15}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 988
    .local v15, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 989
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 990
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    .line 991
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    const/4 v0, 0x1

    :goto_77
    invoke-virtual {v15, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 992
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_95

    const/4 v0, 0x1

    :goto_82
    invoke-virtual {v15, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setLocked(Z)V

    .line 993
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    aput-object v15, v14, v8

    .line 994
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8c
    .catchall {:try_start_2a .. :try_end_8c} :catchall_97

    move-result v0

    if-nez v0, :cond_9c

    .line 998
    .end local v9           #idxDefault:I
    .end local v10           #idxId:I
    .end local v11           #idxInstallIntent:I
    .end local v12           #idxLocked:I
    .end local v13           #idxName:I
    .end local v15           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_8f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v14

    .line 991
    .end local v7           #i:I
    .restart local v8       #i:I
    .restart local v9       #idxDefault:I
    .restart local v10       #idxId:I
    .restart local v11       #idxInstallIntent:I
    .restart local v12       #idxLocked:I
    .restart local v13       #idxName:I
    .restart local v15       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_93
    const/4 v0, 0x0

    goto :goto_77

    .line 992
    :cond_95
    const/4 v0, 0x0

    goto :goto_82

    .line 998
    .end local v8           #i:I
    .end local v9           #idxDefault:I
    .end local v10           #idxId:I
    .end local v11           #idxInstallIntent:I
    .end local v12           #idxLocked:I
    .end local v13           #idxName:I
    .end local v14           #res:[Lcom/sprint/w/installer/psi/ServicePack;
    .end local v15           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catchall_97
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #i:I
    .restart local v9       #idxDefault:I
    .restart local v10       #idxId:I
    .restart local v11       #idxInstallIntent:I
    .restart local v12       #idxLocked:I
    .restart local v13       #idxName:I
    .restart local v14       #res:[Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v15       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_9c
    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_56
.end method

.method public static hasD2CPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;
    .registers 16
    .parameter "c"

    .prologue
    .line 938
    const/4 v13, 0x0

    .line 939
    .local v13, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-static {}, Lcom/sprint/w/installer/psi/PsiContentManager;->discoverVaultPacks()Ljava/util/ArrayList;

    move-result-object v12

    .line 940
    .local v12, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    if-eqz v12, :cond_b4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b4

    .line 941
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "packId"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "installIntent"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "isDefault"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "isLocked"

    aput-object v1, v2, v0

    .line 944
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 946
    .local v6, cur:Landroid/database/Cursor;
    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packId = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 947
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 948
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 949
    .local v8, idxId:I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 950
    .local v11, idxName:I
    const-string v0, "installIntent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 951
    .local v9, idxInstallIntent:I
    const-string v0, "isDefault"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 952
    .local v7, idxDefault:I
    const-string v0, "isLocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 954
    .local v10, idxLocked:I
    new-instance v14, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v14}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V
    :try_end_84
    .catchall {:try_start_2b .. :try_end_84} :catchall_b9

    .line 955
    .end local v13           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .local v14, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_84
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 956
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 957
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    .line 958
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b5

    const/4 v0, 0x1

    :goto_a0
    invoke-virtual {v14, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 959
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b7

    const/4 v0, 0x1

    :goto_ab
    invoke-virtual {v14, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setLocked(Z)V
    :try_end_ae
    .catchall {:try_start_84 .. :try_end_ae} :catchall_c0

    move-object v13, v14

    .line 963
    .end local v7           #idxDefault:I
    .end local v8           #idxId:I
    .end local v9           #idxInstallIntent:I
    .end local v10           #idxLocked:I
    .end local v11           #idxName:I
    .end local v14           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v13       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_af
    if-eqz v6, :cond_b4

    .line 964
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 969
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_b4
    return-object v13

    .line 958
    .end local v13           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v7       #idxDefault:I
    .restart local v8       #idxId:I
    .restart local v9       #idxInstallIntent:I
    .restart local v10       #idxLocked:I
    .restart local v11       #idxName:I
    .restart local v14       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_b5
    const/4 v0, 0x0

    goto :goto_a0

    .line 959
    :cond_b7
    const/4 v0, 0x0

    goto :goto_ab

    .line 963
    .end local v7           #idxDefault:I
    .end local v8           #idxId:I
    .end local v9           #idxInstallIntent:I
    .end local v10           #idxLocked:I
    .end local v11           #idxName:I
    .end local v14           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v13       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catchall_b9
    move-exception v0

    :goto_ba
    if-eqz v6, :cond_bf

    .line 964
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_bf
    throw v0

    .line 963
    .end local v13           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v7       #idxDefault:I
    .restart local v8       #idxId:I
    .restart local v9       #idxInstallIntent:I
    .restart local v10       #idxLocked:I
    .restart local v11       #idxName:I
    .restart local v14       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catchall_c0
    move-exception v0

    move-object v13, v14

    .end local v14           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v13       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    goto :goto_ba
.end method

.method public static hasDefaultPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;
    .registers 15
    .parameter "c"

    .prologue
    .line 906
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "packId"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "installIntent"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "isDefault"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "isLocked"

    aput-object v1, v2, v0

    .line 909
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 910
    .local v6, cur:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 912
    .local v12, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const-string v3, "isDefault = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 913
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 914
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 915
    .local v8, idxId:I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 916
    .local v11, idxName:I
    const-string v0, "installIntent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 917
    .local v9, idxInstallIntent:I
    const-string v0, "isDefault"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 918
    .local v7, idxDefault:I
    const-string v0, "isLocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 920
    .local v10, idxLocked:I
    new-instance v13, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v13}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_8a

    .line 921
    .end local v12           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .local v13, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_55
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 922
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 923
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    .line 924
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_86

    const/4 v0, 0x1

    :goto_71
    invoke-virtual {v13, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 925
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_88

    const/4 v0, 0x1

    :goto_7c
    invoke-virtual {v13, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setLocked(Z)V
    :try_end_7f
    .catchall {:try_start_55 .. :try_end_7f} :catchall_91

    move-object v12, v13

    .line 929
    .end local v7           #idxDefault:I
    .end local v8           #idxId:I
    .end local v9           #idxInstallIntent:I
    .end local v10           #idxLocked:I
    .end local v11           #idxName:I
    .end local v13           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v12       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_80
    if-eqz v6, :cond_85

    .line 930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 933
    :cond_85
    return-object v12

    .line 924
    .end local v12           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v7       #idxDefault:I
    .restart local v8       #idxId:I
    .restart local v9       #idxInstallIntent:I
    .restart local v10       #idxLocked:I
    .restart local v11       #idxName:I
    .restart local v13       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_86
    const/4 v0, 0x0

    goto :goto_71

    .line 925
    :cond_88
    const/4 v0, 0x0

    goto :goto_7c

    .line 929
    .end local v7           #idxDefault:I
    .end local v8           #idxId:I
    .end local v9           #idxInstallIntent:I
    .end local v10           #idxLocked:I
    .end local v11           #idxName:I
    .end local v13           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v12       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catchall_8a
    move-exception v0

    :goto_8b
    if-eqz v6, :cond_90

    .line 930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v0

    .line 929
    .end local v12           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v7       #idxDefault:I
    .restart local v8       #idxId:I
    .restart local v9       #idxInstallIntent:I
    .restart local v10       #idxLocked:I
    .restart local v11       #idxName:I
    .restart local v13       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catchall_91
    move-exception v0

    move-object v12, v13

    .end local v13           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v12       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    goto :goto_8b
.end method

.method private notifyCleanupDone()V
    .registers 4

    .prologue
    .line 1157
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Sending broadcast BootListener.STALE_DOWNLOADS_CLEARED"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.id.notify.STALE_DOWNLOADS_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1160
    return-void
.end method

.method public static removeChangeListener(Lcom/sprint/w/installer/DownloadService$ChangeListener;)V
    .registers 2
    .parameter "ccl"

    .prologue
    .line 1062
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sChangeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1063
    return-void
.end method

.method public static removeStatusListener(Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)V
    .registers 4
    .parameter "packId"
    .parameter "sl"

    .prologue
    .line 1066
    sget-object v1, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 1067
    .local v0, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v0, :cond_f

    .line 1068
    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1070
    :cond_f
    return-void
.end method

.method private updateDownloadsAsCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "id"
    .parameter "installIntent"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "percentComplete"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v2, "installIntent"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const-string v3, "packId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method private updateDownloadsProgress(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "percentComplete"
    .parameter "filepath"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "percentComplete"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v2, "filepath"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const-string v3, "packId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    return-void
.end method


# virtual methods
.method notifyCanceled(Ljava/lang/String;)V
    .registers 4
    .parameter "packId"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/w/installer/DownloadService$3;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/DownloadService$3;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    return-void
.end method

.method notifyComplete(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 29
    .parameter "sp"
    .parameter "packFilePath"
    .parameter "fromUrl"
    .parameter "url"

    .prologue
    .line 747
    const v15, 0x1080082

    .line 748
    .local v15, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 749
    .local v22, when:J
    const v4, 0x7f06009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 751
    .local v21, tickerText:Ljava/lang/CharSequence;
    const v4, 0x7f06009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    .line 752
    .local v20, text:Ljava/lang/CharSequence;
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v13, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    .local v13, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z

    if-eqz v4, :cond_194

    .line 754
    const-string v4, "com.sprint.ACTION_INSTALL_FROM_BG_DL_DELIVERY"

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sop://install?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 762
    :goto_7f
    const/high16 v4, 0x2000

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 765
    .local v18, pi:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f06009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .line 767
    .local v17, n:Landroid/app/Notification;
    const/16 v4, 0x20

    move-object/from16 v0, v17

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sprint/w/installer/DownloadService$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lcom/sprint/w/installer/DownloadService$2;-><init>(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/psi/ServicePack;Landroid/app/Notification;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 776
    new-instance v16, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .local v16, intent:Landroid/content/Intent;
    const-string v4, "com.sprint.w.installer.ACTION_NOTIFY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v4, "EXTRA_SERVICEPACK"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 779
    const-string v4, "EXTRA_PENDINGINTENT"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 780
    const/high16 v4, 0x1400

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 784
    .local v9, pIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 785
    .local v3, am:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 789
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v9           #pIntent:Landroid/app/PendingIntent;
    .end local v16           #intent:Landroid/content/Intent;
    :cond_130
    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sprint/w/installer/DownloadService;->updateDownloadsAsCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v10, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 792
    .local v10, bn:Lcom/sprint/w/installer/BroadcastNotifier;
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackToBeInstalled(Z)V

    .line 794
    sget-object v4, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 795
    .local v12, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v12, :cond_17c

    .line 797
    :try_start_159
    iget-object v5, v12, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    monitor-enter v5
    :try_end_15c
    .catch Ljava/lang/RuntimeException; {:try_start_159 .. :try_end_15c} :catch_17b

    .line 798
    :try_start_15c
    iget-object v4, v12, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_162
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_225

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sprint/w/installer/DownloadService$StatusListener;

    .line 799
    .local v19, sl:Lcom/sprint/w/installer/DownloadService$StatusListener;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sprint/w/installer/DownloadService$StatusListener;->downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V

    goto :goto_162

    .line 801
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #sl:Lcom/sprint/w/installer/DownloadService$StatusListener;
    :catchall_178
    move-exception v4

    monitor-exit v5
    :try_end_17a
    .catchall {:try_start_15c .. :try_end_17a} :catchall_178

    :try_start_17a
    throw v4
    :try_end_17b
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_17b} :catch_17b

    .line 802
    :catch_17b
    move-exception v4

    .line 806
    :cond_17c
    :goto_17c
    :try_start_17c
    sget-object v4, Lcom/sprint/w/installer/DownloadService;->sChangeListeners:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_182
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_193

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/w/installer/DownloadService$ChangeListener;

    .line 807
    .local v11, ccl:Lcom/sprint/w/installer/DownloadService$ChangeListener;
    invoke-interface {v11}, Lcom/sprint/w/installer/DownloadService$ChangeListener;->changed()V
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_17c .. :try_end_191} :catch_192

    goto :goto_182

    .line 809
    .end local v11           #ccl:Lcom/sprint/w/installer/DownloadService$ChangeListener;
    .end local v14           #i$:Ljava/util/Iterator;
    :catch_192
    move-exception v4

    .line 811
    :cond_193
    return-void

    .line 758
    .end local v10           #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    .end local v12           #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    .end local v17           #n:Landroid/app/Notification;
    .end local v18           #pi:Landroid/app/PendingIntent;
    :cond_194
    const-string v4, "com.sprint.ACTION_INSTALL_FROM_BG_DL"

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sop://install?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&notify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->getNotifyUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&fromUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&isDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_222

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&url="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_211
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_7f

    :cond_222
    const-string v4, ""

    goto :goto_211

    .line 801
    .restart local v10       #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    .restart local v12       #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v17       #n:Landroid/app/Notification;
    .restart local v18       #pi:Landroid/app/PendingIntent;
    :cond_225
    :try_start_225
    monitor-exit v5
    :try_end_226
    .catchall {:try_start_225 .. :try_end_226} :catchall_178

    goto/16 :goto_17c
.end method

.method notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "packId"
    .parameter "packName"
    .parameter "message"

    .prologue
    .line 822
    const v6, 0x1080078

    .line 823
    .local v6, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 824
    .local v12, when:J
    const v14, 0x7f0600a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sprint/w/installer/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 826
    .local v11, tickerText:Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 827
    .local v10, text:Ljava/lang/CharSequence;
    if-nez p3, :cond_e0

    .line 828
    const v14, 0x7f0600a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 833
    :goto_2b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z

    if-eqz v14, :cond_e4

    .line 834
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sop://deliverydetails?id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&packname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&status=failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 838
    .local v4, i:Landroid/content/Intent;
    :goto_63
    const/high16 v14, 0x400

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 841
    .local v8, pi:Landroid/app/PendingIntent;
    new-instance v14, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f0600a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sprint/w/installer/DownloadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 843
    .local v7, n:Landroid/app/Notification;
    const/16 v14, 0x10

    iput v14, v7, Landroid/app/Notification;->flags:I

    .line 844
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/sprint/w/installer/DownloadService$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1, v7}, Lcom/sprint/w/installer/DownloadService$4;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Landroid/app/Notification;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 849
    invoke-static/range {p0 .. p1}, Lcom/sprint/w/installer/DownloadService;->clearDownloadsForPack(Landroid/content/Context;Ljava/lang/String;)V

    .line 851
    sget-object v14, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 852
    .local v3, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v3, :cond_107

    .line 853
    iget-object v15, v3, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    monitor-enter v15

    .line 854
    :try_start_c7
    iget-object v14, v3, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_cd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_106

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sprint/w/installer/DownloadService$StatusListener;

    .line 855
    .local v9, sl:Lcom/sprint/w/installer/DownloadService$StatusListener;
    invoke-interface {v9}, Lcom/sprint/w/installer/DownloadService$StatusListener;->downloadFailed()V

    goto :goto_cd

    .line 857
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #sl:Lcom/sprint/w/installer/DownloadService$StatusListener;
    :catchall_dd
    move-exception v14

    monitor-exit v15
    :try_end_df
    .catchall {:try_start_c7 .. :try_end_df} :catchall_dd

    throw v14

    .line 830
    .end local v3           #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    .end local v4           #i:Landroid/content/Intent;
    .end local v7           #n:Landroid/app/Notification;
    .end local v8           #pi:Landroid/app/PendingIntent;
    :cond_e0
    move-object/from16 v10, p3

    goto/16 :goto_2b

    .line 836
    :cond_e4
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sop://details?product="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #i:Landroid/content/Intent;
    goto/16 :goto_63

    .line 857
    .restart local v3       #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #n:Landroid/app/Notification;
    .restart local v8       #pi:Landroid/app/PendingIntent;
    :cond_106
    :try_start_106
    monitor-exit v15
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_dd

    .line 861
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_107
    :try_start_107
    sget-object v14, Lcom/sprint/w/installer/DownloadService;->sChangeListeners:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_10d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/DownloadService$ChangeListener;

    .line 862
    .local v2, ccl:Lcom/sprint/w/installer/DownloadService$ChangeListener;
    invoke-interface {v2}, Lcom/sprint/w/installer/DownloadService$ChangeListener;->changed()V
    :try_end_11c
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_11c} :catch_11d

    goto :goto_10d

    .line 864
    .end local v2           #ccl:Lcom/sprint/w/installer/DownloadService$ChangeListener;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_11d
    move-exception v14

    .line 866
    :cond_11e
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 16
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, delayStop:Z
    if-eqz p1, :cond_26

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, action:Ljava/lang/String;
    const-string v0, "com.sprint.action.DOWNLOAD_FROM_PSI"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 130
    const-string v0, "extra.PSI_PRODUCT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "extra.PACK_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "extra.IS_DEFAULT"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-direct {p0, v0, v3, p3, v10}, Lcom/sprint/w/installer/DownloadService;->downloadPack(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v7

    .line 161
    .end local v6           #action:Ljava/lang/String;
    :cond_26
    :goto_26
    if-nez v7, :cond_33

    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 162
    invoke-virtual {p0, p3}, Lcom/sprint/w/installer/DownloadService;->stopSelf(I)V

    .line 164
    :cond_33
    const/4 v0, 0x3

    return v0

    .line 131
    .restart local v6       #action:Ljava/lang/String;
    :cond_35
    const-string v0, "com.sprint.action.DOWNLOAD_FROM_URL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 132
    const-string v0, "extra.PACK_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, url:Ljava/lang/String;
    const-string v0, "extra.PACK_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, name:Ljava/lang/String;
    const-string v0, "extra.USERID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, uid:Ljava/lang/String;
    const-string v0, "extra.PASSWORD"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, passwd:Ljava/lang/String;
    move-object v0, p0

    move v3, p3

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/DownloadService;->downloadPack(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 137
    goto :goto_26

    .end local v1           #url:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #uid:Ljava/lang/String;
    .end local v5           #passwd:Ljava/lang/String;
    :cond_5c
    const-string v0, "com.sprint.action.DOWNLOAD_FROM_DELIVERY_REQUEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v3, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 140
    .local v8, deliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    if-eqz v8, :cond_99

    .line 141
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v8, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 142
    new-instance v9, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    invoke-direct {v9, p0, v8, p3}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;-><init>(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/delivery/DeliveryRequest;I)V

    .line 143
    .local v9, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v8, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-direct {p0, v8}, Lcom/sprint/w/installer/DownloadService;->createDownloadsRecord(Lcom/sprint/w/installer/delivery/DeliveryRequest;)V

    .line 145
    invoke-virtual {v9}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->start()V

    .line 146
    const/4 v7, 0x1

    .line 147
    goto :goto_26

    .line 148
    .end local v9           #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    :cond_97
    const/4 v7, 0x0

    goto :goto_26

    .line 153
    :cond_99
    const/4 v7, 0x0

    goto :goto_26

    .line 155
    .end local v8           #deliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    :cond_9b
    const-string v0, "com.sprint.action.ACTION_CLEANUP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 156
    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/DownloadService;->addNotifications(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sprint/w/installer/DownloadService;->cleanupInProgressPacks(Landroid/content/Context;I)V

    goto/16 :goto_26
.end method

.method updateOngoingNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Z)V
    .registers 28
    .parameter "packId"
    .parameter "packName"
    .parameter "percentComplete"
    .parameter "mPackFilePath"
    .parameter "fromUrl"
    .parameter "url"
    .parameter "isDefault"

    .prologue
    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DownloadService;->updateDownloadsProgress(Ljava/lang/String;ILjava/lang/String;)V

    .line 697
    const v9, 0x1080081

    .line 698
    .local v9, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 699
    .local v15, when:J
    const-string v14, ""

    .line 700
    .local v14, tickerText:Ljava/lang/CharSequence;
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 701
    .local v10, n:Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 703
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f03000c

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 705
    .local v5, contentView:Landroid/widget/RemoteViews;
    const v17, 0x7f0c002b

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 706
    const v17, 0x7f0c002c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 707
    const v17, 0x7f0c002d

    const/16 v18, 0x64

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 708
    iput-object v5, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 709
    new-instance v13, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v13}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 710
    .local v13, sp:Lcom/sprint/w/installer/psi/ServicePack;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z

    move/from16 v17, v0

    if-eqz v17, :cond_140

    .line 714
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sop://deliverydetails?id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&packname="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 718
    .local v7, i:Landroid/content/Intent;
    :goto_d8
    const/high16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 719
    const-string v17, "extra.IS_DEFAULT"

    move-object/from16 v0, v17

    move/from16 v1, p7

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 722
    .local v11, pi:Landroid/app/PendingIntent;
    iput-object v11, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sprint/w/installer/DownloadService$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v10}, Lcom/sprint/w/installer/DownloadService$1;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Landroid/app/Notification;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    sget-object v17, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    .line 730
    .local v6, dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    if-eqz v6, :cond_18f

    .line 731
    iget-object v0, v6, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 732
    :try_start_123
    iget-object v0, v6, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_12b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sprint/w/installer/DownloadService$StatusListener;

    .line 733
    .local v12, sl:Lcom/sprint/w/installer/DownloadService$StatusListener;
    move/from16 v0, p3

    invoke-interface {v12, v0}, Lcom/sprint/w/installer/DownloadService$StatusListener;->progressChanged(I)V

    goto :goto_12b

    .line 735
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #sl:Lcom/sprint/w/installer/DownloadService$StatusListener;
    :catchall_13d
    move-exception v17

    monitor-exit v18
    :try_end_13f
    .catchall {:try_start_123 .. :try_end_13f} :catchall_13d

    throw v17

    .line 716
    .end local v6           #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    .end local v7           #i:Landroid/content/Intent;
    .end local v11           #pi:Landroid/app/PendingIntent;
    :cond_140
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    if-eqz p5, :cond_172

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sop://rssDetails?url="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_165
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v7       #i:Landroid/content/Intent;
    goto/16 :goto_d8

    .end local v7           #i:Landroid/content/Intent;
    :cond_172
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sop://details?product="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_165

    .line 735
    .restart local v6       #dt:Lcom/sprint/w/installer/DownloadService$DownloaderThread;
    .restart local v7       #i:Landroid/content/Intent;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #pi:Landroid/app/PendingIntent;
    :cond_18e
    :try_start_18e
    monitor-exit v18
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_13d

    .line 739
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_18f
    :try_start_18f
    sget-object v17, Lcom/sprint/w/installer/DownloadService;->sChangeListeners:Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_195
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprint/w/installer/DownloadService$ChangeListener;

    .line 740
    .local v4, cl:Lcom/sprint/w/installer/DownloadService$ChangeListener;
    invoke-interface {v4}, Lcom/sprint/w/installer/DownloadService$ChangeListener;->changed()V
    :try_end_1a4
    .catch Ljava/lang/RuntimeException; {:try_start_18f .. :try_end_1a4} :catch_1a5

    goto :goto_195

    .line 742
    .end local v4           #cl:Lcom/sprint/w/installer/DownloadService$ChangeListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catch_1a5
    move-exception v17

    .line 744
    :cond_1a6
    return-void
.end method
