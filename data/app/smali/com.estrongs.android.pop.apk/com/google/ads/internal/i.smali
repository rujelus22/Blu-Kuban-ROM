.class Lcom/google/ads/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/s;

.field final synthetic b:Lcom/google/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/s;)V
    .registers 3

    iput-object p1, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/c;

    iput-object p2, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/s;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Lcom/google/ads/s;)V

    return-void
.end method
