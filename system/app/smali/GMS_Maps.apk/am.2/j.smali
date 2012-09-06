.class public Lam/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lah/s;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Lah/s;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lam/j;->a:Lah/s;

    .line 163
    iput-object p2, p0, Lam/j;->b:Ljava/util/Set;

    .line 164
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lam/j;->c:Ljava/util/List;

    .line 165
    return-void
.end method

.method static synthetic a(Lam/j;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lam/j;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lah/p;)I
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lam/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 221
    :goto_a
    return v0

    .line 187
    :cond_b
    iget-object v0, p0, Lam/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 188
    invoke-static {v2}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 190
    iget-object v0, p0, Lam/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 191
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 192
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_35

    .line 207
    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v1

    .line 208
    goto :goto_a

    .line 195
    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/m;

    .line 196
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 198
    invoke-static {v0}, Lam/i;->c(Lam/m;)Lcom/google/googlenav/ui/bx;

    move-result-object v5

    .line 199
    if-eqz v5, :cond_21

    .line 202
    iget-object v6, p0, Lam/j;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lam/m;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 205
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 210
    :cond_58
    iget-object v0, p0, Lam/j;->a:Lah/s;

    new-instance v1, Lam/k;

    invoke-direct {v1, p0, p1}, Lam/k;-><init>(Lam/j;Lah/p;)V

    invoke-virtual {v0, v3, v1}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 221
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method

.method public a()V
    .registers 5

    .prologue
    .line 226
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 227
    monitor-enter v1

    .line 228
    :try_start_6
    new-instance v0, Lam/l;

    invoke-direct {v0, p0, v1}, Lam/l;-><init>(Lam/j;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lam/j;->a(Lah/p;)I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_18

    move-result v0

    .line 236
    if-lez v0, :cond_16

    .line 238
    const-wide/16 v2, 0x2710

    :try_start_13
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_1b

    .line 243
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v0

    .line 239
    :catch_1b
    move-exception v0

    goto :goto_16
.end method

.method public a(Lam/m;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lam/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
