.class public Lcom/samsung/swift/notification/SwiftNotificationManager;
.super Ljava/lang/Object;
.source "SwiftNotificationManager.java"


# static fields
.field private static instance:Lcom/samsung/swift/notification/SwiftNotificationManager;


# instance fields
.field private nextId:I

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/swift/notification/SwiftNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/notification/SwiftNotificationManager;->nextId:I

    .line 113
    return-void
.end method

.method public static instance()Lcom/samsung/swift/notification/SwiftNotificationManager;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance:Lcom/samsung/swift/notification/SwiftNotificationManager;

    if-nez v0, :cond_b

    .line 104
    new-instance v0, Lcom/samsung/swift/notification/SwiftNotificationManager;

    invoke-direct {v0}, Lcom/samsung/swift/notification/SwiftNotificationManager;-><init>()V

    sput-object v0, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance:Lcom/samsung/swift/notification/SwiftNotificationManager;

    .line 106
    :cond_b
    sget-object v0, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance:Lcom/samsung/swift/notification/SwiftNotificationManager;

    return-object v0
.end method

.method private declared-synchronized nextId()I
    .registers 3

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/notification/SwiftNotificationManager;->nextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/swift/notification/SwiftNotificationManager;->nextId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel(Lcom/samsung/swift/notification/SwiftNotification;)V
    .registers 4
    .parameter "notification"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/notification/SwiftNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/samsung/swift/notification/SwiftNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Lcom/samsung/swift/notification/SwiftNotification;)V
    .registers 4
    .parameter "notification"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/swift/notification/SwiftNotification;->getId()I

    move-result v0

    .line 125
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 127
    invoke-direct {p0}, Lcom/samsung/swift/notification/SwiftNotificationManager;->nextId()I

    move-result v0

    .line 129
    :cond_c
    iget-object v1, p0, Lcom/samsung/swift/notification/SwiftNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/samsung/swift/notification/SwiftNotification;->setId(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 131
    monitor-exit p0

    return-void

    .line 124
    .end local v0           #id:I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method
