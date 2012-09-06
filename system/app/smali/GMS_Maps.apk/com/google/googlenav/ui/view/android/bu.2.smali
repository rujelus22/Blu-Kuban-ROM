.class Lcom/google/googlenav/ui/view/android/bU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/widget/Button;

.field final synthetic f:Landroid/widget/Button;

.field final synthetic g:Landroid/widget/Button;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Lcom/google/googlenav/ui/view/android/bR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bR;Lcom/google/googlenav/ui/g;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bU;->i:Lcom/google/googlenav/ui/view/android/bR;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bU;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bU;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bU;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/bU;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/bU;->e:Landroid/widget/Button;

    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/bU;->f:Landroid/widget/Button;

    iput-object p8, p0, Lcom/google/googlenav/ui/view/android/bU;->g:Landroid/widget/Button;

    iput-object p9, p0, Lcom/google/googlenav/ui/view/android/bU;->h:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x40d

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x6a9

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bU;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->c:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_25
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void

    .line 149
    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bU;->i:Lcom/google/googlenav/ui/view/android/bR;

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bR;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method
