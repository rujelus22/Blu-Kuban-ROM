.class public final Lcom/google/ads/util/aa;
.super Lcom/google/ads/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/util/y",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/ads/util/w;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/util/w;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/ads/util/aa;->d:Lcom/google/ads/util/w;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/util/y;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Lcom/google/ads/util/x;)V

    iput-boolean v1, p0, Lcom/google/ads/util/aa;->e:Z

    iput-boolean v1, p0, Lcom/google/ads/util/aa;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/ads/util/aa;->d:Lcom/google/ads/util/w;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/util/y;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;Lcom/google/ads/util/x;)V

    iput-boolean v1, p0, Lcom/google/ads/util/aa;->e:Z

    iput-boolean v1, p0, Lcom/google/ads/util/aa;->e:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/util/aa;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/util/aa;->d:Lcom/google/ads/util/w;

    invoke-virtual {v1}, Lcom/google/ads/util/w;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/util/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' <-- \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/util/aa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/util/aa;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/util/aa;->e:Z
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/ads/util/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/ads/util/aa;->e:Z

    if-eqz v0, :cond_1c

    const-string v0, " (*)"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, ""

    goto :goto_13
.end method
