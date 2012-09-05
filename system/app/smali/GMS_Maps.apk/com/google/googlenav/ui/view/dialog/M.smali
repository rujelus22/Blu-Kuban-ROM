.class Lcom/google/googlenav/ui/view/dialog/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/L;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/L;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/M;->b:Lcom/google/googlenav/ui/view/dialog/L;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/M;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/M;->b:Lcom/google/googlenav/ui/view/dialog/L;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/L;->b:Lcom/google/googlenav/ui/view/dialog/K;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/K;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/M;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
