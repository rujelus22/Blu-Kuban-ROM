.class Lcom/google/googlenav/ui/wizard/hc;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/as;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gY;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hc;->a:Lcom/google/googlenav/ui/wizard/gY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;)V
    .registers 10

    const-wide v6, 0x416312d000000000L

    invoke-static {p1}, Lbd/aq;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->a:Lcom/google/googlenav/ui/wizard/gY;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/gY;->a(Lcom/google/googlenav/ui/wizard/gY;Ljava/lang/String;JJ)V

    return-void
.end method
