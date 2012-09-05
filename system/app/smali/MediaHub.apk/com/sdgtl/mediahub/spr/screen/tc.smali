.class final Lcom/sdgtl/mediahub/spr/screen/tc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_33
    const/4 v0, 0x1

    return v0

    :cond_35
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/tc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->showDialog(I)V

    goto :goto_33
.end method
