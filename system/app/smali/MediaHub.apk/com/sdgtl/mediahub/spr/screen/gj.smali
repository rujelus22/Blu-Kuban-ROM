.class final Lcom/sdgtl/mediahub/spr/screen/gj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/gr;->g:Lcom/sdgtl/mediahub/spr/screen/gr;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Lcom/sdgtl/mediahub/spr/screen/gr;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_7

    :cond_3c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto :goto_7

    :cond_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v2, 0x7f0a011d

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_7

    :cond_51
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->i(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto :goto_7
.end method
