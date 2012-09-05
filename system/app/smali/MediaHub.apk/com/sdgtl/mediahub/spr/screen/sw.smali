.class final Lcom/sdgtl/mediahub/spr/screen/sw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/su;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/su;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4f
    :goto_4f
    const/4 v0, 0x1

    return v0

    :cond_51
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sw;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->showDialog(I)V

    goto :goto_4f
.end method
