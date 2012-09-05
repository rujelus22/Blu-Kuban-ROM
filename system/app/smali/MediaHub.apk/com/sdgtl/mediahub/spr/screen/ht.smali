.class final Lcom/sdgtl/mediahub/spr/screen/ht;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "archive_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "archive_cmd"

    const-string v2, "01"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ht;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x24

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V

    goto :goto_5

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
