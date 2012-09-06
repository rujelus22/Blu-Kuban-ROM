.class Lcom/google/googlenav/bx;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/googlenav/bw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bw;LY/c;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    iput-object p3, p0, Lcom/google/googlenav/bx;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    monitor-enter v1

    .line 222
    :try_start_4
    iget-object v2, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    invoke-static {v2}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/bw;)Lcom/google/googlenav/bv;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 223
    iget-object v0, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    invoke-static {v0}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/bw;)Lcom/google/googlenav/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bv;->B()Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_54

    .line 226
    if-eqz v0, :cond_4a

    .line 227
    iget-object v1, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    invoke-static {v1}, Lcom/google/googlenav/bw;->b(Lcom/google/googlenav/bw;)Lax/r;

    move-result-object v1

    invoke-interface {v1, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_4a

    .line 229
    iget-object v2, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    invoke-static {v2}, Lcom/google/googlenav/bw;->b(Lcom/google/googlenav/bw;)Lax/r;

    move-result-object v2

    invoke-interface {v2, v0}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_57

    invoke-static {v1, v0}, Lcom/google/googlenav/bw;->a(Lax/A;Lax/E;)Lcom/google/googlenav/bv;

    move-result-object v0

    .line 236
    :goto_35
    iget-object v1, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    monitor-enter v1

    .line 237
    :try_start_38
    iget-object v2, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    invoke-static {v2}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/bw;)Lcom/google/googlenav/bv;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ai;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 238
    iget-object v2, p0, Lcom/google/googlenav/bx;->b:Lcom/google/googlenav/bw;

    invoke-static {v2, v0}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/bw;Lcom/google/googlenav/bv;)Lcom/google/googlenav/bv;

    .line 240
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_5c

    .line 243
    :cond_4a
    iget-object v0, p0, Lcom/google/googlenav/bx;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_53

    .line 244
    iget-object v0, p0, Lcom/google/googlenav/bx;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 246
    :cond_53
    return-void

    .line 225
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    .line 232
    :cond_57
    invoke-static {v1}, Lcom/google/googlenav/bw;->a(Lax/A;)Lcom/google/googlenav/bv;

    move-result-object v0

    goto :goto_35

    .line 240
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method
