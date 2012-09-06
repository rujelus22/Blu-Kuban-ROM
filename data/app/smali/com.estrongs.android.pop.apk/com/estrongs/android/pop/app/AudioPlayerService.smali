.class public Lcom/estrongs/android/pop/app/AudioPlayerService;
.super Landroid/app/Service;


# static fields
.field public static b:Lcom/estrongs/android/pop/app/AudioPlayerService;

.field public static h:Ljava/lang/String;


# instance fields
.field private final A:Landroid/content/BroadcastReceiver;

.field private B:Lcom/estrongs/android/pop/app/aq;

.field public a:Z

.field public c:Lcom/estrongs/android/pop/c/a;

.field public d:Z

.field e:Landroid/media/MediaPlayer$OnCompletionListener;

.field f:Landroid/media/MediaPlayer$OnErrorListener;

.field public g:Z

.field i:Z

.field private j:Ljava/lang/Object;

.field private final k:Landroid/os/IBinder;

.field private l:[Ljava/lang/String;

.field private m:[Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Landroid/media/MediaPlayer;

.field private t:[I

.field private u:I

.field private v:Landroid/os/PowerManager;

.field private w:Landroid/net/wifi/WifiManager;

.field private x:Landroid/os/PowerManager$WakeLock;

.field private y:Landroid/net/wifi/WifiManager$WifiLock;

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const-string v0, "http://127.0.0.1:35854/"

    sput-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/pop/app/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/r;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->k:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->a:Z

    iput v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/pop/c/a;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    iput v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->d:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    new-instance v0, Lcom/estrongs/android/pop/app/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/l;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->e:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/estrongs/android/pop/app/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/m;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->f:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/estrongs/android/pop/app/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/o;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->z:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/p;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->A:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    return-void
.end method

.method private a([II)I
    .registers 7

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_4
    if-lt v0, p2, :cond_f

    add-int/lit8 v0, v1, -0x1

    aget v0, p1, v0

    add-int/lit8 v1, v1, -0x1

    aput v2, p1, v1

    return v0

    :cond_f
    aget v3, p1, v1

    if-eq v3, v2, :cond_15

    add-int/lit8 v0, v0, 0x1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/aq;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlayerService;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    return-void
.end method

.method private a([I)[I
    .registers 6

    array-length v0, p1

    new-array v1, v0, [I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_9
    array-length v3, p1

    if-lt v0, v3, :cond_d

    return-object v1

    :cond_d
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a([II)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlayerService;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/AudioPlayerService;)[Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/AudioPlayerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    return v0
.end method

.method private g(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_14
    return-object v0
.end method

.method private w()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_11

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    iput v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [I

    move v0, v1

    :goto_17
    array-length v3, v2

    if-lt v0, v3, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_26
    array-length v3, v2

    if-lt v1, v3, :cond_31

    iput v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    goto :goto_10

    :cond_2c
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_31
    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    invoke-direct {p0, v2, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a([II)I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6

    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/os/PowerManager;

    if-nez v0, :cond_13

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/os/PowerManager;

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_21

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b9

    move v3, v1

    :goto_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b7

    move v0, v1

    :goto_3b
    if-eqz v3, :cond_51

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/os/PowerManager;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ES Wake Lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_51
    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_a8

    move-result v0

    if-lt v0, v4, :cond_ab

    :try_start_5d
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_77

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_77} :catch_7e

    :cond_77
    :goto_77
    :try_start_77
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7c} :catch_8b

    :cond_7c
    :goto_7c
    monitor-exit p0

    return-void

    :catch_7e
    move-exception v1

    :try_start_7f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_8b

    goto :goto_77

    :catch_8b
    move-exception v1

    if-lt v0, v4, :cond_7c

    const/16 v1, 0xc

    if-ge v0, v1, :cond_7c

    :try_start_92
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "ES Wifi Lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_a2
    .catchall {:try_start_92 .. :try_end_a2} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a2} :catch_a3

    goto :goto_7c

    :catch_a3
    move-exception v0

    const/4 v0, 0x0

    :try_start_a5
    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_a8

    goto :goto_7c

    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ab
    :try_start_ab
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b6} :catch_8b

    goto :goto_77

    :cond_b7
    move v0, v2

    goto :goto_3b

    :cond_b9
    move v3, v2

    goto/16 :goto_2e
.end method

.method public a(I)V
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    :cond_9
    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/aq;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const v4, 0x7f0901fd

    const/4 v3, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3f

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    const v1, 0x7f020014

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    if-eqz p1, :cond_40

    :goto_2c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x302d

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    :cond_3f
    return-void

    :cond_40
    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c
.end method

.method public a([Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p1, :cond_9

    :try_start_6
    array-length v1, p1

    if-nez v1, :cond_b

    :cond_9
    monitor-exit v4

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-nez v1, :cond_32

    move v3, v0

    :goto_10
    array-length v1, p1

    add-int/2addr v1, v3

    new-array v5, v1, [Ljava/lang/String;

    array-length v1, p1

    add-int/2addr v1, v3

    new-array v6, v1, [Z

    move v2, v0

    :goto_19
    if-lt v2, v3, :cond_37

    move v1, v0

    :goto_1c
    array-length v3, p1

    if-lt v1, v3, :cond_47

    iput-object v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_55

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_55

    iput-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    monitor-exit v4

    goto :goto_a

    :catchall_2f
    move-exception v0

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v1, v1

    move v3, v1

    goto :goto_10

    :cond_37
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v1, v1, v2

    aput-boolean v1, v6, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    :cond_47
    add-int v3, v2, v1

    aget-object v7, p1, v1

    aput-object v7, v5, v3

    add-int v3, v2, v1

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_55
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    if-eqz v1, :cond_63

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v1, v1

    if-nez v1, :cond_67

    :cond_63
    iput-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    monitor-exit v4

    goto :goto_a

    :cond_67
    array-length v1, p1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    new-array v6, v1, [I

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    move v1, v0

    :goto_79
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v3, v3

    if-lt v2, v3, :cond_9d

    move v2, v1

    move v1, v0

    :goto_80
    array-length v3, p1

    if-lt v1, v3, :cond_aa

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a([I)[I

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v1, v1

    array-length v3, p1

    add-int/2addr v1, v3

    new-array v3, v1, [I

    move v1, v0

    :goto_8f
    iget v7, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    if-le v1, v7, :cond_b5

    :goto_93
    array-length v7, v6

    if-lt v0, v7, :cond_be

    iput-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    monitor-exit v4

    goto/16 :goto_a

    :cond_9d
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v3, v3, v2

    aput v3, v6, v1

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_79

    :cond_aa
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v3, v3

    add-int/2addr v3, v1

    aput v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    :cond_b5
    iget-object v7, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v7, v7, v1

    aput v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_be
    add-int v7, v1, v0

    aget v8, v2, v0

    aput v8, v3, v7
    :try_end_c4
    .catchall {:try_start_32 .. :try_end_c4} :catchall_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_93
.end method

.method public a(Landroid/media/MediaPlayer;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    :goto_f
    return v2

    :cond_10
    new-instance v0, Lcom/estrongs/android/pop/app/q;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/q;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/q;->start()V

    goto :goto_f
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->y:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Landroid/os/PowerManager$WakeLock;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2e

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_29
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_9
    return-void
.end method

.method public b([Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    array-length v3, p1

    if-nez v3, :cond_a

    monitor-exit v2

    :goto_9
    return v0

    :cond_a
    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(I)V

    array-length v3, p1

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    :goto_19
    array-length v3, p1

    if-lt v0, v3, :cond_1f

    monitor-exit v2

    move v0, v1

    goto :goto_9

    :cond_1f
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 16

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v9

    if-ltz p1, :cond_13

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_15

    :cond_13
    monitor-exit v9

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v5, :cond_2e

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    monitor-exit v9

    goto :goto_14

    :catchall_2b
    move-exception v0

    monitor-exit v9
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v10, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v11, v0, [Z

    const/4 v0, 0x0

    check-cast v0, [I

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-eq v1, v12, :cond_47

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-ne v1, v13, :cond_4e

    :cond_47
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    :cond_4e
    move v2, v4

    move v1, v8

    move v3, v4

    move v6, v4

    :goto_52
    iget-object v7, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v7, v7

    if-lt v2, v7, :cond_88

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-eq v2, v12, :cond_5f

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-ne v2, v13, :cond_c6

    :cond_5f
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    if-lt v2, v1, :cond_ee

    if-eq v1, v8, :cond_ee

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    if-ne v2, v1, :cond_eb

    move v1, v5

    :goto_6a
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    :cond_70
    :goto_70
    iput-object v10, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    iput-object v11, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    if-eqz v1, :cond_86

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/aq;->f(I)V

    :cond_86
    monitor-exit v9

    goto :goto_14

    :cond_88
    if-eq v2, p1, :cond_f0

    iget-object v7, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v7, v10, v6

    iget-object v7, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v7, v7, v2

    aput-boolean v7, v11, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v6

    :goto_99
    iget v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-eq v6, v12, :cond_a1

    iget v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-ne v6, v13, :cond_b9

    :cond_a1
    iget-object v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    if-eqz v6, :cond_b9

    iget-object v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v6, v6, v2

    if-eq v6, p1, :cond_c4

    iget-object v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v6, v6, v2

    if-ge v6, p1, :cond_bd

    iget-object v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v6, v6, v2

    :goto_b5
    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_b9
    :goto_b9
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_52

    :cond_bd
    iget-object v6, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, -0x1

    goto :goto_b5

    :cond_c4
    move v1, v2

    goto :goto_b9

    :cond_c6
    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-lt v1, p1, :cond_e9

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v1, p1, :cond_e7

    move v1, v5

    :goto_cf
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    :goto_d5
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_df

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_70

    :cond_df
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-gez v2, :cond_70

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I
    :try_end_e6
    .catchall {:try_start_2e .. :try_end_e6} :catchall_2b

    goto :goto_70

    :cond_e7
    move v1, v4

    goto :goto_cf

    :cond_e9
    move v1, v4

    goto :goto_d5

    :cond_eb
    move v1, v4

    goto/16 :goto_6a

    :cond_ee
    move v1, v4

    goto :goto_70

    :cond_f0
    move v7, v6

    goto :goto_99
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    return v0
.end method

.method public d(I)V
    .registers 3

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/aq;->b(I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    goto :goto_d
.end method

.method public e()I
    .registers 8

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_12

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f()I

    move-result v0

    monitor-exit v4

    :goto_11
    return v0

    :cond_12
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-ne v2, v3, :cond_44

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    if-nez v0, :cond_21

    :cond_1e
    monitor-exit v4

    move v0, v1

    goto :goto_11

    :cond_21
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2c

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_3c

    :cond_2c
    monitor-exit v4

    move v0, v1

    goto :goto_11

    :cond_2f
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3a

    monitor-exit v4

    goto :goto_11

    :catchall_37
    move-exception v0

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2f

    monitor-exit v4

    move v0, v1

    goto :goto_11

    :cond_44
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_4d

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-ne v2, v6, :cond_98

    :cond_4d
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    if-nez v2, :cond_59

    :cond_55
    monitor-exit v4

    move v0, v1

    goto :goto_11

    :cond_58
    move v0, v2

    :cond_59
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    if-lez v2, :cond_67

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    if-nez v2, :cond_6e

    :cond_67
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->w()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    move v0, v3

    :cond_6e
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v5, v5

    if-lt v2, v5, :cond_c9

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    if-ne v2, v6, :cond_94

    if-eqz v0, :cond_7e

    monitor-exit v4

    move v0, v1

    goto :goto_11

    :cond_7e
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->w()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    move v2, v3

    :goto_85
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    iget v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    aget v0, v0, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_58

    monitor-exit v4

    goto/16 :goto_11

    :cond_94
    monitor-exit v4

    move v0, v1

    goto/16 :goto_11

    :cond_98
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a2

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_c5

    :cond_a2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-nez v0, :cond_aa

    monitor-exit v4

    move v0, v1

    goto/16 :goto_11

    :cond_aa
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-gez v0, :cond_b6

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    :cond_b1
    :goto_b1
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    monitor-exit v4

    goto/16 :goto_11

    :cond_b6
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_b1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    goto :goto_b1

    :cond_c5
    monitor-exit v4
    :try_end_c6
    .catchall {:try_start_3c .. :try_end_c6} :catchall_37

    move v0, v1

    goto/16 :goto_11

    :cond_c9
    move v2, v0

    goto :goto_85
.end method

.method public e(I)Z
    .registers 3

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Z

    move-result v0

    goto :goto_c
.end method

.method public f()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    add-int/lit8 v0, v0, 0x1

    :goto_5
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ltz v2, :cond_d

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v0, v2, :cond_14

    :cond_d
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v0, v2, :cond_2a

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_21

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v1, v0, :cond_20

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    goto :goto_13

    :cond_20
    move v0, v1

    :cond_21
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2a
    if-gez v0, :cond_13

    move v0, v1

    goto :goto_13
.end method

.method public f(I)Z
    .registers 4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p1, :cond_a

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    array-length v0, v0

    if-le p1, v0, :cond_d

    :cond_a
    monitor-exit v1

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v0, v0, p1

    monitor-exit v1

    goto :goto_c

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public g()I
    .registers 6

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()I

    move-result v0

    monitor-exit v3

    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2f

    :cond_1f
    monitor-exit v3

    move v0, v1

    goto :goto_e

    :cond_22
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2d

    monitor-exit v3

    goto :goto_e

    :catchall_2a
    move-exception v0

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    :cond_2f
    if-gez v0, :cond_22

    :try_start_31
    monitor-exit v3

    move v0, v1

    goto :goto_e

    :cond_34
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3e

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_63

    :cond_3e
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    :goto_40
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_49

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    array-length v0, v0

    if-lt v2, v0, :cond_4c

    :cond_49
    monitor-exit v3

    move v0, v1

    goto :goto_e

    :cond_4c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    if-nez v0, :cond_53

    monitor-exit v3

    move v0, v1

    goto :goto_e

    :cond_53
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    aget v0, v0, v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_8a

    if-eq v0, v1, :cond_61

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    :cond_61
    monitor-exit v3

    goto :goto_e

    :cond_63
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6d

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_87

    :cond_6d
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-gez v0, :cond_78

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    :cond_74
    :goto_74
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    monitor-exit v3

    goto :goto_e

    :cond_78
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_74

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    goto :goto_74

    :cond_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_31 .. :try_end_88} :catchall_2a

    move v0, v1

    goto :goto_e

    :cond_8a
    move v0, v2

    goto :goto_40
.end method

.method public h()I
    .registers 4

    const/4 v1, -0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ltz v2, :cond_d

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v0, v2, :cond_13

    :cond_d
    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v0, v2, :cond_29

    move v0, v1

    :cond_12
    :goto_12
    return v0

    :cond_13
    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ne v0, v2, :cond_20

    move v0, v1

    goto :goto_12

    :cond_20
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_12

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_29
    if-gez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public i()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    return v0
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Z

    return v0
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->stopSelf()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->k:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const-string v0, "EEE"

    const-string v1, "music service created\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a()V

    new-instance v0, Lcom/estrongs/android/pop/c/a;

    const-string v1, "/sdcard/"

    const v2, 0x8c0e

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/c/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/pop/c/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->z:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_64

    :try_start_27
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->A:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_5f

    :goto_33
    :try_start_33
    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5e

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/app/AudioPlayerService$MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5e

    new-instance v2, Lcom/estrongs/android/util/ag;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/ag;-><init>(Ljava/lang/Object;)V

    const-string v0, "registerMediaButtonEventReceiver"

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5e} :catch_69

    :cond_5e
    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_33

    :catch_64
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/pop/c/a;

    goto :goto_5e

    :catch_69
    move-exception v0

    goto :goto_5e
.end method

.method public onDestroy()V
    .registers 5

    const-string v0, "EEE"

    const-string v1, "music service destroy\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/pop/c/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/pop/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c/a;->b()V

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_18} :catch_54

    :try_start_18
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1d} :catch_54

    :goto_1d
    :try_start_1d
    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_48

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/app/AudioPlayerService$MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_48

    new-instance v2, Lcom/estrongs/android/util/ag;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/ag;-><init>(Ljava/lang/Object;)V

    const-string v0, "unregisterMediaButtonEventReceiver"

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_48} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_48} :catch_54

    :cond_48
    :goto_48
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_4f
    move-exception v0

    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_1d

    :catch_54
    move-exception v0

    goto :goto_48

    :catch_56
    move-exception v0

    goto :goto_48
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public p()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public q()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_25

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    iget v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    invoke-interface {v0, v3}, Lcom/estrongs/android/pop/app/aq;->b(I)V

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_12f

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_30

    :cond_2e
    move v0, v2

    :goto_2f
    return v0

    :cond_30
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_33
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-gez v0, :cond_52

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_41

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_c5

    :cond_41
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    if-gez v0, :cond_52

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->w()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:I

    :cond_52
    :goto_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_c9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cc

    const v3, 0x8c0e

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_66
    :goto_66
    iget v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v4, 0x1

    :try_start_69
    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Z

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v4, :cond_7c

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7c

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    invoke-interface {v4, v3}, Lcom/estrongs/android/pop/app/aq;->a(I)V

    :cond_7c
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->e:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->f:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    invoke-interface {v0, v3}, Lcom/estrongs/android/pop/app/aq;->c(I)V

    :cond_b2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    if-eqz v0, :cond_b9

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    :cond_b9
    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/Object;

    monitor-enter v4
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_bc} :catch_fa

    :try_start_bc
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    const/4 v5, 0x1

    aput-boolean v5, v0, v3

    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_f7

    move v0, v1

    goto/16 :goto_2f

    :cond_c5
    const/4 v0, 0x0

    :try_start_c6
    iput v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    goto :goto_52

    :catchall_c9
    move-exception v0

    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_c9

    throw v0

    :cond_cc
    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_66

    :catchall_f7
    move-exception v0

    :try_start_f8
    monitor-exit v4
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    :try_start_f9
    throw v0
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fa} :catch_fa

    :catch_fa
    move-exception v0

    instance-of v4, v0, Ljava/lang/IllegalStateException;

    if-nez v4, :cond_107

    instance-of v4, v0, Ljava/lang/NullPointerException;

    if-nez v4, :cond_107

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:[Z

    aput-boolean v2, v4, v3

    :cond_107
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Z

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v4, :cond_11b

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    invoke-interface {v1, v3}, Lcom/estrongs/android/pop/app/aq;->g(I)V

    :cond_115
    :goto_115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_2f

    :cond_11b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v4

    if-eq v4, v3, :cond_115

    iput v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12b

    move v0, v1

    goto/16 :goto_2f

    :cond_12b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Z

    goto :goto_115

    :catch_12f
    move-exception v0

    goto/16 :goto_25
.end method

.method public r()V
    .registers 3

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    :try_start_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_27

    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/aq;->b(I)V

    :cond_1f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    :cond_26
    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public s()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/aq;->d(I)V

    :cond_1b
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    :cond_22
    return-void
.end method

.method public t()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->stopForeground(Z)V

    return-void
.end method

.method public u()V
    .registers 3

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    if-ltz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    if-nez v0, :cond_22

    :cond_13
    const/4 v0, 0x0

    const v1, 0x7f0901ff

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    return-void

    :cond_22
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:[Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Z

    if-nez v0, :cond_3b

    const v0, 0x7f0901fe

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3b
    const v0, 0x7f090200

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public v()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->B:Lcom/estrongs/android/pop/app/aq;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/aq;->e(I)V

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    :cond_21
    return-void
.end method
