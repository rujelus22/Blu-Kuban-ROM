.class Lcom/google/googlenav/ui/wizard/iO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/bJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iK;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iO;->a:Lcom/google/googlenav/ui/wizard/iK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;)V
    .registers 10
    .parameter

    .prologue
    const-wide v6, 0x416312d000000000L

    .line 193
    invoke-static {p1}, Lcom/google/googlenav/ui/view/dialog/bH;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iO;->a:Lcom/google/googlenav/ui/wizard/iK;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iK;Ljava/lang/String;JJ)V

    .line 196
    return-void
.end method
