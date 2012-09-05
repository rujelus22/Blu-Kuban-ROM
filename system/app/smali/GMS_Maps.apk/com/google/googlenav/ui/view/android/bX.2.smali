.class Lcom/google/googlenav/ui/view/android/bX;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/widget/Button;

.field final synthetic f:Landroid/widget/Button;

.field final synthetic g:Landroid/widget/Button;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Lcom/google/googlenav/ui/view/android/bU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bU;Lcom/google/googlenav/ui/p;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .registers 10

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bX;->i:Lcom/google/googlenav/ui/view/android/bU;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bX;->a:Lcom/google/googlenav/ui/p;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bX;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bX;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/bX;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/bX;->e:Landroid/widget/Button;

    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/bX;->f:Landroid/widget/Button;

    iput-object p8, p0, Lcom/google/googlenav/ui/view/android/bX;->g:Landroid/widget/Button;

    iput-object p9, p0, Lcom/google/googlenav/ui/view/android/bX;->h:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/16 v5, 0x351

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x6a9

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bX;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->c:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_25
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->i:Lcom/google/googlenav/ui/view/android/bU;

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bU;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method
