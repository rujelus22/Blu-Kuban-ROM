.class public Lcom/google/googlenav/friend/au;
.super Lcom/google/googlenav/friend/bk;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/friend/au;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/google/googlenav/friend/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/e;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/friend/bk;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/d;)V

    .line 54
    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/au;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-class v1, Lcom/google/googlenav/friend/au;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/googlenav/friend/au;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/au;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    sput-object v0, Lcom/google/googlenav/friend/au;->a:Lcom/google/googlenav/friend/au;

    .line 63
    sget-object v0, Lcom/google/googlenav/friend/au;->a:Lcom/google/googlenav/friend/au;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Z)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-static {}, Lcom/google/googlenav/friend/au;->z()Ljava/lang/String;

    move-result-object v1

    .line 173
    if-nez v1, :cond_8

    .line 190
    :cond_7
    :goto_7
    return v0

    .line 178
    :cond_8
    invoke-static {}, Lcom/google/googlenav/friend/au;->y()Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_7

    .line 184
    if-eqz p0, :cond_25

    .line 185
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/friend/au;->q()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 190
    :goto_23
    const/4 v0, 0x1

    goto :goto_7

    .line 188
    :cond_25
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    goto :goto_23
.end method

.method public static declared-synchronized b(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/au;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const-class v1, Lcom/google/googlenav/friend/au;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/googlenav/friend/au;->j()Z

    move-result v0

    if-nez v0, :cond_c

    .line 77
    invoke-static {p0, p1, p2}, Lcom/google/googlenav/friend/au;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/au;

    .line 79
    :cond_c
    invoke-static {}, Lcom/google/googlenav/friend/au;->i()Lcom/google/googlenav/friend/au;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized i()Lcom/google/googlenav/friend/au;
    .registers 2

    .prologue
    .line 88
    const-class v0, Lcom/google/googlenav/friend/au;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/friend/au;->a:Lcom/google/googlenav/friend/au;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized j()Z
    .registers 2

    .prologue
    .line 96
    const-class v1, Lcom/google/googlenav/friend/au;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/friend/au;->a:Lcom/google/googlenav/friend/au;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k()Z
    .registers 1

    .prologue
    .line 111
    invoke-static {}, Lcom/google/googlenav/friend/au;->z()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/friend/au;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/friend/au;->x()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static l()Z
    .registers 1

    .prologue
    .line 139
    const-string v0, "LOCATION_REPORTING_TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lcom/google/googlenav/friend/au;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static m()V
    .registers 3

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/googlenav/friend/au;->a(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 163
    :goto_7
    return-void

    .line 161
    :cond_8
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "LOCATION_REPORTING_TERMS_ACCEPTED_SETTING"

    invoke-static {}, Lcom/google/googlenav/friend/au;->q()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    goto :goto_7
.end method

.method public static o()Ljava/lang/String;
    .registers 1

    .prologue
    .line 245
    const-string v0, "LOCATION_REPORTING_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method public static q()I
    .registers 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method private static x()Z
    .registers 1

    .prologue
    .line 119
    invoke-static {}, Lcom/google/googlenav/friend/au;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/au;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static y()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/google/googlenav/friend/au;->z()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1a

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION_REPORTING_DEVICE_ENABLED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static z()Ljava/lang/String;
    .registers 1

    .prologue
    .line 146
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    .line 147
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public B_()V
    .registers 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/googlenav/friend/au;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/friend/au;->c:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x19f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bd

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    .line 105
    :cond_17
    return-void
.end method

.method protected C_()V
    .registers 4

    .prologue
    .line 234
    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "sr"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method protected declared-synchronized G_()V
    .registers 2

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->G_()V

    .line 216
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/googlenav/friend/au;->x()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 218
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 221
    :cond_1f
    monitor-exit p0

    return-void

    .line 215
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized L_()V
    .registers 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->L_()V

    .line 267
    new-instance v0, Lcom/google/googlenav/friend/av;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/av;-><init>(Lcom/google/googlenav/friend/au;)V

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->d(Lcom/google/googlenav/friend/be;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 274
    monitor-exit p0

    return-void

    .line 264
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Lcom/google/googlenav/friend/aw;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/googlenav/friend/aw;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    return-object v0
.end method

.method public b_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/google/googlenav/friend/bk;->b_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 227
    new-instance v0, Lcom/google/googlenav/friend/ag;

    new-instance v1, Lcom/google/googlenav/friend/W;

    invoke-direct {v1, p1}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 229
    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->d()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aJ;->a(ZLcom/google/googlenav/friend/be;)V

    .line 230
    return-void
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter

    .prologue
    .line 195
    new-instance v0, Lcom/google/googlenav/friend/ag;

    new-instance v1, Lcom/google/googlenav/friend/W;

    invoke-direct {v1, p1}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 197
    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->b()Z

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    invoke-static {}, Lcom/google/googlenav/friend/au;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x2

    return v0
.end method

.method protected p()I
    .registers 2

    .prologue
    .line 254
    invoke-static {}, Lcom/google/googlenav/friend/au;->q()I

    move-result v0

    return v0
.end method
