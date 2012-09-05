.class Lcom/google/googlenav/ui/wizard/hF;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hF;->a:Lcom/google/googlenav/ui/wizard/hE;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hF;->a:Lcom/google/googlenav/ui/wizard/hE;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hA;->f()V

    return-void
.end method
