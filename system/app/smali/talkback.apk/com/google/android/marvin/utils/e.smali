.class public Lcom/google/android/marvin/utils/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/marvin/utils/o;

.field private final b:I

.field private final c:Landroid/bluetooth/BluetoothAdapter;

.field private final d:Lcom/google/android/marvin/utils/q;

.field private e:Landroid/bluetooth/BluetoothDevice;

.field private f:Landroid/bluetooth/BluetoothHeadset;

.field private g:Z

.field private final h:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/utils/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/e;->g:Z

    new-instance v0, Lcom/google/android/marvin/utils/f;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/utils/f;-><init>(Lcom/google/android/marvin/utils/e;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/e;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object p1, p0, Lcom/google/android/marvin/utils/e;->a:Lcom/google/android/marvin/utils/o;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/google/android/marvin/utils/e;->b:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/google/android/marvin/utils/q;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/utils/q;-><init>(Lcom/google/android/marvin/utils/e;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/e;->d:Lcom/google/android/marvin/utils/q;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/utils/e;)Lcom/google/android/marvin/utils/q;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->d:Lcom/google/android/marvin/utils/q;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/marvin/utils/e;Landroid/bluetooth/BluetoothHeadset;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/marvin/utils/e;->f()V

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/e;->g:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v4, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    const-class v0, Lcom/google/android/marvin/utils/e;

    const/4 v1, 0x4

    const-string v2, "Connected to a bluetooth device."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2d
    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->a:Lcom/google/android/marvin/utils/o;

    invoke-interface {v0}, Lcom/google/android/marvin/utils/o;->a()V

    goto :goto_e

    :cond_33
    const-class v0, Lcom/google/android/marvin/utils/e;

    const/4 v1, 0x3

    const-string v2, "No device is connected, closing Bluetooth proxy."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v4, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_2d
.end method

.method static synthetic b(Lcom/google/android/marvin/utils/e;)V
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->a:Lcom/google/android/marvin/utils/o;

    invoke-interface {v0}, Lcom/google/android/marvin/utils/o;->a()V

    invoke-virtual {p0}, Lcom/google/android/marvin/utils/e;->a()V

    return-void
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->d:Lcom/google/android/marvin/utils/q;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/q;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-class v0, Lcom/google/android/marvin/utils/e;

    const/4 v1, 0x3

    const-string v2, "Closing bluetooth proxy: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/marvin/utils/e;->g:Z

    invoke-direct {p0}, Lcom/google/android/marvin/utils/e;->f()V

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v7, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    iput-object v7, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    :cond_25
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_15

    const-class v0, Lcom/google/android/marvin/utils/e;

    const/4 v1, 0x3

    const-string v2, "BluetoothHandler.start() was called without closing the proxy."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->a:Lcom/google/android/marvin/utils/o;

    invoke-interface {v0}, Lcom/google/android/marvin/utils/o;->a()V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0}, Lcom/google/android/marvin/utils/e;->f()V

    iput-boolean v3, p0, Lcom/google/android/marvin/utils/e;->g:Z

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->d:Lcom/google/android/marvin/utils/q;

    iget v1, p0, Lcom/google/android/marvin/utils/e;->b:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/marvin/utils/q;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/google/android/marvin/utils/e;->h:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_14
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/b/a;->a(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_9
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/b/a;->b(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_9
.end method

.method public final e()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/marvin/utils/e;->f:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/google/android/marvin/utils/e;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_9
.end method
