.class public Lcom/google/googlenav/friend/E;
.super Lcom/google/googlenav/friend/bk;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/friend/E;


# instance fields
.field private e:LaM/am;

.field private f:I

.field private g:Z


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/google/googlenav/friend/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/e;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/friend/bk;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/d;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/friend/E;->f:I

    .line 78
    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/E;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const-class v1, Lcom/google/googlenav/friend/E;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/googlenav/friend/E;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/E;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    sput-object v0, Lcom/google/googlenav/friend/E;->a:Lcom/google/googlenav/friend/E;

    .line 87
    sget-object v0, Lcom/google/googlenav/friend/E;->a:Lcom/google/googlenav/friend/E;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized i()Lcom/google/googlenav/friend/E;
    .registers 2

    .prologue
    .line 112
    const-class v0, Lcom/google/googlenav/friend/E;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/friend/E;->a:Lcom/google/googlenav/friend/E;
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
    .line 120
    const-class v1, Lcom/google/googlenav/friend/E;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/friend/E;->a:Lcom/google/googlenav/friend/E;
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
    .line 150
    const-string v0, "TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lcom/google/googlenav/friend/E;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static l()V
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "TERMS_ACCEPTED_SETTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 158
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 159
    return-void
.end method

.method public static m()V
    .registers 3

    .prologue
    .line 166
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "TERMS_ACCEPTED_SETTING"

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 168
    return-void
.end method

.method public static n()Ljava/lang/String;
    .registers 1

    .prologue
    .line 250
    const-string v0, "TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method public static o()I
    .registers 1

    .prologue
    .line 254
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public B_()V
    .registers 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/googlenav/friend/E;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 136
    iget-object v0, p0, Lcom/google/googlenav/friend/E;->c:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x19f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bd

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    .line 139
    :cond_17
    return-void
.end method

.method protected C_()V
    .registers 4

    .prologue
    .line 240
    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public declared-synchronized D_()V
    .registers 4

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/friend/E;->k()Z

    move-result v0

    if-nez v0, :cond_18

    .line 210
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/google/googlenav/friend/E;->b:Lcom/google/googlenav/android/Y;

    if-eqz v1, :cond_16

    .line 212
    iget-object v1, p0, Lcom/google/googlenav/friend/E;->b:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/friend/F;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/F;-><init>(Lcom/google/googlenav/friend/E;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 227
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 225
    :cond_18
    :try_start_18
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->D_()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_16

    .line 209
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized L_()V
    .registers 6

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->L_()V

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    if-eqz v0, :cond_23

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/am;->d(I)V

    .line 277
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    invoke-virtual {v0}, LaM/am;->ab()LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 282
    :cond_23
    new-instance v0, Lcom/google/googlenav/friend/G;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/G;-><init>(Lcom/google/googlenav/friend/E;)V

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->d(Lcom/google/googlenav/friend/be;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 290
    monitor-exit p0

    return-void

    .line 269
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    invoke-virtual {v0}, LaM/am;->aa()I

    move-result v5

    .line 194
    iget v0, p0, Lcom/google/googlenav/friend/E;->f:I

    if-eq v0, v1, :cond_f

    .line 195
    iget v5, p0, Lcom/google/googlenav/friend/E;->f:I

    .line 196
    iput v1, p0, Lcom/google/googlenav/friend/E;->f:I

    .line 198
    :cond_f
    new-instance v0, Lcom/google/googlenav/friend/H;

    iget-object v1, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/H;-><init>(LaM/am;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;I)V

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput p1, p0, Lcom/google/googlenav/friend/E;->f:I

    .line 297
    return-void
.end method

.method public a(LaM/am;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/friend/E;->e:LaM/am;

    .line 131
    return-void
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 232
    new-instance v0, Lcom/google/googlenav/friend/W;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 233
    new-instance v1, Lcom/google/googlenav/friend/ag;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 235
    invoke-static {v1}, Lcom/google/googlenav/friend/aJ;->b(Lcom/google/googlenav/friend/ag;)V

    .line 236
    return-void
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/google/googlenav/friend/ag;

    new-instance v1, Lcom/google/googlenav/friend/W;

    invoke-direct {v1, p1}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 174
    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/E;->g:Z

    .line 176
    iget-boolean v0, p0, Lcom/google/googlenav/friend/E;->g:Z

    return v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    invoke-static {}, Lcom/google/googlenav/friend/E;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x2

    return v0
.end method

.method protected p()I
    .registers 2

    .prologue
    .line 259
    invoke-static {}, Lcom/google/googlenav/friend/E;->o()I

    move-result v0

    return v0
.end method
