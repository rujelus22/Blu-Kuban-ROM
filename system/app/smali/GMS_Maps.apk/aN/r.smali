.class public Lan/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/B;


# instance fields
.field private final a:Landroid/content/Context;

.field private volatile b:I

.field private volatile c:Landroid/location/LocationListener;

.field private d:Lg/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lan/r;->d:Lg/c;

    .line 41
    iput-object p1, p0, Lan/r;->a:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lan/r;->d:Lg/c;

    if-eqz v0, :cond_c

    .line 85
    iget-object v0, p0, Lan/r;->d:Lg/c;

    invoke-virtual {v0}, Lg/c;->c()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lan/r;->d:Lg/c;

    .line 88
    :cond_c
    return-void
.end method

.method public declared-synchronized a(ZLandroid/location/LocationListener;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 58
    if-nez v5, :cond_12

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getMainLooper() returned null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 57
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_12
    :try_start_12
    iget v2, p0, Lan/r;->b:I

    .line 64
    iget-object v0, p0, Lan/r;->d:Lg/c;

    if-eqz v0, :cond_33

    .line 66
    iget-object v0, p0, Lan/r;->c:Landroid/location/LocationListener;

    if-eq v0, p2, :cond_24

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InternalNlpLocationProvider can not run with different listeners."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_24
    iget-object v0, p0, Lan/r;->d:Lg/c;

    invoke-virtual {v0}, Lg/c;->b()I

    move-result v0

    if-eq v0, v2, :cond_31

    .line 71
    iget-object v0, p0, Lan/r;->d:Lg/c;

    invoke-virtual {v0, v2}, Lg/c;->a(I)V
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_f

    .line 79
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 74
    :cond_33
    :try_start_33
    new-instance v0, Lg/c;

    iget-object v1, p0, Lan/r;->a:Landroid/content/Context;

    const/16 v6, 0x2d0

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lg/c;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;ZLandroid/os/Looper;I)V

    iput-object v0, p0, Lan/r;->d:Lg/c;

    .line 77
    iput-object p2, p0, Lan/r;->c:Landroid/location/LocationListener;
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_f

    goto :goto_31
.end method

.method public a(Landroid/location/Location;)[B
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lan/r;->d:Lg/c;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lan/r;->d:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->a(Landroid/location/Location;)[B

    move-result-object v0

    .line 95
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
