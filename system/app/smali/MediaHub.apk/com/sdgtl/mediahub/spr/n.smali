.class final Lcom/sdgtl/mediahub/spr/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;I)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->R(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v0

    if-ne v0, p2, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1d

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    if-eqz v0, :cond_1d

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/n;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/String;)V

    goto :goto_1d
.end method
