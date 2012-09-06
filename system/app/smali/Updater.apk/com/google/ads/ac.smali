.class final Lcom/google/ads/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/ae;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/ads/ad;

.field final synthetic d:Lcom/google/ads/z;


# direct methods
.method constructor <init>(Lcom/google/ads/z;Lcom/google/ads/ae;Landroid/view/View;Lcom/google/ads/ad;)V
    .registers 5

    iput-object p1, p0, Lcom/google/ads/ac;->d:Lcom/google/ads/z;

    iput-object p2, p0, Lcom/google/ads/ac;->a:Lcom/google/ads/ae;

    iput-object p3, p0, Lcom/google/ads/ac;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/ac;->c:Lcom/google/ads/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/ads/ac;->d:Lcom/google/ads/z;

    iget-object v1, p0, Lcom/google/ads/ac;->a:Lcom/google/ads/ae;

    invoke-static {v0, v1}, Lcom/google/ads/z;->a(Lcom/google/ads/z;Lcom/google/ads/ae;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/ads/ac;->d:Lcom/google/ads/z;

    invoke-static {v0}, Lcom/google/ads/z;->c(Lcom/google/ads/z;)Lcom/google/ads/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/ac;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/ac;->a:Lcom/google/ads/ae;

    iget-object v3, p0, Lcom/google/ads/ac;->c:Lcom/google/ads/ad;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/a/q;->a(Landroid/view/View;Lcom/google/ads/ae;Lcom/google/ads/ad;)V

    goto :goto_f
.end method
