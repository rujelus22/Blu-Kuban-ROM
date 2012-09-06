.class final Lcom/google/ads/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/ae;


# direct methods
.method constructor <init>(Lcom/google/ads/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ads/af;->a:Lcom/google/ads/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/af;->a:Lcom/google/ads/ae;

    invoke-virtual {v0}, Lcom/google/ads/ae;->h()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/ads/af;->a:Lcom/google/ads/ae;

    invoke-static {v0}, Lcom/google/ads/ae;->a(Lcom/google/ads/ae;)Lcom/google/ads/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/Object;)V

    :try_start_11
    iget-object v0, p0, Lcom/google/ads/af;->a:Lcom/google/ads/ae;

    invoke-static {v0}, Lcom/google/ads/ae;->a(Lcom/google/ads/ae;)Lcom/google/ads/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/b/b;->a()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_3b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called destroy() for adapter with class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/af;->a:Lcom/google/ads/ae;

    invoke-static {v1}, Lcom/google/ads/ae;->a(Lcom/google/ads/ae;)Lcom/google/ads/b/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while destroying adapter ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/af;->a:Lcom/google/ads/ae;

    invoke-virtual {v2}, Lcom/google/ads/ae;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method
