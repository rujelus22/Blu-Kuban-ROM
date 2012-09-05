.class final Lcom/google/android/location/os/real/A;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/u;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/os/real/A;->a:Lcom/google/android/location/os/real/u;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/A;-><init>(Lcom/google/android/location/os/real/u;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/os/real/A;->a:Lcom/google/android/location/os/real/u;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;III)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/os/real/A;->a:Lcom/google/android/location/os/real/u;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;III)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/A;->a:Lcom/google/android/location/os/real/u;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;ILjava/lang/Object;)V

    return-void
.end method
