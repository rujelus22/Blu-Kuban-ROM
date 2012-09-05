.class final Lcom/sdgtl/mediahub/spr/contentProvider/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response_finish"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    sget-boolean v2, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v2, :cond_46

    const-string v2, "MediaHubCP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentProviderService ImageThread canceled id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_53
    return-void

    :cond_54
    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_53

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v2, :cond_9b

    const-string v2, "MediaHubCP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentProviderService ImageThread removed id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;JZ)V

    goto :goto_53

    :cond_a2
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/i;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v2, v0, v1, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;JZ)V

    goto :goto_53
.end method
