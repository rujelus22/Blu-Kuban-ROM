.class public Laq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field protected b:Z

.field c:Ln/B;

.field d:Ln/B;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Laq/c;->e:I

    .line 47
    iput v1, p0, Laq/c;->a:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Laq/c;->b:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laq/c;->f:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Laq/c;->g:Z

    .line 81
    iput-object v2, p0, Laq/c;->c:Ln/B;

    .line 89
    iput-object v2, p0, Laq/c;->d:Ln/B;

    .line 93
    iput v1, p0, Laq/c;->h:I

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laq/c;->i:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private i()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Laq/c;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    const/4 v3, 0x0

    :try_start_6
    iput v3, p0, Laq/c;->a:I

    .line 195
    iget-boolean v3, p0, Laq/c;->b:Z

    if-eqz v3, :cond_14

    .line 196
    iget v1, p0, Laq/c;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laq/c;->e:I

    .line 197
    monitor-exit v2

    .line 203
    :goto_13
    return v0

    .line 199
    :cond_14
    iget v3, p0, Laq/c;->e:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1e

    .line 200
    monitor-exit v2

    goto :goto_13

    .line 204
    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0

    .line 202
    :cond_1e
    :try_start_1e
    iget v0, p0, Laq/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laq/c;->e:I

    .line 203
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    move v0, v1

    goto :goto_13
.end method

.method private j()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Laq/c;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 214
    const/4 v3, 0x0

    :try_start_6
    iput v3, p0, Laq/c;->e:I

    .line 215
    iget-boolean v3, p0, Laq/c;->b:Z

    if-eqz v3, :cond_14

    .line 216
    iget v1, p0, Laq/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laq/c;->a:I

    .line 217
    monitor-exit v2

    .line 223
    :goto_13
    return v0

    .line 219
    :cond_14
    iget v3, p0, Laq/c;->a:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1e

    .line 220
    monitor-exit v2

    goto :goto_13

    .line 224
    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0

    .line 222
    :cond_1e
    :try_start_1e
    iget v0, p0, Laq/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laq/c;->a:I

    .line 223
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    move v0, v1

    goto :goto_13
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 103
    iget-object v1, p0, Laq/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Laq/c;->b:Z

    .line 105
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 106
    invoke-virtual {p0}, Laq/c;->g()V

    .line 107
    return-void

    .line 105
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Ln/B;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    if-eqz p1, :cond_f

    .line 120
    invoke-virtual {p0, p1}, Laq/c;->b(Ln/B;)V

    .line 121
    invoke-direct {p0}, Laq/c;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 122
    invoke-virtual {p0}, Laq/c;->g()V

    .line 129
    :cond_e
    :goto_e
    return-void

    .line 125
    :cond_f
    invoke-direct {p0}, Laq/c;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    invoke-virtual {p0}, Laq/c;->h()V

    goto :goto_e
.end method

.method public b()V
    .registers 1

    .prologue
    .line 111
    invoke-virtual {p0}, Laq/c;->h()V

    .line 112
    return-void
.end method

.method b(Ln/B;)V
    .registers 5
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0}, Laq/c;->f()Ln/B;

    move-result-object v0

    .line 236
    iget-object v1, p0, Laq/c;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    if-nez v0, :cond_f

    .line 238
    :try_start_9
    iput-object p1, p0, Laq/c;->c:Ln/B;

    .line 252
    :goto_b
    iput-object p1, p0, Laq/c;->d:Ln/B;

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 239
    :cond_f
    invoke-virtual {v0, p1}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Laq/c;->h:I

    goto :goto_b

    .line 253
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v0

    .line 241
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Laq/c;->d:Ln/B;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Laq/c;->d:Ln/B;

    invoke-virtual {v0, p1}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 242
    iget v0, p0, Laq/c;->h:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_33

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Laq/c;->h:I

    .line 244
    iput-object p1, p0, Laq/c;->c:Ln/B;

    goto :goto_b

    .line 247
    :cond_33
    iget v0, p0, Laq/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laq/c;->h:I

    goto :goto_b

    .line 250
    :cond_3a
    const/4 v0, 0x1

    iput v0, p0, Laq/c;->h:I
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_19

    goto :goto_b
.end method

.method public c()V
    .registers 3

    .prologue
    .line 135
    iget-object v1, p0, Laq/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Laq/c;->b:Z

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Laq/c;->g:Z

    return v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 151
    iget-object v1, p0, Laq/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_3
    iget-boolean v0, p0, Laq/c;->b:Z

    monitor-exit v1

    return v0

    .line 153
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public f()Ln/B;
    .registers 3

    .prologue
    .line 160
    iget-object v1, p0, Laq/c;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_3
    iget-object v0, p0, Laq/c;->c:Ln/B;

    monitor-exit v1

    return-object v0

    .line 162
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method g()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Laq/c;->g:Z

    .line 171
    return-void
.end method

.method h()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Laq/c;->g:Z

    .line 179
    iget-object v1, p0, Laq/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_6
    iget v0, p0, Laq/c;->e:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_e

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/c;->b:Z

    .line 184
    :cond_e
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method
