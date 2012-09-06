.class Lcom/google/googlenav/ui/view/dialog/bR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laz/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bO;ZLaz/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bR;->c:Lcom/google/googlenav/ui/view/dialog/bO;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/view/dialog/bR;->a:Z

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bR;->b:Laz/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 573
    const-string v0, "d"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/bR;->a:Z

    if-eqz v0, :cond_2c

    .line 576
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bR;->c:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bR;->b:Laz/f;

    invoke-virtual {v0, v1}, Laz/a;->b(Laz/f;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 577
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/bO;->l()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    const/16 v1, 0x331

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 583
    :cond_2b
    :goto_2b
    return-void

    .line 581
    :cond_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bR;->c:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bR;->b:Laz/f;

    invoke-virtual {v0, v1}, Laz/a;->c(Laz/f;)Z

    goto :goto_2b
.end method
