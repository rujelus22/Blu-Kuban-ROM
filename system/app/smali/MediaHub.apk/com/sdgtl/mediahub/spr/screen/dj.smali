.class final Lcom/sdgtl/mediahub/spr/screen/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getItem(I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-boolean v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v2, :cond_51

    const-string v2, "parent_product_id"

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mymedia_category"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mymedia_refresh_status"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_48

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Landroid/os/Bundle;I)V

    goto :goto_6

    :cond_48
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x6

    invoke-static {v0, v2, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_6

    :cond_51
    const-string v2, "product_id"

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mymedia_category"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dj;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->l:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_6
.end method
