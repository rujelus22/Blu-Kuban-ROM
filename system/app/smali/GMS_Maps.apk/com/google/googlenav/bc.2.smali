.class public Lcom/google/googlenav/bC;
.super Lcom/google/googlenav/friend/bk;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/google/googlenav/bC;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlenav/bC;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 238
    const/16 v0, 0x55

    const-string v1, "o"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    .line 133
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic b(Lcom/google/googlenav/bC;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/googlenav/bC;->s()V

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/googlenav/bC;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/bC;->c:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x410

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x419

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    .line 143
    :cond_17
    return-void
.end method

.method protected C_()V
    .registers 6

    .prologue
    .line 88
    const/16 v0, 0x55

    const-string v1, "o"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "r=l"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public declared-synchronized D_()V
    .registers 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->D_()V

    .line 156
    const/16 v0, 0x55

    const-string v1, "l"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 159
    monitor-exit p0

    return-void

    .line 155
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public E_()V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->E_()V

    .line 148
    const/16 v0, 0x55

    const-string v1, "l"

    const-string v2, "e"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public declared-synchronized L_()V
    .registers 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->L_()V

    .line 164
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aC;->b()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 165
    monitor-exit p0

    return-void

    .line 163
    :catchall_d
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
    .line 73
    new-instance v0, Lcom/google/googlenav/bE;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/google/googlenav/bE;-><init>(Lcom/google/googlenav/bC;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    return-object v0
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 101
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 102
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/googlenav/bC;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    .line 105
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, "RATINGS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method
