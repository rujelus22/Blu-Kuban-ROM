.class final Lcom/sdgtl/mediahub/spr/screen/hv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemDownloadClick(Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hv;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b()V

    goto :goto_25
.end method
