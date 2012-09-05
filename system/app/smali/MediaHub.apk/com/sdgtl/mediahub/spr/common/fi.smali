.class final Lcom/sdgtl/mediahub/spr/common/fi;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/16 v6, 0x1a

    const/4 v2, 0x0

    const/16 v5, 0x19

    const v4, 0x7f0a00e1

    const v3, 0x7f0a00e0

    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->g(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_fe

    :try_start_5f
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dh;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Lcom/sdgtl/mediahub/spr/common/dh;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dh;->a:I

    if-nez v0, :cond_d5

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dh;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->i(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    :goto_98
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    :try_end_9d
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_9d} :catch_9e

    goto :goto_4d

    :catch_9e
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "04"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto :goto_4d

    :cond_bb
    :try_start_bb
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eura_description"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/dh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->M:Lcom/sdgtl/mediahub/spr/ar;

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_98

    :cond_d5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a0031

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_98

    :cond_e9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a01c8

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    :try_end_fd
    .catch Ljava/lang/ClassCastException; {:try_start_bb .. :try_end_fd} :catch_9e

    goto :goto_98

    :cond_fe
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->k(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_243

    :try_start_10f
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cw;

    if-eqz v0, :cond_221

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-nez v1, :cond_1d1

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_178

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V
    :try_end_14e
    .catch Ljava/lang/ClassCastException; {:try_start_10f .. :try_end_14e} :catch_150

    goto/16 :goto_4d

    :catch_150
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto/16 :goto_4d

    :cond_178
    :try_start_178
    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] Leave Domain L1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    sget-object v2, Lcom/sdgtl/mediahub/spr/common/fj;->c:Lcom/sdgtl/mediahub/spr/common/fj;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Lcom/sdgtl/mediahub/spr/common/fj;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cp;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "leaveDomainResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_4d

    :cond_1d1
    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v1, 0x41c

    if-ne v0, v1, :cond_1ff

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete_device_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_user_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto/16 :goto_4d

    :cond_1ff
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_4d

    :cond_221
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_241
    .catch Ljava/lang/ClassCastException; {:try_start_178 .. :try_end_241} :catch_150

    goto/16 :goto_4d

    :cond_243
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->l(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_330

    :try_start_254
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cw;

    if-eqz v0, :cond_30e

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-eqz v1, :cond_274

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0xfa2

    if-eq v1, v2, :cond_274

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0x41b

    if-eq v1, v2, :cond_274

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v2, 0xfa5

    if-ne v1, v2, :cond_2ec

    :cond_274
    const-string v1, "MediaHubDRM"

    const-string v2, "###### index J1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    sget-object v2, Lcom/sdgtl/mediahub/spr/common/fj;->b:Lcom/sdgtl/mediahub/spr/common/fj;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Lcom/sdgtl/mediahub/spr/common/fj;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "joinDomainResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_2c2
    .catch Ljava/lang/ClassCastException; {:try_start_254 .. :try_end_2c2} :catch_2c4

    goto/16 :goto_4d

    :catch_2c4
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto/16 :goto_4d

    :cond_2ec
    :try_start_2ec
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_4d

    :cond_30e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_32e
    .catch Ljava/lang/ClassCastException; {:try_start_2ec .. :try_end_32e} :catch_2c4

    goto/16 :goto_4d

    :cond_330
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->m(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_4d

    :try_start_341
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ef;

    if-eqz v0, :cond_3d3

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    if-nez v0, :cond_3b1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_36d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_36d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "04"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V
    :try_end_388
    .catch Ljava/lang/ClassCastException; {:try_start_341 .. :try_end_388} :catch_38a

    goto/16 :goto_4d

    :catch_38a
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete_device_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_user_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto/16 :goto_4d

    :cond_3b1
    :try_start_3b1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_4d

    :cond_3d3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_3f3
    .catch Ljava/lang/ClassCastException; {:try_start_3b1 .. :try_end_3f3} :catch_38a

    goto/16 :goto_4d

    :cond_3f5
    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_PROCESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_492

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/fj;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/fj;->b:Lcom/sdgtl/mediahub/spr/common/fj;

    if-ne v0, v1, :cond_463

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->o(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)I

    move-result v0

    if-gtz v0, :cond_432

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-virtual {v2, v4}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_429
    :goto_429
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/fj;->a:Lcom/sdgtl/mediahub/spr/common/fj;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Lcom/sdgtl/mediahub/spr/common/fj;)V

    goto/16 :goto_4d

    :cond_432
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->o(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto :goto_429

    :cond_463
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/fj;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/fj;->c:Lcom/sdgtl/mediahub/spr/common/fj;

    if-ne v0, v1, :cond_429

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete_device_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_user_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    goto :goto_429

    :cond_492
    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_NOT_PROCESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-virtual {v2, v4}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fi;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_4d
.end method
