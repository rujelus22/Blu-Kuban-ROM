.class public Lcom/google/googlenav/prefetch/android/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field private a:Lat/B;

.field private b:J

.field private c:J

.field private d:LaD/k;


# direct methods
.method public constructor <init>(LaD/k;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/A;->d:LaD/k;

    .line 50
    return-void
.end method


# virtual methods
.method public a(ILan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    .line 63
    iget-wide v6, p0, Lcom/google/googlenav/prefetch/android/A;->c:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-lez v2, :cond_19

    .line 102
    :cond_18
    :goto_18
    return-void

    .line 66
    :cond_19
    iput-wide v4, p0, Lcom/google/googlenav/prefetch/android/A;->c:J

    .line 69
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v6

    .line 70
    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Lan/s;->a()Lat/B;

    move-result-object v2

    .line 71
    :goto_25
    if-eqz v2, :cond_18

    .line 74
    invoke-static {v6}, Lan/s;->a(Landroid/location/Location;)I

    move-result v6

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_18

    .line 78
    iget-object v6, p0, Lcom/google/googlenav/prefetch/android/A;->a:Lat/B;

    if-nez v6, :cond_41

    .line 80
    iget-object v6, p0, Lcom/google/googlenav/prefetch/android/A;->d:LaD/k;

    invoke-interface {v6, v2, v1, v3}, LaD/k;->a(Lat/B;ILjava/lang/String;)V

    .line 95
    :goto_38
    if-eqz v0, :cond_18

    .line 97
    iput-object v2, p0, Lcom/google/googlenav/prefetch/android/A;->a:Lat/B;

    .line 98
    iput-wide v4, p0, Lcom/google/googlenav/prefetch/android/A;->b:J

    goto :goto_18

    :cond_3f
    move-object v2, v3

    .line 70
    goto :goto_25

    .line 87
    :cond_41
    iget-object v6, p0, Lcom/google/googlenav/prefetch/android/A;->a:Lat/B;

    invoke-virtual {v6, v2}, Lat/B;->b(Lat/B;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 88
    iget-wide v7, p0, Lcom/google/googlenav/prefetch/android/A;->b:J

    sub-long v7, v4, v7

    .line 89
    const/16 v9, 0x64

    if-ge v6, v9, :cond_5c

    const-wide/32 v9, 0xea60

    cmp-long v6, v7, v9

    if-ltz v6, :cond_62

    .line 90
    :cond_5c
    iget-object v6, p0, Lcom/google/googlenav/prefetch/android/A;->d:LaD/k;

    invoke-interface {v6, v2, v1, v3}, LaD/k;->a(Lat/B;ILjava/lang/String;)V

    goto :goto_38

    :cond_62
    move v0, v1

    goto :goto_38
.end method
