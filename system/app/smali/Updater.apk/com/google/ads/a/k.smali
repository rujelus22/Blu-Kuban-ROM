.class final Lcom/google/ads/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/w;

.field final synthetic b:Lcom/google/ads/a/j;


# direct methods
.method constructor <init>(Lcom/google/ads/a/j;Lcom/google/ads/w;)V
    .registers 3

    iput-object p1, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    iput-object p2, p0, Lcom/google/ads/a/k;->a:Lcom/google/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->a(Lcom/google/ads/a/j;)Lcom/google/ads/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/k;->a:Lcom/google/ads/w;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(Lcom/google/ads/w;)V

    return-void
.end method
