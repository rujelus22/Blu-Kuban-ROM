.class final Lcom/google/ads/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/w;

.field final synthetic b:Lcom/google/ads/z;


# direct methods
.method constructor <init>(Lcom/google/ads/z;Lcom/google/ads/w;)V
    .registers 3

    iput-object p1, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/z;

    iput-object p2, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/z;

    invoke-static {v0}, Lcom/google/ads/z;->c(Lcom/google/ads/z;)Lcom/google/ads/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/w;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->b(Lcom/google/ads/w;)V

    return-void
.end method
