.class public final Lbd;
.super Landroid/content/BroadcastReceiver;
.source "a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Landroid/app/PendingIntent;

.field public d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/app/ActivityManager;

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lbd;->g:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbd;->d:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbd;->a:Ljava/util/HashSet;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lbd;->c:Landroid/app/PendingIntent;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbd;->b:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.locationlabs.v3client.action.POKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lbd;->g:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lbd;->g:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lbd;->h:Landroid/app/ActivityManager;

    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbd;->e:Z

    .line 222
    iget-object v0, p0, Lbd;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_6
    iget-object v1, p0, Lbd;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 224
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbd;->f:Z

    .line 250
    :cond_f
    :goto_f
    return-void

    .line 236
    :cond_10
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbd;->f:Z

    .line 239
    iget-object v0, p0, Lbd;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_1e
    iget-object v1, p0, Lbd;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 241
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_25

    goto :goto_f

    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1

    .line 243
    :cond_28
    const-string v1, "com.locationlabs.v3client.action.POKE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 244
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lbd;->i:J

    .line 246
    iget-object v0, p0, Lbd;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_37
    iget-object v1, p0, Lbd;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 248
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    goto :goto_f

    :catchall_3e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0xbb8

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 121
    iput-boolean v4, p0, Lbd;->e:Z

    .line 122
    iput-boolean v5, p0, Lbd;->f:Z

    .line 127
    iput-wide v6, p0, Lbd;->i:J

    .line 130
    :cond_c
    iget-boolean v0, p0, Lbd;->e:Z

    if-eqz v0, :cond_f0

    .line 132
    iget-object v0, p0, Lbd;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 133
    :goto_28
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v2, "com.android.voicedialer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v0, v4

    .line 139
    :goto_39
    if-nez v0, :cond_45

    iget-object v0, p0, Lbd;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-boolean v0, p0, Lbd;->b:Z

    .line 142
    :cond_45
    :goto_45
    if-eqz v0, :cond_cc

    .line 143
    iget-wide v0, p0, Lbd;->i:J

    const-wide/16 v2, 0x14

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    iput-wide v0, p0, Lbd;->i:J

    .line 144
    iget-wide v0, p0, Lbd;->i:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_59

    iput-wide v8, p0, Lbd;->i:J

    .line 176
    :cond_59
    :goto_59
    :try_start_59
    iget-object v0, p0, Lbd;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_ed

    .line 178
    :try_start_5c
    iget-object v1, p0, Lbd;->d:Ljava/lang/Object;

    iget-wide v2, p0, Lbd;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 179
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_ea

    .line 187
    :goto_64
    iget-boolean v0, p0, Lbd;->f:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lbd;->e:Z

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lbd;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_6f
    iget-object v1, p0, Lbd;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_76
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_74} :catch_f6

    .line 194
    :goto_74
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_76

    goto :goto_64

    :catchall_76
    move-exception v1

    monitor-exit v0

    throw v1

    .line 132
    :cond_79
    const/4 v0, 0x0

    goto :goto_28

    .line 138
    :cond_7b
    const-string v2, "com.android.phone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    sget-boolean v2, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b:Z

    if-nez v2, :cond_8f

    const-string v2, "com.android.phone.EmergencyDialer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    :cond_8f
    move v0, v4

    goto :goto_39

    :cond_91
    move v0, v5

    goto :goto_39

    :cond_93
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    const-class v2, Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-class v2, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    :cond_b9
    move v0, v4

    goto/16 :goto_39

    :cond_bc
    move v0, v5

    goto/16 :goto_39

    :cond_bf
    move v0, v5

    goto/16 :goto_39

    .line 139
    :cond_c2
    iget-boolean v0, p0, Lbd;->b:Z

    if-nez v0, :cond_c9

    move v0, v4

    goto/16 :goto_45

    :cond_c9
    move v0, v5

    goto/16 :goto_45

    .line 150
    :cond_cc
    iget-object v0, p0, Lbd;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_59

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    iget-object v1, p0, Lbd;->g:Landroid/content/Context;

    const-class v2, Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const/high16 v1, 0x30a0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lbd;->g:Landroid/content/Context;

    invoke-static {v1, v0}, La;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 160
    iput-wide v6, p0, Lbd;->i:J

    goto/16 :goto_59

    .line 179
    :catchall_ea
    move-exception v1

    :try_start_eb
    monitor-exit v0

    throw v1
    :try_end_ed
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ed} :catch_ed

    .line 183
    :catch_ed
    move-exception v0

    goto/16 :goto_64

    .line 199
    :cond_f0
    iget-object v0, p0, Lbd;->g:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void

    :catch_f6
    move-exception v1

    goto/16 :goto_74
.end method
