.class public Lm/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/w;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/location/Location;

.field private g:Landroid/location/Location;

.field private h:F

.field private i:Lm/u;

.field private j:Lm/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x4080

    iput v0, p0, Lm/A;->h:F

    .line 81
    iput-boolean v1, p0, Lm/A;->c:Z

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lm/A;->a:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lm/A;->b:Ljava/util/List;

    .line 84
    iput-boolean v1, p0, Lm/A;->d:Z

    .line 85
    iput-boolean v1, p0, Lm/A;->e:Z

    .line 86
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .registers 3
    .parameter

    .prologue
    .line 101
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lm/A;->f:Landroid/location/Location;

    .line 106
    :goto_a
    return-object v0

    .line 103
    :cond_b
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    iget-object v0, p0, Lm/A;->g:Landroid/location/Location;

    goto :goto_a

    .line 106
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()Ljava/util/List;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-boolean v1, p0, Lm/A;->d:Z

    if-eqz v1, :cond_e

    .line 113
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_e
    iget-boolean v1, p0, Lm/A;->e:Z

    if-eqz v1, :cond_17

    .line 116
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_17
    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;JFLm/c;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    new-instance v0, Lm/B;

    invoke-direct {v0, p1, p5}, Lm/B;-><init>(Ljava/lang/String;Lm/c;)V

    .line 151
    iget-object v1, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 153
    monitor-exit p0

    return-void

    .line 150
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lm/c;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/B;

    .line 136
    iget-object v0, v0, Lm/B;->b:Lm/c;

    if-ne v0, p1, :cond_7

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 133
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public a(Lm/t;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    return-void
.end method

.method public declared-synchronized a(LA/j;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    monitor-enter p0

    :try_start_3
    instance-of v2, p1, Lk/q;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_56

    if-nez v2, :cond_9

    .line 288
    :goto_7
    monitor-exit p0

    return v0

    .line 224
    :cond_9
    :try_start_9
    check-cast p1, Lk/q;

    .line 225
    invoke-virtual {p1}, Lk/q;->b()Ljava/lang/String;

    move-result-object v2

    .line 226
    instance-of v0, p1, Lk/p;

    if-eqz v0, :cond_64

    .line 227
    check-cast p1, Lk/p;

    .line 229
    new-instance v3, Landroid/location/Location;

    invoke-virtual {p1}, Lk/p;->a()Landroid/location/Location;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 230
    invoke-virtual {v3, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 231
    iget-boolean v0, p0, Lm/A;->c:Z

    if-eqz v0, :cond_2c

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 234
    :cond_2c
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 235
    iput-object v3, p0, Lm/A;->f:Landroid/location/Location;

    .line 239
    :cond_36
    :goto_36
    iget-object v0, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/B;

    .line 240
    iget-object v5, v0, Lm/B;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 241
    iget-object v0, v0, Lm/B;->b:Lm/c;

    invoke-interface {v0, v3}, Lm/c;->onLocationChanged(Landroid/location/Location;)V
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_56

    goto :goto_3c

    .line 220
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_59
    :try_start_59
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 237
    iput-object v3, p0, Lm/A;->g:Landroid/location/Location;

    goto :goto_36

    .line 244
    :cond_64
    instance-of v0, p1, Lk/s;

    if-eqz v0, :cond_9f

    .line 245
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/A;->d:Z

    .line 250
    :cond_73
    :goto_73
    iget-object v0, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_79
    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/B;

    .line 251
    iget-object v4, v0, Lm/B;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 252
    iget-object v0, v0, Lm/B;->b:Lm/c;

    invoke-interface {v0, v2}, Lm/c;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_79

    .line 247
    :cond_93
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/A;->e:Z

    goto :goto_73

    .line 255
    :cond_9f
    instance-of v0, p1, Lk/r;

    if-eqz v0, :cond_da

    .line 256
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/A;->d:Z

    .line 261
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b4
    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/B;

    .line 262
    iget-object v4, v0, Lm/B;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 263
    iget-object v0, v0, Lm/B;->b:Lm/c;

    invoke-interface {v0, v2}, Lm/c;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_b4

    .line 258
    :cond_ce
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/A;->e:Z

    goto :goto_ae

    .line 266
    :cond_da
    instance-of v0, p1, Lk/t;

    if-eqz v0, :cond_108

    .line 267
    check-cast p1, Lk/t;

    .line 269
    iget-object v0, p0, Lm/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e6
    :goto_e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/B;

    .line 270
    iget-object v4, v0, Lm/B;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 271
    iget-object v0, v0, Lm/B;->b:Lm/c;

    invoke-virtual {p1}, Lk/t;->a()I

    move-result v4

    invoke-virtual {p1}, Lk/t;->c()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Lm/c;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_e6

    .line 275
    :cond_108
    instance-of v0, p1, Lk/x;

    if-eqz v0, :cond_134

    .line 276
    check-cast p1, Lk/x;

    .line 278
    invoke-virtual {p1}, Lk/x;->a()Lm/D;

    move-result-object v0

    invoke-virtual {v0}, Lm/D;->c()F

    move-result v0

    iput v0, p0, Lm/A;->h:F

    .line 279
    iget-object v0, p0, Lm/A;->j:Lm/c;

    if-eqz v0, :cond_134

    .line 280
    invoke-virtual {p1}, Lk/x;->a()Lm/D;

    move-result-object v0

    .line 281
    iget-boolean v2, p0, Lm/A;->c:Z

    if-eqz v2, :cond_12b

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lm/D;->a(J)V

    .line 284
    :cond_12b
    iget-object v0, p0, Lm/A;->j:Lm/c;

    invoke-virtual {p1}, Lk/x;->a()Lm/D;

    move-result-object v2

    invoke-interface {v0, v2}, Lm/c;->a(Lm/D;)V
    :try_end_134
    .catchall {:try_start_59 .. :try_end_134} :catchall_56

    :cond_134
    move v0, v1

    .line 288
    goto/16 :goto_7
.end method

.method public declared-synchronized a(Landroid/location/GpsStatus$Listener;)Z
    .registers 3
    .parameter

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/A;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 168
    iget-object v0, p0, Lm/A;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 167
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lm/A;->j:Lm/c;

    .line 158
    return-void
.end method

.method public declared-synchronized b(Landroid/location/GpsStatus$Listener;)V
    .registers 3
    .parameter

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/A;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lm/c;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lm/A;->j:Lm/c;

    .line 163
    return-void
.end method

.method public declared-synchronized b(LA/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lk/o;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-nez v0, :cond_8

    .line 297
    const/4 v0, 0x0

    .line 305
    :goto_6
    monitor-exit p0

    return v0

    .line 299
    :cond_8
    :try_start_8
    check-cast p1, Lk/o;

    .line 300
    new-instance v0, Lm/u;

    invoke-virtual {p1}, Lk/o;->b()I

    move-result v1

    invoke-virtual {p1}, Lk/o;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lm/u;-><init>(II)V

    iput-object v0, p0, Lm/A;->i:Lm/u;

    .line 302
    iget-object v0, p0, Lm/A;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus$Listener;

    .line 303
    invoke-virtual {p1}, Lk/o;->a()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    goto :goto_1f

    .line 296
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_36
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 123
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    iget-boolean v0, p0, Lm/A;->d:Z

    .line 128
    :goto_a
    return v0

    .line 125
    :cond_b
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 126
    iget-boolean v0, p0, Lm/A;->e:Z

    goto :goto_a

    .line 128
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized c()Lm/u;
    .registers 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/A;->i:Lm/u;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()F
    .registers 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lm/A;->h:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 1

    .prologue
    .line 191
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method
