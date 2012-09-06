.class Lcom/google/googlenav/ui/view/dialog/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/an;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/an;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:Lcom/google/googlenav/ui/view/dialog/an;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:Lcom/google/googlenav/ui/view/dialog/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/an;->b:Lcom/google/googlenav/ui/view/dialog/am;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/am;->n:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    return-void
.end method
