.class Lcom/google/googlenav/android/g;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/d;

.field private final b:Lcom/google/googlenav/aB;

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/d;Ljava/lang/String;Lcom/google/googlenav/aB;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/googlenav/android/g;->a:Lcom/google/googlenav/android/d;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 378
    iput-object p2, p0, Lcom/google/googlenav/android/g;->c:Ljava/lang/String;

    .line 379
    iput-object p3, p0, Lcom/google/googlenav/android/g;->b:Lcom/google/googlenav/aB;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/android/d;Ljava/lang/String;Lcom/google/googlenav/aB;Lcom/google/googlenav/android/e;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/android/g;-><init>(Lcom/google/googlenav/android/d;Ljava/lang/String;Lcom/google/googlenav/aB;)V

    return-void
.end method

.method private a()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/googlenav/android/g;->a:Lcom/google/googlenav/android/d;

    invoke-static {v0}, Lcom/google/googlenav/android/d;->a(Lcom/google/googlenav/android/d;)Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private a(J)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-direct {p0}, Lcom/google/googlenav/android/g;->a()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 407
    iget-object v1, p0, Lcom/google/googlenav/android/g;->b:Lcom/google/googlenav/aB;

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-interface {v1, p1, p2, v0}, Lcom/google/googlenav/aB;->a(JZ)V

    .line 408
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/g;)V
    .registers 1
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/googlenav/android/g;->b()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 383
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/android/g;->d:J

    .line 384
    invoke-direct {p0}, Lcom/google/googlenav/android/g;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 385
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 389
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 390
    const/4 v2, 0x2

    if-ne p1, v2, :cond_21

    .line 391
    iget-wide v2, p0, Lcom/google/googlenav/android/g;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 393
    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/android/g;->a(J)V

    .line 395
    :cond_1e
    iput-wide v0, p0, Lcom/google/googlenav/android/g;->e:J

    .line 403
    :cond_20
    :goto_20
    return-void

    .line 396
    :cond_21
    if-nez p1, :cond_20

    .line 397
    iget-wide v2, p0, Lcom/google/googlenav/android/g;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_20

    .line 401
    iget-wide v2, p0, Lcom/google/googlenav/android/g;->d:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/android/g;->a(J)V

    goto :goto_20
.end method
