.class Lcom/google/googlenav/wallpaper/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/b;

.field private final b:Lcom/google/googlenav/wallpaper/f;

.field private c:Landroid/location/Location;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/wallpaper/b;)V
    .registers 8
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/g;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v0, Lcom/google/googlenav/wallpaper/f;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/g;->a:Lcom/google/googlenav/wallpaper/b;

    const-wide v2, 0x4042b5bb9496249aL

    const-wide v4, -0x3fa17abfbdf090f7L

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/wallpaper/f;-><init>(Lcom/google/googlenav/wallpaper/b;DD)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/g;->b:Lcom/google/googlenav/wallpaper/f;

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/g;->c:Landroid/location/Location;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/g;-><init>(Lcom/google/googlenav/wallpaper/b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/wallpaper/f;
    .registers 7

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/g;->c:Landroid/location/Location;

    if-nez v0, :cond_7

    .line 790
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/g;->b:Lcom/google/googlenav/wallpaper/f;

    .line 792
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/googlenav/wallpaper/f;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/g;->a:Lcom/google/googlenav/wallpaper/b;

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/g;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/wallpaper/g;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/wallpaper/f;-><init>(Lcom/google/googlenav/wallpaper/b;DD)V

    goto :goto_6
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/g;->c:Landroid/location/Location;

    .line 802
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/g;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 803
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/g;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/b;->b(Lcom/google/googlenav/wallpaper/b;)V

    .line 805
    :cond_f
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 821
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 816
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 811
    return-void
.end method
