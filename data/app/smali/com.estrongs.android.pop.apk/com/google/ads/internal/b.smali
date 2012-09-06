.class public final Lcom/google/ads/internal/b;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/ads/internal/b;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p2, p0, Lcom/google/ads/internal/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/ads/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p1}, Lcom/google/ads/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/internal/b;->a:Z

    if-eqz v2, :cond_e

    :goto_a
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/ads/internal/b;->a:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/internal/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    return-object p1
.end method
