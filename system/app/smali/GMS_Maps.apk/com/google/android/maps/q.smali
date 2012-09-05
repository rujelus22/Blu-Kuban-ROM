.class Lcom/google/android/maps/q;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/q;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->av()Z

    move-result v2

    const-string v1, "PrefetchDebug-C"

    if-eqz v2, :cond_3a

    const-string v0, "T"

    :goto_e
    invoke-static {v1, v0}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/maps/q;->a:Lcom/google/android/maps/MapsActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    :cond_25
    const/4 v0, 0x1

    :goto_26
    const-string v3, "PrefetchDebug-W"

    if-eqz v0, :cond_3f

    const-string v1, "T"

    :goto_2c
    invoke-static {v3, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "PrefetchDebug-CW"

    and-int/2addr v0, v2

    if-eqz v0, :cond_42

    const-string v0, "T"

    :goto_36
    invoke-static {v1, v0}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_3a
    const-string v0, "F"

    goto :goto_e

    :cond_3d
    const/4 v0, 0x0

    goto :goto_26

    :cond_3f
    const-string v1, "F"

    goto :goto_2c

    :cond_42
    const-string v0, "F"

    goto :goto_36
.end method
