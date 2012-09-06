.class Lcom/google/googlenav/mylocationnotifier/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lan/s;

.field final synthetic b:Lcom/google/googlenav/mylocationnotifier/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/i;Lan/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iput-object p2, p0, Lcom/google/googlenav/mylocationnotifier/j;->a:Lan/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const v6, 0x7f1001ab

    const/4 v5, 0x0

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-eqz v0, :cond_63

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const v2, 0x7f10001e

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x2d8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x2ce

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/mylocationnotifier/j;->a:Lan/s;

    invoke-virtual {v4}, Lan/s;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/j;->b:Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_63
    return-void
.end method
