.class Ls/y;
.super Ljava/lang/Object;

# interfaces
.implements LaP/e;


# instance fields
.field final synthetic a:Ls/x;


# direct methods
.method constructor <init>(Ls/x;)V
    .registers 2

    iput-object p1, p0, Ls/y;->a:Ls/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Ls/y;->a:Ls/x;

    invoke-static {v0}, Ls/x;->a(Ls/x;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Ls/y;->a:Ls/x;

    invoke-static {v0}, Ls/x;->a(Ls/x;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_21

    :goto_20
    return-object v0

    :cond_21
    iget-object v0, p0, Ls/y;->a:Ls/x;

    invoke-static {v0}, Ls/x;->a(Ls/x;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Ls/y;->a:Ls/x;

    invoke-static {v0}, Ls/x;->a(Ls/x;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_20

    :cond_40
    const/4 v0, 0x0

    goto :goto_20
.end method
