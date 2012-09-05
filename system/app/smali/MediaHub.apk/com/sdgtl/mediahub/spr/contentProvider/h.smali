.class final Lcom/sdgtl/mediahub/spr/contentProvider/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/h;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "req_message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_5d

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/h;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/h;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->b(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v1, :cond_5c

    const-string v1, "MediaHubCP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderService WorkThread removed id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", num = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/h;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->b(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-void

    :cond_5d
    sget-boolean v1, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v1, :cond_1f

    const-string v1, "MediaHubCP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderService WorkThread canceled id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/h;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->b(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
