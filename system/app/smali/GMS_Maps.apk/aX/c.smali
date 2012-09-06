.class Lax/c;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lax/b;


# direct methods
.method constructor <init>(Lax/b;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lax/c;->a:Lax/b;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 189
    iget-object v0, p0, Lax/c;->a:Lax/b;

    invoke-static {v0}, Lax/b;->a(Lax/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_7
    iget-object v0, p0, Lax/c;->a:Lax/b;

    invoke-static {v0}, Lax/b;->a(Lax/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 193
    monitor-exit v1

    .line 224
    :goto_14
    return-void

    .line 195
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_2a

    .line 198
    iget-object v0, p0, Lax/c;->a:Lax/b;

    invoke-static {v0}, Lax/b;->b(Lax/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 199
    :try_start_1d
    iget-object v0, p0, Lax/c;->a:Lax/b;

    invoke-static {v0}, Lax/b;->c(Lax/b;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 200
    monitor-exit v1

    goto :goto_14

    .line 206
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0

    .line 195
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 202
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lax/c;->a:Lax/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lax/b;->a(Lax/b;Z)Z

    .line 204
    iget-object v0, p0, Lax/c;->a:Lax/b;

    invoke-static {v0}, Lax/b;->d(Lax/b;)Z

    move-result v0

    .line 205
    iget-object v2, p0, Lax/c;->a:Lax/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lax/b;->b(Lax/b;Z)Z

    .line 206
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_27

    .line 208
    const-string v1, "BackgroundPlaceDetailsFetcher.doCheck"

    invoke-static {v1}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lax/c;->a:Lax/b;

    invoke-static {v1}, Lax/b;->e(Lax/b;)I

    move-result v1

    .line 219
    if-eqz v0, :cond_65

    .line 220
    const-string v0, "BPDF1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_65
    const-string v0, "BackgroundPlaceDetailsFetcher.doCheck"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    goto :goto_14
.end method
