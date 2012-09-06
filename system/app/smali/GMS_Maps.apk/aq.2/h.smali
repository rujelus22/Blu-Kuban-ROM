.class public Laq/h;
.super Lan/a;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static i:Laq/e;


# instance fields
.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lan/B;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lan/a;-><init>(Landroid/content/Context;Lan/B;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/h;->j:Z

    .line 34
    new-instance v0, Laq/e;

    invoke-direct {v0, p0, p1}, Laq/e;-><init>(Laq/h;Landroid/content/Context;)V

    sput-object v0, Laq/h;->i:Laq/e;

    .line 35
    return-void
.end method


# virtual methods
.method protected declared-synchronized b()V
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lan/a;->b()V

    .line 44
    iget-boolean v0, p0, Laq/h;->j:Z

    if-eqz v0, :cond_10

    .line 45
    sget-object v0, Laq/h;->i:Laq/e;

    invoke-virtual {v0}, Laq/e;->b()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/h;->j:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 48
    :cond_10
    monitor-exit p0

    return-void

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c()V
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Laq/h;->d:Z

    if-nez v0, :cond_16

    .line 58
    iget-boolean v0, p0, Laq/h;->j:Z

    if-nez v0, :cond_14

    .line 59
    sget-object v0, Laq/h;->i:Laq/e;

    invoke-virtual {v0}, Laq/e;->a()V

    .line 61
    invoke-super {p0}, Lan/a;->c()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Laq/h;->j:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 68
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 66
    :cond_16
    :try_start_16
    invoke-super {p0}, Lan/a;->c()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_14

    .line 57
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Landroid/location/Location;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Laq/h;->a(Landroid/location/Location;)V

    .line 109
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_3

    .line 91
    :goto_2
    return-void

    .line 85
    :cond_3
    iget-boolean v0, p0, Laq/h;->d:Z

    if-nez v0, :cond_11

    .line 86
    invoke-static {p1}, Laq/h;->b(Landroid/location/Location;)Ln/B;

    move-result-object v0

    .line 87
    sget-object v1, Laq/h;->i:Laq/e;

    invoke-virtual {v1, p1, v0}, Laq/e;->a(Landroid/location/Location;Ln/B;)V

    goto :goto_2

    .line 89
    :cond_11
    invoke-virtual {p0, p1}, Laq/h;->c(Landroid/location/Location;)V

    goto :goto_2
.end method
