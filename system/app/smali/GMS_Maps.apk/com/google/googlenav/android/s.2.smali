.class Lcom/google/googlenav/android/s;
.super Ljava/lang/Object;

# interfaces
.implements LaP/e;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 7

    const-wide v4, 0x412e848000000000L

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v1

    new-instance v0, Landroid/location/Location;

    const-string v2, "GoogleLocationProvider"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v1}, LaJ/B;->e()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_12
.end method
