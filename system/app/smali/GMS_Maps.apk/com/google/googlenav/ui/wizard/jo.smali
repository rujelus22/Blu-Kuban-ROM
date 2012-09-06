.class Lcom/google/googlenav/ui/wizard/jo;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/jn;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/jn;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jo;->a:Lcom/google/googlenav/ui/wizard/jn;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jo;->a:Lcom/google/googlenav/ui/wizard/jn;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/jn;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jj;->f()V

    .line 164
    return-void
.end method
