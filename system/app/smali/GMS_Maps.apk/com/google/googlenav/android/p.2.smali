.class Lcom/google/googlenav/android/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaB/e;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/googlenav/android/p;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 424
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_d

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v2

    if-nez v2, :cond_e

    .line 439
    :cond_d
    :goto_d
    return-object v0

    .line 429
    :cond_e
    invoke-interface {v1}, Lan/h;->m()Lan/s;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_d

    .line 436
    new-instance v0, Landroid/location/Location;

    const-string v2, "GoogleLocationProvider"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Lan/s;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 438
    invoke-virtual {v1}, Lan/s;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_d
.end method
