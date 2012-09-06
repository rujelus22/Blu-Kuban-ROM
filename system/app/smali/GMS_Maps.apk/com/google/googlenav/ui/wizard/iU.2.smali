.class Lcom/google/googlenav/ui/wizard/iU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iZ;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iT;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iU;->b:Lcom/google/googlenav/ui/wizard/iT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iU;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iU;->b:Lcom/google/googlenav/ui/wizard/iT;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/iT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/iV;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/iV;-><init>(Lcom/google/googlenav/ui/wizard/iU;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 400
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iU;->a:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iU;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iU;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iU;->b:Lcom/google/googlenav/ui/wizard/iT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iT;->a(Lcom/google/googlenav/ui/wizard/iT;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iU;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    return-void
.end method
