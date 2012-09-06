.class Lcom/google/googlenav/friend/c;
.super Lcom/google/googlenav/friend/U;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/List;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 153
    iput-object p2, p0, Lcom/google/googlenav/friend/c;->c:Ljava/util/List;

    .line 154
    iput-object p3, p0, Lcom/google/googlenav/friend/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    return-void
.end method


# virtual methods
.method public l_()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/friend/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/b;

    .line 160
    iget-boolean v1, p0, Lcom/google/googlenav/friend/c;->b:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlenav/friend/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    :goto_19
    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 161
    iget-object v1, p0, Lcom/google/googlenav/friend/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    iget-boolean v1, p0, Lcom/google/googlenav/friend/c;->b:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/googlenav/friend/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    :goto_2a
    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7

    :cond_2e
    move-object v1, v2

    .line 160
    goto :goto_19

    :cond_30
    move-object v1, v2

    .line 162
    goto :goto_2a

    .line 165
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/friend/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    invoke-super {p0}, Lcom/google/googlenav/friend/U;->l_()V

    .line 167
    return-void
.end method
