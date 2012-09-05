.class final Lcom/sdgtl/mediahub/spr/screen/fg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_104

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v2

    if-eqz v2, :cond_42

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_8c

    :goto_63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "archive_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "archive_cmd"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x24

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    goto/16 :goto_5

    :cond_8c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v3, "Archive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5d

    :cond_d6
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fg;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_63

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
