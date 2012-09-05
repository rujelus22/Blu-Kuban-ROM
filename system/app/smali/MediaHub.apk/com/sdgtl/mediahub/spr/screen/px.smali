.class final Lcom/sdgtl/mediahub/spr/screen/px;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-eq v0, v2, :cond_58

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->s(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->s(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_58
    :goto_58
    return v2

    :cond_59
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/px;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->showDialog(I)V

    goto :goto_58
.end method
