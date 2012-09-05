.class final Lcom/google/android/location/os/real/y;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/u;

.field private final b:Landroid/telephony/TelephonyManager;

.field private final c:Landroid/net/ConnectivityManager;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/u;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/y;->b:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/y;->c:Landroid/net/ConnectivityManager;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/y;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/y;-><init>(Lcom/google/android/location/os/real/u;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_392

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v3, Li/d;->b:Li/d;

    invoke-virtual {v0, v3}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5f

    move v0, v1

    :goto_21
    invoke-interface {v3, v0}, Li/a;->a(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->b:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->d(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/A;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->e(Lcom/google/android/location/os/real/u;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->f(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/z;

    move-result-object v1

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->h(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_a

    :cond_5f
    move v0, v2

    goto :goto_21

    :cond_61
    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->g(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/z;

    move-result-object v1

    goto :goto_4b

    :pswitch_68
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v1, Li/d;->l:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LW/a;

    invoke-interface {v1, v0}, Li/a;->a(LW/a;)V

    goto :goto_a

    :pswitch_81
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v1, Li/d;->m:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LW/a;

    invoke-interface {v1, v0}, Li/a;->b(LW/a;)V

    goto/16 :goto_a

    :pswitch_9b
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_bc

    move v0, v1

    :goto_a8
    invoke-virtual {v3, v4, v0}, Li/f;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_be

    :goto_b7
    invoke-interface {v0, v3, v1}, Li/a;->a(IZ)V

    goto/16 :goto_a

    :cond_bc
    move v0, v2

    goto :goto_a8

    :cond_be
    move v1, v2

    goto :goto_b7

    :pswitch_c0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_c8

    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/y;->d:I

    :cond_c8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_de

    new-instance v0, Lcom/google/android/location/os/real/I;

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->b:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/google/android/location/os/real/y;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/I;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;IJ)V

    :cond_de
    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/f;->a(Le/b;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    invoke-interface {v1, v0}, Li/a;->a(Le/b;)V

    goto/16 :goto_a

    :pswitch_f2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/y;->d:I

    :goto_102
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/os/real/y;->d:I

    invoke-virtual {v0, v1}, Li/f;->b(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/os/real/y;->d:I

    invoke-interface {v0, v1}, Li/a;->b(I)V

    goto/16 :goto_a

    :cond_11a
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/y;->d:I

    goto :goto_102

    :pswitch_121
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v2}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_13e
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v1}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_15b
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v3}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_178
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v4}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_195
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v5}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_1b2
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_1d1
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_1f0
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Li/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Li/a;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    :pswitch_20f
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->e(Lcom/google/android/location/os/real/u;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Le/v;

    new-instance v2, Lcom/google/android/location/os/real/J;

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    iget-object v0, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->h(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/os/real/x;->a()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/android/location/os/real/J;-><init>(Landroid/location/Location;JI)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Li/f;->a(Li/B;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v2}, Li/a;->a(Li/B;)V

    goto/16 :goto_a

    :pswitch_24a
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->e(Lcom/google/android/location/os/real/u;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Le/v;

    new-instance v2, Lcom/google/android/location/os/real/J;

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    iget-object v0, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->h(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/os/real/x;->a()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/android/location/os/real/J;-><init>(Landroid/location/Location;JI)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Li/f;->a(Li/B;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v2}, Li/a;->a(Li/B;)V

    goto/16 :goto_a

    :pswitch_285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/os/real/M;

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/f;->a(Le/L;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    invoke-interface {v1, v0}, Li/a;->a(Le/L;)V

    goto/16 :goto_a

    :pswitch_29d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2b5

    :goto_2a1
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/f;->d(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v1}, Li/a;->b(Z)V

    goto/16 :goto_a

    :cond_2b5
    move v1, v2

    goto :goto_2a1

    :pswitch_2b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "level"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "plugged"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2e5

    :goto_2d1
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v1}, Li/f;->a(IIZ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v3, v4, v1}, Li/a;->a(IIZ)V

    goto/16 :goto_a

    :cond_2e5
    move v1, v2

    goto :goto_2d1

    :pswitch_2e7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2ff

    :goto_2eb
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/f;->c(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v1}, Li/a;->c(Z)V

    goto/16 :goto_a

    :cond_2ff
    move v1, v2

    goto :goto_2eb

    :pswitch_301
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_319

    :goto_305
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/f;->a(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v1}, Li/a;->d(Z)V

    goto/16 :goto_a

    :cond_319
    move v1, v2

    goto :goto_305

    :pswitch_31b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_333

    :goto_31f
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/f;->b(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0, v1}, Li/a;->e(Z)V

    goto/16 :goto_a

    :cond_333
    move v1, v2

    goto :goto_31f

    :pswitch_335
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v1, Li/d;->k:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LW/a;

    invoke-interface {v1, v0}, Li/a;->c(LW/a;)V

    goto/16 :goto_a

    :pswitch_34f
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v1, Li/d;->j:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LW/a;

    invoke-interface {v1, v0}, Li/a;->d(LW/a;)V

    goto/16 :goto_a

    :pswitch_369
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    iget-object v1, p0, Lcom/google/android/location/os/real/y;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v2}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;Landroid/net/ConnectivityManager;Li/a;)V

    goto/16 :goto_a

    :pswitch_378
    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v1, Li/d;->p:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/y;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Li/C;

    invoke-interface {v1, v0}, Li/a;->a(Li/C;)V

    goto/16 :goto_a

    :pswitch_data_392
    .packed-switch 0x1
        :pswitch_b
        :pswitch_68
        :pswitch_9b
        :pswitch_c0
        :pswitch_f2
        :pswitch_121
        :pswitch_13e
        :pswitch_15b
        :pswitch_178
        :pswitch_195
        :pswitch_1b2
        :pswitch_1d1
        :pswitch_1f0
        :pswitch_20f
        :pswitch_285
        :pswitch_29d
        :pswitch_2b7
        :pswitch_24a
        :pswitch_2e7
        :pswitch_81
        :pswitch_301
        :pswitch_31b
        :pswitch_335
        :pswitch_369
        :pswitch_34f
        :pswitch_378
    .end packed-switch
.end method
