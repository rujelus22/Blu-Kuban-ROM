.class final Lcom/sdgtl/mediahub/spr/screen/hy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/hy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemPlayLongClick(Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/hy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_1e
    return-void
.end method
