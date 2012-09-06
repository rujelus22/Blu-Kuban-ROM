.class Lcom/google/googlenav/ui/view/dialog/e;
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
    .line 307
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/e;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/e;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 310
    return-void
.end method
