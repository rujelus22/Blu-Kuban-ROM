.class public Ly/b;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:Ly/a;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 100
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 101
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 103
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 105
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 106
    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 107
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 108
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 115
    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 116
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 117
    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 118
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 243
    invoke-virtual {v0, p1, p2}, Ly/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V

    goto :goto_6

    .line 245
    :cond_16
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    :goto_8
    return-void

    .line 60
    :cond_9
    iget-object v1, p0, Ly/b;->a:Ljava/util/Vector;

    monitor-enter v1

    .line 63
    :try_start_c
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 64
    invoke-virtual {v0}, Ly/a;->e()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Ly/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_12

    .line 80
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v0

    .line 69
    :cond_2b
    :try_start_2b
    invoke-direct {p0, p1, p2}, Ly/b;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    .line 72
    :try_start_2e
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 73
    invoke-virtual {v0}, Ly/a;->e()Z

    move-result v3

    if-nez v3, :cond_34

    .line 74
    invoke-virtual {v0, p1, p2, p3}, Ly/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_4a

    goto :goto_34

    .line 78
    :catchall_4a
    move-exception v0

    :try_start_4b
    invoke-direct {p0, p1}, Ly/b;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    throw v0

    :cond_4f
    invoke-direct {p0, p1}, Ly/b;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 80
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_28

    goto :goto_8
.end method

.method public a(Ly/a;)V
    .registers 4
    .parameter

    .prologue
    .line 199
    iget-object v1, p0, Ly/b;->a:Ljava/util/Vector;

    monitor-enter v1

    .line 200
    :try_start_3
    invoke-virtual {p1, p0}, Ly/a;->a(Ly/b;)V

    .line 201
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 211
    invoke-virtual {p0}, Ly/b;->h()V

    .line 212
    return-void

    .line 210
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public a(ZZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 248
    const/4 v0, 0x0

    .line 249
    iget-boolean v2, p0, Ly/b;->c:Z

    if-eq p1, v2, :cond_9

    .line 250
    iput-boolean p1, p0, Ly/b;->c:Z

    move v0, v1

    .line 253
    :cond_9
    iget-boolean v2, p0, Ly/b;->d:Z

    if-eq p2, v2, :cond_15

    .line 254
    iput-boolean p2, p0, Ly/b;->d:Z

    .line 257
    :goto_f
    if-eqz v1, :cond_14

    .line 258
    invoke-virtual {p0}, Ly/b;->h()V

    .line 260
    :cond_14
    return-void

    :cond_15
    move v1, v0

    goto :goto_f
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 143
    invoke-virtual {v0, p1, p2, p3}, Ly/a;->a(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 144
    iput-object v0, p0, Ly/b;->b:Ly/a;

    .line 145
    const/4 v0, 0x1

    .line 148
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 125
    invoke-virtual {v0, p1, p2}, Ly/a;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    goto :goto_6

    .line 127
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 236
    invoke-virtual {v0, p1}, Ly/a;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_6

    .line 238
    :cond_16
    return-void
.end method

.method public a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 133
    invoke-virtual {v0, p1, p2, p3, p4}, Ly/a;->a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b(Ly/a;)V
    .registers 4
    .parameter

    .prologue
    .line 220
    iget-object v1, p0, Ly/b;->a:Ljava/util/Vector;

    monitor-enter v1

    .line 221
    :try_start_3
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 223
    invoke-virtual {p0}, Ly/b;->h()V

    .line 224
    return-void

    .line 222
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 162
    invoke-virtual {v0, p1, p2, p3}, Ly/a;->b(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 188
    invoke-virtual {v0, p1, p2, p3, p4}, Ly/a;->d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Ly/b;->c:Z

    return v0
.end method

.method public h()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 268
    invoke-virtual {v0}, Ly/a;->i()V

    goto :goto_6

    .line 270
    :cond_16
    return-void
.end method

.method public q_()Z
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Ly/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/a;

    .line 177
    invoke-virtual {v0}, Ly/a;->q_()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public t_()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Ly/b;->b:Ly/a;

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p0, Ly/b;->b:Ly/a;

    invoke-virtual {v0}, Ly/a;->t_()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Ly/b;->b:Ly/a;

    .line 157
    :cond_c
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 171
    const v0, 0xdbba0

    return v0
.end method
