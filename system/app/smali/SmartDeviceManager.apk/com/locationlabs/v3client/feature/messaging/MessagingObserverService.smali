.class public Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;
.super Landroid/app/Service;
.source "a"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile b:Z

.field private static volatile c:Z


# instance fields
.field private a:Lad;

.field private d:Z

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/content/BroadcastReceiver;

.field private g:Lcom/locationlabs/v3client/feature/polling/PollingService;

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 152
    sput-boolean v0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->b:Z

    .line 153
    sput-boolean v0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->d:Z

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->e:Landroid/os/Handler;

    .line 223
    new-instance v0, Lba;

    invoke-direct {v0, p0}, Lba;-><init>(Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->f:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lbb;

    invoke-direct {v0, p0}, Lbb;-><init>(Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->h:Landroid/content/ServiceConnection;

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;Lcom/locationlabs/v3client/feature/polling/PollingService;)Lcom/locationlabs/v3client/feature/polling/PollingService;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->g:Lcom/locationlabs/v3client/feature/polling/PollingService;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "com.locationlabs.v3client.messaging.action.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    if-eqz v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v0}, Lad;->c()V

    .line 216
    :cond_9
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 81
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->d:Z

    if-eqz v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->d:Z

    .line 85
    :cond_f
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    if-eqz v0, :cond_1b

    .line 86
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v0}, Lad;->b()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    .line 90
    :cond_1b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 97
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 99
    :cond_c
    :goto_c
    return v4

    .line 97
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.messaging.action.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    if-nez v0, :cond_45

    new-instance v0, Lad;

    invoke-direct {v0, p0}, Lad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    :goto_24
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->d:Z

    if-nez v0, :cond_3a

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.locationlabs.v3client.BROADCAST_DO_POLL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->f:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->e:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3a
    iput-boolean v4, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c

    :cond_45
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v0}, Lad;->b()V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v0}, Lad;->a()V

    goto :goto_24

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public run()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x3e8

    .line 157
    const-class v0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    monitor-enter v0

    .line 158
    :try_start_5
    sget-boolean v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->b:Z

    if-eqz v1, :cond_e

    .line 159
    const/4 v1, 0x1

    sput-boolean v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->c:Z

    .line 160
    monitor-exit v0

    .line 207
    :goto_d
    return-void

    .line 162
    :cond_e
    const/4 v1, 0x1

    sput-boolean v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->b:Z

    .line 163
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_128

    .line 167
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    const-string v2, "SMS_INCOMING_MAX_AGE_MILLIS"

    invoke-static {v2}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 169
    const-string v4, "SMS_OUTGOING_MAX_AGE_MILLIS"

    invoke-static {v4}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 170
    const-string v6, "MMS_INCOMING_MAX_AGE_MILLIS"

    invoke-static {v6}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v6

    .line 171
    const-string v8, "MMS_OUTGOING_MAX_AGE_MILLIS"

    invoke-static {v8}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 173
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v10

    .line 175
    sget-object v11, Ldg;->e:Ldg;

    invoke-interface {v10, v11}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_71

    .line 176
    invoke-interface {v10}, Lw;->v()J

    move-result-wide v11

    sub-long v4, v0, v4

    div-long/2addr v4, v13

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sms/outgoing since "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Li;->c(Ljava/lang/String;)V

    .line 178
    iget-object v11, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v11, v4, v5}, Lad;->c(J)V

    .line 179
    iget-object v4, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v4}, Lad;->d()J

    move-result-wide v4

    invoke-interface {v10, v4, v5}, Lw;->a(J)V

    .line 181
    :cond_71
    sget-object v4, Ldg;->f:Ldg;

    invoke-interface {v10, v4}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 182
    invoke-interface {v10}, Lw;->w()J

    move-result-wide v4

    sub-long v2, v0, v2

    div-long/2addr v2, v13

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms/incoming since "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li;->c(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v4, v2, v3}, Lad;->d(J)V

    .line 186
    invoke-interface {v10, v0, v1}, Lw;->b(J)V

    .line 188
    :cond_a6
    sget-object v2, Ldg;->h:Ldg;

    invoke-interface {v10, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 189
    invoke-interface {v10}, Lw;->x()J

    move-result-wide v2

    sub-long v4, v0, v8

    div-long/2addr v4, v13

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mms/outgoing since "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li;->c(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v4, v2, v3}, Lad;->a(J)V

    .line 192
    iget-object v2, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v2}, Lad;->e()J

    move-result-wide v2

    invoke-interface {v10, v2, v3}, Lw;->c(J)V

    .line 194
    :cond_e1
    sget-object v2, Ldg;->i:Ldg;

    invoke-interface {v10, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 195
    invoke-interface {v10}, Lw;->y()J

    move-result-wide v2

    sub-long/2addr v0, v6

    div-long/2addr v0, v13

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mms/incoming since "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li;->c(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v2, v0, v1}, Lad;->b(J)V

    .line 198
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a:Lad;

    invoke-virtual {v0}, Lad;->f()J

    move-result-wide v0

    invoke-interface {v10, v0, v1}, Lw;->d(J)V

    .line 201
    :cond_11b
    const-class v0, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    monitor-enter v0

    .line 202
    :try_start_11e
    sget-boolean v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->c:Z

    if-eqz v1, :cond_12b

    .line 203
    const/4 v1, 0x0

    sput-boolean v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->c:Z
    :try_end_125
    .catchall {:try_start_11e .. :try_end_125} :catchall_131

    .line 209
    monitor-exit v0

    goto/16 :goto_12

    .line 163
    :catchall_128
    move-exception v1

    monitor-exit v0

    throw v1

    .line 206
    :cond_12b
    const/4 v1, 0x0

    :try_start_12c
    sput-boolean v1, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->b:Z

    .line 207
    monitor-exit v0
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_131

    goto/16 :goto_d

    .line 209
    :catchall_131
    move-exception v1

    monitor-exit v0

    throw v1
.end method
