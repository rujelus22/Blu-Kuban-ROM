.class public Lcom/google/googlenav/friend/checkins/CheckinNotificationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/friend/bx;

.field private b:Landroid/net/wifi/WifiManager;

.field private c:Lcom/google/googlenav/friend/android/a;

.field private d:LQ/a;

.field private e:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    const-string v0, "CheckinNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 214
    :cond_e
    return-void

    .line 211
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 212
    const/4 v2, 0x6

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_13
.end method

.method private b(Landroid/location/Location;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 217
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->B:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 219
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 220
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 221
    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c(Landroid/location/Location;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 222
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 223
    return-object v0
.end method

.method private static c(Landroid/location/Location;)I
    .registers 3
    .parameter

    .prologue
    .line 227
    invoke-static {p0}, Lap/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lap/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 229
    const/4 v0, 0x2

    .line 233
    :goto_b
    return v0

    .line 230
    :cond_c
    invoke-static {v0}, Lap/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 231
    const/4 v0, 0x1

    goto :goto_b

    .line 233
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method a(Landroid/location/Location;)Lcom/google/googlenav/friend/checkins/c;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    new-instance v3, Lcom/google/googlenav/friend/checkins/c;

    invoke-direct {v3}, Lcom/google/googlenav/friend/checkins/c;-><init>()V

    .line 117
    iput-object p1, v3, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lcom/google/googlenav/friend/bx;

    if-nez v0, :cond_15

    .line 124
    new-instance v0, Lcom/google/googlenav/friend/bx;

    invoke-direct {v0}, Lcom/google/googlenav/friend/bx;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lcom/google/googlenav/friend/bx;

    .line 128
    :cond_15
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->b(Landroid/location/Location;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 132
    iget-object v0, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lcom/google/googlenav/friend/bx;

    iget-object v4, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/friend/bx;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 135
    invoke-static {p1}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c(Landroid/location/Location;)I

    move-result v0

    iput v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    .line 136
    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    if-ne v0, v1, :cond_3c

    iget-object v0, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-nez v0, :cond_3c

    .line 142
    const/4 v0, 0x0

    .line 167
    :goto_3b
    return-object v0

    .line 145
    :cond_3c
    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->c:Z

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lcom/google/googlenav/friend/bx;

    iget v4, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    invoke-virtual {v0, v4}, Lcom/google/googlenav/friend/bx;->a(I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    .line 150
    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    iget-boolean v4, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    invoke-static {p0, v0, v4}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;IZ)V

    .line 155
    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->c:Z

    if-nez v0, :cond_74

    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    if-eqz v0, :cond_74

    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    if-eq v0, v5, :cond_74

    move v0, v1

    :goto_62
    iput-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->e:Z

    .line 157
    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->c:Z

    if-eqz v0, :cond_76

    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    if-nez v0, :cond_76

    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    if-eq v0, v5, :cond_76

    :goto_70
    iput-boolean v1, v3, Lcom/google/googlenav/friend/checkins/c;->f:Z

    move-object v0, v3

    .line 167
    goto :goto_3b

    :cond_74
    move v0, v2

    .line 155
    goto :goto_62

    :cond_76
    move v1, v2

    .line 157
    goto :goto_70
.end method

.method a(Lcom/google/googlenav/friend/checkins/c;)V
    .registers 4
    .parameter

    .prologue
    .line 178
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/google/googlenav/friend/Y;->k()Z

    move-result v1

    .line 181
    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    .line 182
    :goto_11
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v1

    .line 185
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c:Lcom/google/googlenav/friend/android/a;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/checkins/c;)V

    .line 196
    :cond_1e
    return-void

    .line 181
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 72
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 73
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 76
    :cond_c
    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->d:LQ/a;

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->d:LQ/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/a;->a(Landroid/content/Context;)V

    .line 78
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->b:Landroid/net/wifi/WifiManager;

    .line 79
    new-instance v0, Lcom/google/googlenav/friend/checkins/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/checkins/b;-><init>()V

    .line 80
    new-instance v1, Lcom/google/googlenav/friend/android/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/googlenav/friend/android/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/p;Lcom/google/googlenav/friend/checkins/b;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c:Lcom/google/googlenav/friend/android/a;

    .line 82
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    const/4 v1, 0x1

    const-string v2, "CheckinsNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    .line 84
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->d:LQ/a;

    invoke-virtual {v0}, LQ/a;->a()V

    .line 91
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a(Landroid/location/Location;)Lcom/google/googlenav/friend/checkins/c;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1b

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a(Lcom/google/googlenav/friend/checkins/c;)V

    .line 100
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lcom/google/googlenav/friend/bx;

    if-eqz v0, :cond_24

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lcom/google/googlenav/friend/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bx;->d()V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    .line 104
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 106
    return-void

    .line 104
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
