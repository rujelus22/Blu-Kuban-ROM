.class final Lcom/google/ads/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/a/q;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/a/s;

.field private final d:Lcom/google/ads/e;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/a/q;Landroid/webkit/WebView;Lcom/google/ads/a/s;Lcom/google/ads/e;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/l;->a:Lcom/google/ads/a/q;

    iput-object p2, p0, Lcom/google/ads/a/l;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/a/l;->c:Lcom/google/ads/a/s;

    iput-object p4, p0, Lcom/google/ads/a/l;->d:Lcom/google/ads/e;

    iput-boolean p5, p0, Lcom/google/ads/a/l;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/a/l;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/ads/a/l;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/a/l;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_e
    iget-object v0, p0, Lcom/google/ads/a/l;->c:Lcom/google/ads/a/s;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/ads/a/l;->c:Lcom/google/ads/a/s;

    invoke-virtual {v0}, Lcom/google/ads/a/s;->a()V

    :cond_17
    iget-boolean v0, p0, Lcom/google/ads/a/l;->e:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/ads/a/l;->a:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->i()Lcom/google/ads/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/c;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    :cond_29
    iget-object v0, p0, Lcom/google/ads/a/l;->a:Lcom/google/ads/a/q;

    iget-object v1, p0, Lcom/google/ads/a/l;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(Lcom/google/ads/e;)V

    return-void
.end method
