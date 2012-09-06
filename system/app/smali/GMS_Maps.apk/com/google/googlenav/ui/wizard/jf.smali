.class Lcom/google/googlenav/ui/wizard/jf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jf;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jf;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ja;->c(Lcom/google/googlenav/ui/wizard/ja;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m"

    if-ne v0, v1, :cond_11

    .line 565
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jf;->a:Lcom/google/googlenav/ui/wizard/ja;

    const-string v1, "p"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->b(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jf;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/co;->dismiss()V

    .line 570
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jf;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    .line 571
    return-void
.end method
