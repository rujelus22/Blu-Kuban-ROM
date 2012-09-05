.class Lcom/google/android/marvin/talkback/ak;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/google/android/marvin/utils/n;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/marvin/talkback/n;

.field private final c:Lcom/google/android/marvin/talkback/l;

.field private final d:Landroid/media/AudioManager;

.field private final e:Landroid/telephony/TelephonyManager;

.field private final f:Lcom/google/android/marvin/talkback/s;

.field private g:Lcom/google/android/marvin/utils/p;

.field private final h:Landroid/content/IntentFilter;

.field private i:Z

.field private j:J

.field private k:Z

.field private l:Z

.field private final m:Lcom/google/android/marvin/utils/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/n;Lcom/google/android/marvin/talkback/l;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/google/android/marvin/talkback/s;)V
    .registers 9

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ak;->h:Landroid/content/IntentFilter;

    new-instance v0, Lcom/google/android/marvin/talkback/f;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/f;-><init>(Lcom/google/android/marvin/talkback/ak;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ak;->m:Lcom/google/android/marvin/utils/h;

    iput-object p1, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/ak;->b:Lcom/google/android/marvin/talkback/n;

    iput-object p3, p0, Lcom/google/android/marvin/talkback/ak;->c:Lcom/google/android/marvin/talkback/l;

    iput-object p4, p0, Lcom/google/android/marvin/talkback/ak;->d:Landroid/media/AudioManager;

    iput-object p5, p0, Lcom/google/android/marvin/talkback/ak;->e:Landroid/telephony/TelephonyManager;

    iput-object p6, p0, Lcom/google/android/marvin/talkback/ak;->f:Lcom/google/android/marvin/talkback/s;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->h:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->h:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->h:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->h:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/ak;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/marvin/talkback/ak;->j:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/ak;)Lcom/google/android/marvin/talkback/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->c:Lcom/google/android/marvin/talkback/l;

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 8

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    const-class v1, Lcom/google/android/marvin/talkback/TalkBackService;

    const/4 v2, 0x6

    const-string v3, "Unknown ringer mode: %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    return-void

    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_26
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :pswitch_38
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->d:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->d:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x14

    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    const v2, 0x7f070038

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/ak;)Lcom/google/android/marvin/talkback/n;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->b:Lcom/google/android/marvin/talkback/n;

    return-object v0
.end method

.method private b(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/ak;->k:Z

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->g:Lcom/google/android/marvin/utils/p;

    if-nez v1, :cond_1b

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v1, Lcom/google/android/marvin/utils/p;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/marvin/utils/p;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/ak;->g:Lcom/google/android/marvin/utils/p;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->g:Lcom/google/android/marvin/utils/p;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/ak;->m:Lcom/google/android/marvin/utils/h;

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/utils/p;->a(Lcom/google/android/marvin/utils/h;)V

    :cond_1b
    if-eqz p1, :cond_25

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->g:Lcom/google/android/marvin/utils/p;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/p;->b()V

    goto :goto_a

    :cond_25
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->g:Lcom/google/android/marvin/utils/p;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/p;->a()V

    goto :goto_a
.end method


# virtual methods
.method public final a()Landroid/content/IntentFilter;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->h:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/google/android/marvin/talkback/ak;->l:Z

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/marvin/talkback/ak;->k:Z

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/ak;->k:Z

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ak;->b(Z)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/ak;->i:Z

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ak;->b(Z)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/ak;->l:Z

    if-nez v0, :cond_12

    const-class v0, Lcom/google/android/marvin/talkback/ak;

    const-string v1, "Service not initialized during  broadcast."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ak;->a(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->c:Lcom/google/android/marvin/talkback/l;

    sget-object v2, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    goto :goto_11

    :cond_2e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    iput-boolean v5, p0, Lcom/google/android/marvin/talkback/ak;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/marvin/talkback/ak;->j:J

    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/ak;->b(Z)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_11

    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x1401

    iget-object v2, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/16 v0, 0x1481

    :cond_5e
    iget-object v2, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->f:Lcom/google/android/marvin/talkback/s;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/s;->b()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/marvin/talkback/ak;->f:Lcom/google/android/marvin/talkback/s;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/s;->a()V

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/ak;->a(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->c:Lcom/google/android/marvin/talkback/l;

    sget-object v2, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    goto :goto_11

    :cond_8c
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iput-boolean v6, p0, Lcom/google/android/marvin/talkback/ak;->i:Z

    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/ak;->b(Z)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ak;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_11

    :cond_a5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/marvin/talkback/ak;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v7, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ak;->a(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->c:Lcom/google/android/marvin/talkback/l;

    sget-object v2, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    goto/16 :goto_11

    :cond_cf
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->a:Landroid/content/Context;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v7, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ak;->c:Lcom/google/android/marvin/talkback/l;

    sget-object v2, Lcom/google/android/marvin/talkback/t;->c:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    goto/16 :goto_11

    :cond_f1
    const-class v1, Lcom/google/android/marvin/talkback/TalkBackService;

    const-string v2, "Registered for but not handling action %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v4, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11
.end method
