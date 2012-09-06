.class public Lan/a;
.super Lan/b;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected a:Lan/C;

.field private final i:Lan/B;

.field private j:Lan/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lan/B;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lan/b;-><init>(Z)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lan/a;->j:Lan/s;

    .line 60
    iput-object p2, p0, Lan/a;->i:Lan/B;

    .line 61
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "network"

    return-object v0
.end method

.method protected a(Lan/s;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    if-nez p1, :cond_3

    .line 143
    :goto_2
    return-void

    .line 136
    :cond_3
    iget-object v0, p0, Lan/a;->a:Lan/C;

    invoke-virtual {v0, p1}, Lan/C;->a(Landroid/location/Location;)V

    .line 137
    iput-object p1, p0, Lan/a;->j:Lan/s;

    .line 142
    invoke-virtual {p0, p1}, Lan/a;->b(Lan/s;)V

    goto :goto_2
.end method

.method protected a(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    if-eqz p1, :cond_10

    .line 127
    new-instance v0, Lan/u;

    invoke-direct {v0}, Lan/u;-><init>()V

    invoke-virtual {v0, p1}, Lan/u;->a(Landroid/location/Location;)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object v0

    .line 129
    :cond_10
    invoke-virtual {p0, v0}, Lan/a;->a(Lan/s;)V

    .line 130
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lan/a;->i:Lan/B;

    invoke-interface {v0}, Lan/B;->a()V

    .line 76
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 82
    invoke-virtual {p0}, Lan/a;->k()V

    .line 83
    return-void

    .line 76
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 91
    new-instance v0, Lan/C;

    const-string v1, ""

    invoke-direct {v0, v1}, Lan/C;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lan/a;->a:Lan/C;

    .line 94
    monitor-enter p0

    .line 97
    :try_start_a
    iget-object v1, p0, Lan/a;->i:Lan/B;

    iget-boolean v0, p0, Lan/a;->d:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_11
    invoke-interface {v1, v0, p0}, Lan/B;->a(ZLandroid/location/LocationListener;)V

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 97
    :cond_16
    const/4 v0, 0x0

    goto :goto_11

    .line 98
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public d()Lan/s;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lan/a;->j:Lan/s;

    return-object v0
.end method

.method public declared-synchronized e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 193
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lan/a;->i:Lan/B;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lan/a;->j:Lan/s;

    if-eqz v1, :cond_1f

    .line 204
    iget-object v1, p0, Lan/a;->i:Lan/B;

    iget-object v2, p0, Lan/a;->j:Lan/s;

    invoke-interface {v1, v2}, Lan/B;->a(Landroid/location/Location;)[B
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_28

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1f

    .line 207
    :try_start_14
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbf/aH;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_28
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_21

    move-result-object v0

    .line 214
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-object v0

    .line 208
    :catch_21
    move-exception v1

    .line 209
    :try_start_22
    const-string v2, "RMI"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_1f

    .line 193
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lan/a;->a(Landroid/location/Location;)V

    .line 105
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    return-void
.end method
