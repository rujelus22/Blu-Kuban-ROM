.class public Lcom/google/googlenav/friend/reporting/LocationReportingService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:LQ/a;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Lcom/google/googlenav/friend/reporting/g;

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:Lcom/google/googlenav/friend/reporting/n;

.field private f:Lcom/google/googlenav/friend/reporting/s;

.field private g:Lcom/google/googlenav/friend/reporting/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "LocationReportingService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method a(Lcom/google/googlenav/friend/f;)Lcom/google/googlenav/friend/h;
    .registers 3
    .parameter

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/google/googlenav/friend/f;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/h;

    .line 229
    return-object v0
.end method

.method a(Landroid/content/Intent;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a:LQ/a;

    invoke-virtual {v0}, LQ/a;->a()V

    .line 116
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/g;->b()Ljava/util/List;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->g:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/d;->b()Ljava/util/List;
    :try_end_13
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_8 .. :try_end_13} :catch_c2

    move-result-object v2

    .line 130
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 223
    :cond_1a
    :goto_1a
    return-void

    .line 136
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/reporting/k;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/k;->e()J

    move-result-wide v3

    .line 138
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->b()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 140
    :try_start_31
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/g;->c()V

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->g:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/d;->c()V
    :try_end_3b
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_1a

    .line 142
    :catch_3c
    move-exception v0

    goto :goto_1a

    .line 150
    :cond_3e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0, v7}, Lcom/google/googlenav/friend/reporting/s;->b(Z)Ljava/util/List;

    move-result-object v0

    .line 161
    new-instance v5, Lcom/google/googlenav/friend/f;

    invoke-direct {v5, v1, v0, v2}, Lcom/google/googlenav/friend/f;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 166
    invoke-virtual {p0, v5}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a(Lcom/google/googlenav/friend/f;)Lcom/google/googlenav/friend/h;

    move-result-object v2

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/af;->a(J)V

    .line 169
    if-eqz v2, :cond_1a

    iget-boolean v0, v2, Lcom/google/googlenav/friend/h;->a:Z

    if-eqz v0, :cond_1a

    .line 176
    :try_start_66
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/friend/reporting/g;->a(J)V

    .line 177
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->g:Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/friend/reporting/d;->a(J)V
    :try_end_70
    .catch Lcom/google/googlenav/friend/reporting/b; {:try_start_66 .. :try_end_70} :catch_bf

    .line 184
    iget-object v0, v2, Lcom/google/googlenav/friend/h;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 186
    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 190
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/n;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/n;->b()V

    .line 195
    :cond_83
    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 196
    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 199
    packed-switch v1, :pswitch_data_c6

    .line 215
    :cond_94
    :goto_94
    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 216
    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/s;->b()Z

    move-result v1

    if-eq v1, v0, :cond_1a

    .line 220
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/reporting/s;->a(Z)V

    goto/16 :goto_1a

    .line 201
    :pswitch_ad
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->h()V

    .line 204
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/n;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/n;->b()V

    goto :goto_94

    .line 207
    :pswitch_b6
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->g()V

    .line 210
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/n;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/n;->b()V

    goto :goto_94

    .line 178
    :catch_bf
    move-exception v0

    goto/16 :goto_1a

    .line 126
    :catch_c2
    move-exception v0

    goto/16 :goto_1a

    .line 199
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_ad
    .end packed-switch
.end method

.method a()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 239
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 75
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 76
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 79
    :cond_c
    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a:LQ/a;

    .line 80
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a:LQ/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/a;->a(Landroid/content/Context;)V

    .line 82
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->b:Landroid/net/ConnectivityManager;

    .line 83
    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 85
    invoke-static {p0, v0}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/s;

    .line 87
    new-instance v1, Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/s;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/googlenav/friend/reporting/g;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;Lcom/google/googlenav/friend/reporting/s;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/g;

    .line 89
    new-instance v0, Lcom/google/googlenav/friend/reporting/d;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/s;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/friend/reporting/d;-><init>(Landroid/content/Context;LaT/b;Lcom/google/googlenav/friend/reporting/s;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->g:Lcom/google/googlenav/friend/reporting/d;

    .line 91
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 92
    const/4 v1, 0x1

    const-string v2, "LocationReportingService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    .line 93
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/n;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/n;

    .line 94
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 105
    return-void

    .line 102
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
