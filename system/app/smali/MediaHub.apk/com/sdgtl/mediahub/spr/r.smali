.class final Lcom/sdgtl/mediahub/spr/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->I(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ae;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/ae;->a(I)Lcom/sdgtl/mediahub/spr/common/cn;

    move-result-object v1

    check-cast p2, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/co;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/co;->a:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/co;->c:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/co;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "product_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "01"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string v0, "category_id"

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cn;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cn;->c:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "category_type"

    const-string v1, "02"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_15

    :cond_71
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cn;->c:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "category_type"

    const-string v1, "01"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_83
    const-string v0, "category_type"

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cn;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_8b
    const-string v2, "category_id"

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cn;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_type"

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/co;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/r;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_15
.end method
