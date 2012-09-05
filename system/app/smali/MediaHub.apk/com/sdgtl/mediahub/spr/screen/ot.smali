.class final Lcom/sdgtl/mediahub/spr/screen/ot;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_74
    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_84
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ot;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f
.end method
