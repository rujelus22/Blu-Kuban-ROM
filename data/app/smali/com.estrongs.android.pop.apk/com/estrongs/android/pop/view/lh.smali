.class Lcom/estrongs/android/pop/view/lh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/le;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/le;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lh;->a:Lcom/estrongs/android/pop/view/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/a;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/ads/a;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lh;->a:Lcom/estrongs/android/pop/view/le;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/le;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public b(Lcom/google/ads/a;)V
    .registers 2

    return-void
.end method

.method public c(Lcom/google/ads/a;)V
    .registers 2

    return-void
.end method

.method public d(Lcom/google/ads/a;)V
    .registers 2

    return-void
.end method
