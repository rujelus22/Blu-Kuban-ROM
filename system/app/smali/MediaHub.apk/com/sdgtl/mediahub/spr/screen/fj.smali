.class final Lcom/sdgtl/mediahub/spr/screen/fj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_7

    :cond_28
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_7

    :cond_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;-><init>(Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_7

    :cond_7c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a:Landroid/os/Handler;

    invoke-static {v0, v3, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILcom/sdgtl/mediahub/spr/common/di;Landroid/os/Handler;)V

    goto/16 :goto_7

    :cond_9b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;-><init>(Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/fj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_7
.end method
