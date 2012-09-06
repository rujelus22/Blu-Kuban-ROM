.class Lcom/google/ads/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/m;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/internal/o;

.field private final d:Lcom/google/ads/AdRequest$ErrorCode;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/m;Landroid/webkit/WebView;Lcom/google/ads/internal/o;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/j;->a:Lcom/google/ads/internal/m;

    iput-object p2, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/internal/j;->c:Lcom/google/ads/internal/o;

    iput-object p4, p0, Lcom/google/ads/internal/j;->d:Lcom/google/ads/AdRequest$ErrorCode;

    iput-boolean p5, p0, Lcom/google/ads/internal/j;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_e
    iget-object v0, p0, Lcom/google/ads/internal/j;->c:Lcom/google/ads/internal/o;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/ads/internal/j;->c:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->a()V

    :cond_17
    iget-boolean v0, p0, Lcom/google/ads/internal/j;->e:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/ads/internal/j;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->i()Lcom/google/ads/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/e;->setVisibility(I)V

    :cond_29
    iget-object v0, p0, Lcom/google/ads/internal/j;->a:Lcom/google/ads/internal/m;

    iget-object v1, p0, Lcom/google/ads/internal/j;->d:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method
