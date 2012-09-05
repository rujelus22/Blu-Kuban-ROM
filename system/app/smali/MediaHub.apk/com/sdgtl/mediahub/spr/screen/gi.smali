.class final Lcom/sdgtl/mediahub/spr/screen/gi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return v4

    :cond_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gi;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_7
.end method
