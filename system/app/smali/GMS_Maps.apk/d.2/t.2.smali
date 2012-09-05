.class Ld/t;
.super Ld/al;


# instance fields
.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Landroid/telephony/PhoneStateListener;

.field private volatile e:I

.field private final f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ld/y;Ld/C;Lm/c;)V
    .registers 7

    invoke-direct {p0, p1, p3, p4, p5}, Ld/al;-><init>(Landroid/content/Context;Ld/y;Ld/C;Lm/c;)V

    new-instance v0, Ld/u;

    invoke-direct {v0, p0}, Ld/u;-><init>(Ld/t;)V

    iput-object v0, p0, Ld/t;->d:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x270f

    iput v0, p0, Ld/t;->e:I

    new-instance v0, Ld/v;

    invoke-direct {v0, p0}, Ld/v;-><init>(Ld/t;)V

    iput-object v0, p0, Ld/t;->f:Ljava/lang/Runnable;

    invoke-static {p2}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ld/t;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic a(Ld/t;I)I
    .registers 2

    iput p1, p0, Ld/t;->e:I

    return p1
.end method

.method static synthetic a(Ld/t;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Ld/t;->c:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .registers 9

    invoke-virtual {p0}, Ld/t;->f()Ld/y;

    move-result-object v0

    iget-object v1, p0, Ld/t;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Ld/t;->e:I

    iget-object v2, p0, Ld/t;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Ld/y;->a(Ljava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V

    return-void
.end method

.method static synthetic a(Ld/t;Landroid/telephony/CellLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Ld/t;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-virtual {p0}, Ld/t;->f()Ld/y;

    move-result-object v0

    iget-object v1, p0, Ld/t;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ld/y;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Ld/t;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Ld/t;->d:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x111

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Ld/t;->b:Ld/C;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Ld/t;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->c()V

    :cond_1d
    return-void
.end method

.method protected b()V
    .registers 4

    iget-object v0, p0, Ld/t;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Ld/t;->d:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Ld/t;->f()Ld/y;

    move-result-object v0

    iget-object v1, p0, Ld/t;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ld/y;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld/t;->b:Ld/C;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ld/t;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->b()V

    :cond_1a
    return-void
.end method
