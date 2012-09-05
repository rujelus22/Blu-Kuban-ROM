.class final Lcom/google/android/location/os/real/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private b:I

.field private c:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/os/real/x;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->c:Landroid/location/GpsStatus;

    iput-object p1, p0, Lcom/google/android/location/os/real/x;->a:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/location/os/real/x;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGpsStatusChanged(I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_32

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/x;->c:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->c:Landroid/location/GpsStatus;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/os/real/x;->c:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_36

    add-int/lit8 v0, v1, 0x1

    :goto_2d
    move v1, v0

    goto :goto_19

    :cond_2f
    iput v1, p0, Lcom/google/android/location/os/real/x;->b:I

    monitor-exit p0

    :cond_32
    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    move v0, v1

    goto :goto_2d
.end method
