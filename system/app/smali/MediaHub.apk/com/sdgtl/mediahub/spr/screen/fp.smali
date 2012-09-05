.class final Lcom/sdgtl/mediahub/spr/screen/fp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    :goto_5
    return-void

    :pswitch_6
    const-string v1, "01"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v1, "02"

    :cond_1f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    iget-wide v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v8}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v8

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v9}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v9

    iget v9, v9, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/screen/fp;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v10

    iget v10, v10, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static/range {v0 .. v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V

    goto :goto_5

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
