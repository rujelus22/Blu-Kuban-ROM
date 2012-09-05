.class final Lcom/sdgtl/mediahub/spr/screen/sf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->D(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_41
    :goto_41
    const/4 v0, 0x1

    return v0

    :cond_43
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sf;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->showDialog(I)V

    goto :goto_41
.end method
