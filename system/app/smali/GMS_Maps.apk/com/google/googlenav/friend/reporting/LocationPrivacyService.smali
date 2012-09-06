.class public Lcom/google/googlenav/friend/reporting/LocationPrivacyService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:LQ/a;

.field private c:Lcom/google/googlenav/friend/history/w;

.field private d:Lcom/google/googlenav/friend/history/s;

.field private e:Lcom/google/googlenav/friend/reporting/s;

.field private f:Lcom/google/googlenav/friend/reporting/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    const-string v0, "LocationPrivacyService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 171
    new-instance v0, Lcom/google/googlenav/friend/U;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/google/googlenav/friend/U;-><init>(ILcom/google/googlenav/friend/as;Lcom/google/googlenav/android/Y;Z)V

    .line 178
    invoke-virtual {v0}, Lcom/google/googlenav/friend/U;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/V;

    .line 181
    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/google/googlenav/friend/V;->a:Z

    if-nez v1, :cond_15

    .line 216
    :cond_14
    :goto_14
    return-void

    .line 188
    :cond_15
    new-instance v1, Lcom/google/googlenav/friend/ag;

    new-instance v2, Lcom/google/googlenav/friend/W;

    iget-object v0, v0, Lcom/google/googlenav/friend/V;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v2, v0}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 190
    invoke-virtual {v1}, Lcom/google/googlenav/friend/ag;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 215
    :goto_2c
    invoke-virtual {v1}, Lcom/google/googlenav/friend/ag;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->b(Z)V

    goto :goto_14

    .line 192
    :pswitch_34
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->a()Z

    move-result v0

    if-nez v0, :cond_48

    .line 195
    invoke-static {}, Lcom/google/googlenav/friend/af;->E()V

    .line 199
    :goto_3d
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->f()V

    .line 200
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V

    goto :goto_2c

    .line 197
    :cond_48
    invoke-static {}, Lcom/google/googlenav/friend/af;->F()V

    goto :goto_3d

    .line 203
    :pswitch_4c
    invoke-static {}, Lcom/google/googlenav/friend/af;->F()V

    .line 204
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->g()V

    .line 205
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    goto :goto_2c

    .line 208
    :pswitch_5a
    invoke-static {}, Lcom/google/googlenav/friend/af;->F()V

    .line 209
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->h()V

    .line 210
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    goto :goto_2c

    .line 190
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_34
        :pswitch_4c
        :pswitch_5a
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/common/a;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 81
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 83
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long v2, v1, v3

    .line 85
    const/4 v1, 0x2

    const-wide/32 v4, 0x2932e00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 87
    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->b:LQ/a;

    invoke-virtual {v0}, LQ/a;->a()V

    .line 137
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->f:Lcom/google/googlenav/friend/reporting/e;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/e;->a()Z

    move-result v0

    if-nez v0, :cond_44

    .line 138
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    .line 148
    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->d:Lcom/google/googlenav/friend/history/s;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/s;->a()V

    .line 155
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_43

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->e:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/s;->b()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->c:Lcom/google/googlenav/friend/history/w;

    new-instance v1, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v1}, Lcom/google/googlenav/friend/history/b;-><init>()V

    new-instance v2, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v2}, Lcom/google/googlenav/friend/history/b;-><init>()V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Z)Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_43

    .line 167
    :cond_43
    return-void

    .line 140
    :cond_44
    invoke-direct {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a()V

    goto :goto_14
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 95
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 96
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 99
    :cond_c
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 100
    const/4 v1, 0x1

    const-string v2, "LocationPrivacyService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    .line 101
    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->b:LQ/a;

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->b:LQ/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/a;->a(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/google/googlenav/friend/history/s;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/friend/history/s;-><init>(Landroid/content/Context;LaT/b;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->d:Lcom/google/googlenav/friend/history/s;

    .line 106
    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 108
    invoke-static {p0, v0}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->e:Lcom/google/googlenav/friend/reporting/s;

    .line 111
    new-instance v0, Lcom/google/googlenav/friend/history/w;

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->d:Lcom/google/googlenav/friend/history/s;

    new-instance v2, Lcom/google/googlenav/friend/history/n;

    invoke-direct {v2}, Lcom/google/googlenav/friend/history/n;-><init>()V

    new-instance v3, Lcom/google/googlenav/friend/history/L;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/friend/history/L;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->e:Lcom/google/googlenav/friend/reporting/s;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/friend/history/w;-><init>(Lcom/google/googlenav/friend/history/s;Lcom/google/googlenav/friend/history/n;Lcom/google/googlenav/friend/history/L;Lcom/google/googlenav/friend/reporting/s;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->c:Lcom/google/googlenav/friend/history/w;

    .line 115
    new-instance v0, Lcom/google/googlenav/friend/reporting/e;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->f:Lcom/google/googlenav/friend/reporting/e;

    .line 116
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 126
    return-void

    .line 124
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
