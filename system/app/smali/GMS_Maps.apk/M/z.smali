.class Lm/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaB/e;


# instance fields
.field final synthetic a:Lm/y;


# direct methods
.method constructor <init>(Lm/y;)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lm/z;->a:Lm/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 3

    .prologue
    .line 865
    iget-object v0, p0, Lm/z;->a:Lm/y;

    invoke-static {v0}, Lm/y;->a(Lm/y;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 866
    iget-object v0, p0, Lm/z;->a:Lm/y;

    invoke-static {v0}, Lm/y;->a(Lm/y;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_21

    .line 876
    :goto_20
    return-object v0

    .line 873
    :cond_21
    iget-object v0, p0, Lm/z;->a:Lm/y;

    invoke-static {v0}, Lm/y;->a(Lm/y;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 874
    iget-object v0, p0, Lm/z;->a:Lm/y;

    invoke-static {v0}, Lm/y;->a(Lm/y;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_20

    .line 876
    :cond_40
    const/4 v0, 0x0

    goto :goto_20
.end method
