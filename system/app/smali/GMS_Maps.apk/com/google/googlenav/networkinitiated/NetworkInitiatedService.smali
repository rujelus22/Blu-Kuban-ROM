.class public Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 222
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    invoke-virtual {v0}, Las/f;->q()V

    .line 226
    :cond_9
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 227
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->u()V

    .line 229
    :cond_16
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 230
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c()V

    .line 231
    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {p0}, LQ/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    :cond_7
    :goto_7
    return-void

    .line 145
    :cond_8
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lcom/google/googlenav/K;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/M;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 149
    invoke-static {}, Lcom/google/googlenav/friend/af;->J()V

    goto :goto_7

    .line 156
    :cond_19
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 157
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    .line 158
    if-nez v0, :cond_5d

    .line 159
    invoke-static {p0, v1}, Las/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/Y;)Las/f;

    move-result-object v0

    .line 167
    :goto_26
    invoke-static {v1, v1, v1}, Lcom/google/googlenav/friend/ae;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/bk;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 171
    invoke-virtual {v0}, Las/f;->r()V

    .line 175
    invoke-virtual {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 176
    invoke-virtual {v0}, Las/f;->k()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v0}, Las/f;->o()Z

    move-result v2

    if-nez v2, :cond_46

    .line 177
    invoke-virtual {v0, v1}, Las/f;->b(Las/g;)V

    .line 180
    :cond_46
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    if-eqz p1, :cond_7

    .line 187
    const-string v0, "remote_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 188
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->b()V

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Landroid/content/Intent;)V

    goto :goto_7

    .line 164
    :cond_5d
    invoke-virtual {v0}, Las/f;->a()V

    goto :goto_26
.end method

.method static synthetic a(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V
    .registers 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c()V

    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 240
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 245
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 247
    :cond_d
    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/networkinitiated/b;

    .line 204
    invoke-interface {v0, p1}, Lcom/google/googlenav/networkinitiated/b;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 205
    invoke-interface {v0, p1}, Lcom/google/googlenav/networkinitiated/b;->b(Landroid/content/Intent;)V

    .line 206
    const/4 v0, 0x1

    :goto_1e
    move v1, v0

    goto :goto_8

    .line 209
    :cond_20
    if-nez v1, :cond_22

    .line 212
    :cond_22
    return-void

    :cond_23
    move v0, v1

    goto :goto_1e
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 87
    :cond_c
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 90
    const/4 v1, 0x1

    const-string v2, "NetworkInitiatedService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    .line 92
    new-instance v0, Lcom/google/googlenav/networkinitiated/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/networkinitiated/e;-><init>(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->b:Landroid/os/Handler;

    .line 99
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/a;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/h;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/m;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->d:Ljava/util/List;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 218
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a()V

    .line 219
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Landroid/content/Intent;I)V

    .line 123
    const/4 v0, 0x3

    return v0
.end method
