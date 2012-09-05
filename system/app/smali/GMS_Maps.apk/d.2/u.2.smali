.class Ld/u;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Ld/t;


# direct methods
.method constructor <init>(Ld/t;)V
    .registers 2

    iput-object p1, p0, Ld/u;->a:Ld/t;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 3

    iget-object v0, p0, Ld/u;->a:Ld/t;

    invoke-virtual {v0}, Ld/t;->h()V

    iget-object v0, p0, Ld/u;->a:Ld/t;

    invoke-static {v0, p1}, Ld/t;->a(Ld/t;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4

    iget-object v0, p0, Ld/u;->a:Ld/t;

    invoke-virtual {v0}, Ld/t;->h()V

    iget-object v1, p0, Ld/u;->a:Ld/t;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    :goto_11
    invoke-static {v1, v0}, Ld/t;->a(Ld/t;I)I

    iget-object v0, p0, Ld/u;->a:Ld/t;

    iget-object v1, p0, Ld/u;->a:Ld/t;

    invoke-static {v1}, Ld/t;->a(Ld/t;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Ld/t;->a(Ld/t;Landroid/telephony/CellLocation;)V

    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_11
.end method
