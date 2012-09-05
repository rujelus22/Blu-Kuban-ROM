.class final Lcom/sdgtl/mediahub/spr/screen/fl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 13

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const-string v1, "02"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    iget-wide v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v8}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v8

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v9}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v9

    iget v9, v9, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/screen/fl;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v10

    iget v10, v10, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static/range {v0 .. v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V

    goto :goto_6
.end method
