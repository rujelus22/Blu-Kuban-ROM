.class public Lcom/google/googlenav/friend/j;
.super Lac/a;
.source "SourceFile"

# interfaces
.implements Las/h;


# instance fields
.field private volatile a:Lcom/google/googlenav/friend/i;

.field private final b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/j;->b:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/j;->b(Lcom/google/googlenav/friend/k;)V

    .line 69
    return-void
.end method

.method public E_()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/j;->a:Lcom/google/googlenav/friend/i;

    .line 73
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method public L_()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/j;->a:Lcom/google/googlenav/friend/i;

    .line 77
    return-void
.end method

.method public M_()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/j;->a(Lcom/google/googlenav/friend/k;)V

    .line 61
    return-void
.end method

.method public a()I
    .registers 2

    .prologue
    .line 129
    const/16 v0, 0x5f

    return v0
.end method

.method public declared-synchronized a(Lcom/google/googlenav/friend/k;)V
    .registers 6
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/j;->a:Lcom/google/googlenav/friend/i;

    if-nez v0, :cond_a

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/j;->b(Lcom/google/googlenav/friend/k;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_28

    .line 102
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 92
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/friend/j;->a:Lcom/google/googlenav/friend/i;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/i;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 93
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/j;->b(Lcom/google/googlenav/friend/k;)V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_28

    goto :goto_8

    .line 86
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_2b
    if-eqz p1, :cond_8

    .line 100
    :try_start_2d
    invoke-interface {p1}, Lcom/google/googlenav/friend/k;->a()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_28

    goto :goto_8
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->aa:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 134
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 135
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 138
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ab:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 141
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_15

    .line 144
    new-instance v2, Lcom/google/googlenav/friend/i;

    invoke-direct {v2, v1}, Lcom/google/googlenav/friend/i;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/google/googlenav/friend/j;->a:Lcom/google/googlenav/friend/i;

    .line 147
    :cond_15
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2c

    .line 149
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 151
    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 153
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 155
    :cond_2c
    return v3
.end method

.method public declared-synchronized b(Lcom/google/googlenav/friend/k;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 111
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/friend/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_8
    iget-boolean v0, p0, Lcom/google/googlenav/friend/j;->c:Z

    if-nez v0, :cond_16

    .line 114
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lac/h;->c(Lac/g;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/j;->c:Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 117
    :cond_16
    monitor-exit p0

    return-void

    .line 110
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Lcom/google/googlenav/friend/i;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/friend/j;->a:Lcom/google/googlenav/friend/i;

    return-object v0
.end method

.method public declared-synchronized l_()V
    .registers 3

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/k;

    .line 122
    invoke-interface {v0}, Lcom/google/googlenav/friend/k;->a()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 121
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/googlenav/friend/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/j;->c:Z
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 126
    monitor-exit p0

    return-void
.end method
