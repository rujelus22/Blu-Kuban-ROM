.class Lax/d;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic f:Lax/b;


# direct methods
.method constructor <init>(Lax/b;LY/c;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lax/d;->f:Lax/b;

    iput-object p3, p0, Lax/d;->a:Ljava/lang/String;

    iput-object p4, p0, Lax/d;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 290
    iget-object v0, p0, Lax/d;->f:Lax/b;

    invoke-static {v0}, Lax/b;->a(Lax/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 291
    :try_start_7
    iget-object v0, p0, Lax/d;->f:Lax/b;

    invoke-static {v0}, Lax/b;->a(Lax/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lax/d;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 292
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_28

    .line 294
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->d()[Lax/m;

    move-result-object v1

    .line 295
    const/4 v0, 0x0

    :goto_1c
    array-length v2, v1

    if-ge v0, v2, :cond_37

    .line 296
    aget-object v2, v1, v0

    .line 297
    aget-object v3, v1, v0

    if-nez v3, :cond_2b

    .line 295
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 292
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 300
    :cond_2b
    iget-object v3, p0, Lax/d;->f:Lax/b;

    iget-object v4, p0, Lax/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lax/d;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v3, v2, v4, v5}, Lax/b;->a(Lax/b;Lax/m;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 304
    :cond_37
    iget-object v0, p0, Lax/d;->f:Lax/b;

    invoke-virtual {v0}, Lax/b;->b()V

    .line 305
    return-void
.end method
