.class Lcom/google/ads/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/n;->b:Landroid/webkit/WebView;

    iput-boolean p2, p0, Lcom/google/ads/n;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/n;->b:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lcom/google/ads/n;->a:Z

    invoke-static {v0, v1}, Lcom/google/ads/k;->a(Landroid/webkit/WebView;Z)V

    return-void
.end method
