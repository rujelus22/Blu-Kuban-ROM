.class Lcom/google/googlenav/ui/view/dialog/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/a;->a(Lcom/google/googlenav/ui/view/dialog/a;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, LO/a;->a(Ljava/lang/String;I)Z

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/a;->b(Lcom/google/googlenav/ui/view/dialog/a;)LaM/m;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 318
    return-void
.end method
