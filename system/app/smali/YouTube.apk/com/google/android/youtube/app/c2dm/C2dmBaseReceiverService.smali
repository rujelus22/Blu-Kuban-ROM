.class public abstract Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const-string v0, "notification.android@gmail.com"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 83
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 84
    const/4 v1, 0x1

    const-string v2, "C2DM_LIB"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x2

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->b(Z)V

    .line 103
    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 104
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "youtube"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v3, :cond_45

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "c2dm_device_registration_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    :cond_42
    :goto_42
    return-void

    :cond_43
    move v0, v1

    .line 102
    goto :goto_10

    .line 104
    :cond_45
    if-eqz v2, :cond_be

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "c2dm_device_registration_id"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration error "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p0, v2}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "c2dm_backoff"

    const-wide/16 v2, 0x7530

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling registration retry, backoff = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    mul-long v0, v2, v7

    const-wide/32 v5, 0x1b77400

    cmp-long v0, v0, v5

    if-gez v0, :cond_e9

    mul-long v0, v2, v7

    :goto_b0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "c2dm_backoff"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_42

    :cond_be
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "c2dm_device_registration_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_42

    .line 105
    :cond_cd
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 106
    invoke-virtual {p0, p0, p1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_42

    .line 107
    :cond_de
    const-string v0, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_42

    :cond_e9
    move-wide v0, v2

    goto :goto_b0
.end method
