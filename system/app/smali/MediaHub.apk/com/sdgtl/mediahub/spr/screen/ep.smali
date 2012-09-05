.class final Lcom/sdgtl/mediahub/spr/screen/ep;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemDownloadClick(Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(I)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ep;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b()V

    goto :goto_20
.end method
