.class Lcom/google/ads/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/aa;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/ads/y;

.field final synthetic d:Lcom/google/ads/u;


# direct methods
.method constructor <init>(Lcom/google/ads/u;Lcom/google/ads/aa;Landroid/view/View;Lcom/google/ads/y;)V
    .registers 5

    iput-object p1, p0, Lcom/google/ads/x;->d:Lcom/google/ads/u;

    iput-object p2, p0, Lcom/google/ads/x;->a:Lcom/google/ads/aa;

    iput-object p3, p0, Lcom/google/ads/x;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/x;->c:Lcom/google/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/ads/x;->d:Lcom/google/ads/u;

    iget-object v1, p0, Lcom/google/ads/x;->a:Lcom/google/ads/aa;

    invoke-static {v0, v1}, Lcom/google/ads/u;->a(Lcom/google/ads/u;Lcom/google/ads/aa;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/ads/x;->d:Lcom/google/ads/u;

    invoke-static {v0}, Lcom/google/ads/u;->b(Lcom/google/ads/u;)Lcom/google/ads/internal/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/x;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/x;->a:Lcom/google/ads/aa;

    iget-object v3, p0, Lcom/google/ads/x;->c:Lcom/google/ads/y;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/internal/m;->a(Landroid/view/View;Lcom/google/ads/aa;Lcom/google/ads/y;Z)V

    goto :goto_f
.end method
