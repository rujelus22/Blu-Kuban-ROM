.class final Lcom/sdgtl/mediahub/spr/screen/pl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/pk;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/pk;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "show_that_aired_date"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/ql;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/ql;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "category_order"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "show_that_aired"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/ql;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/ql;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "category_type"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "category_order"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_55

    :cond_b9
    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_55

    :cond_cb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pl;->a:Lcom/sdgtl/mediahub/spr/screen/pk;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_55
.end method
