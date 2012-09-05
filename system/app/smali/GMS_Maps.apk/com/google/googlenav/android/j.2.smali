.class Lcom/google/googlenav/android/j;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/h;

.field private final b:Lcom/google/googlenav/az;

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/h;Ljava/lang/String;Lcom/google/googlenav/az;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/android/j;->a:Lcom/google/googlenav/android/h;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/android/j;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/android/j;->b:Lcom/google/googlenav/az;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/android/h;Ljava/lang/String;Lcom/google/googlenav/az;Lcom/google/googlenav/android/i;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/android/j;-><init>(Lcom/google/googlenav/android/h;Ljava/lang/String;Lcom/google/googlenav/az;)V

    return-void
.end method

.method private a()Landroid/telephony/TelephonyManager;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/j;->a:Lcom/google/googlenav/android/h;

    invoke-static {v0}, Lcom/google/googlenav/android/h;->a(Lcom/google/googlenav/android/h;)Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private a(J)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/j;->a()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/google/googlenav/android/j;->b:Lcom/google/googlenav/az;

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-interface {v1, p1, p2, v0}, Lcom/google/googlenav/az;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/android/j;->b()V

    return-void
.end method

.method private b()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/android/j;->d:J

    invoke-direct {p0}, Lcom/google/googlenav/android/j;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 11

    const-wide/16 v6, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_21

    iget-wide v2, p0, Lcom/google/googlenav/android/j;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/android/j;->a(J)V

    :cond_1e
    iput-wide v0, p0, Lcom/google/googlenav/android/j;->e:J

    :cond_20
    :goto_20
    return-void

    :cond_21
    if-nez p1, :cond_20

    iget-wide v2, p0, Lcom/google/googlenav/android/j;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_20

    iget-wide v2, p0, Lcom/google/googlenav/android/j;->d:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/android/j;->a(J)V

    goto :goto_20
.end method
