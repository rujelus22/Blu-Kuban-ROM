.class Lcom/google/ads/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/aa;


# direct methods
.method constructor <init>(Lcom/google/ads/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/aa;

    invoke-virtual {v0}, Lcom/google/ads/aa;->g()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/aa;

    invoke-static {v0}, Lcom/google/ads/aa;->a(Lcom/google/ads/aa;)Lcom/google/ads/mediation/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;)V

    :try_start_11
    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/aa;

    invoke-static {v0}, Lcom/google/ads/aa;->a(Lcom/google/ads/aa;)Lcom/google/ads/mediation/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->a()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called destroy() for adapter with class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/aa;

    invoke-static {v1}, Lcom/google/ads/aa;->a(Lcom/google/ads/aa;)Lcom/google/ads/mediation/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while destroying adapter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/aa;

    invoke-virtual {v2}, Lcom/google/ads/aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method
