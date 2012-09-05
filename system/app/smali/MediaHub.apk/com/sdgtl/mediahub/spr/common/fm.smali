.class final Lcom/sdgtl/mediahub/spr/common/fm;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v6, 0x0

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const-string v1, "com.sdgtl.mediahub.spr.download.READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    goto :goto_1b

    :cond_2a
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v7, -0x1

    const-string v4, "response_msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->c(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/view/View;)V

    move-object v0, v6

    move v1, v7

    :goto_7a
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_1b

    :cond_80
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->e(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_1f7

    :try_start_91
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ec;

    if-eqz v0, :cond_1db

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    if-nez v1, :cond_1ac

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->q:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->r:Ljava/lang/String;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    if-eqz v1, :cond_19b

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_19b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_114

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Z)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    if-eqz v1, :cond_e4

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;Ljava/lang/String;)V

    :cond_e4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/a;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;J)V
    :try_end_fe
    .catch Ljava/lang/ClassCastException; {:try_start_91 .. :try_end_fe} :catch_280

    move-object v1, v6

    move-object v2, v6

    :goto_100
    :try_start_100
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V
    :try_end_10b
    .catch Ljava/lang/ClassCastException; {:try_start_100 .. :try_end_10b} :catch_291

    move v3, v7

    :goto_10c
    :try_start_10c
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/ec;)V
    :try_end_10f
    .catch Ljava/lang/ClassCastException; {:try_start_10c .. :try_end_10f} :catch_29d

    move-object v0, v1

    move-object v6, v2

    move v1, v3

    goto/16 :goto_7a

    :cond_114
    :try_start_114
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sdgtl/mediahub/spr/common/ec;->r:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->q:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    const v5, 0x7f0a01d6

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x3

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->s:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gmt"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "server_time"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "my_time"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p1, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V
    :try_end_197
    .catch Ljava/lang/ClassCastException; {:try_start_114 .. :try_end_197} :catch_280

    move-object v1, v6

    move-object v2, v6

    goto/16 :goto_100

    :cond_19b
    const v1, 0x7f0a01c7

    :try_start_19e
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_1a1
    .catch Ljava/lang/ClassCastException; {:try_start_19e .. :try_end_1a1} :catch_286

    move-result-object v1

    :try_start_1a2
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b:Landroid/os/Handler;
    :try_end_1a6
    .catch Ljava/lang/ClassCastException; {:try_start_1a2 .. :try_end_1a6} :catch_28c

    move v7, v3

    move-object v10, v1

    move-object v1, v2

    move-object v2, v10

    goto/16 :goto_100

    :cond_1ac
    :try_start_1ac
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1b3
    .catch Ljava/lang/ClassCastException; {:try_start_1ac .. :try_end_1b3} :catch_286

    move-result-object v2

    :try_start_1b4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b:Landroid/os/Handler;
    :try_end_1b8
    .catch Ljava/lang/ClassCastException; {:try_start_1b4 .. :try_end_1b8} :catch_297

    :try_start_1b8
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/view/View;)V
    :try_end_1c3
    .catch Ljava/lang/ClassCastException; {:try_start_1b8 .. :try_end_1c3} :catch_1c5

    goto/16 :goto_10c

    :catch_1c5
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    :goto_1c9
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v9, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;J)V

    move-object v6, v1

    move v1, v2

    goto/16 :goto_7a

    :cond_1db
    :try_start_1db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->getText(I)Ljava/lang/CharSequence;
    :try_end_1e3
    .catch Ljava/lang/ClassCastException; {:try_start_1db .. :try_end_1e3} :catch_286

    move-result-object v1

    :try_start_1e4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d:Landroid/os/Handler;
    :try_end_1e8
    .catch Ljava/lang/ClassCastException; {:try_start_1e4 .. :try_end_1e8} :catch_28c

    :try_start_1e8
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/view/View;)V
    :try_end_1f3
    .catch Ljava/lang/ClassCastException; {:try_start_1e8 .. :try_end_1f3} :catch_2a3

    move-object v6, v1

    move v1, v3

    goto/16 :goto_7a

    :cond_1f7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->f(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_2a7

    :try_start_208
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dg;

    if-eqz v0, :cond_250

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    if-nez v1, :cond_242

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->g(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V
    :try_end_230
    .catch Ljava/lang/ClassCastException; {:try_start_208 .. :try_end_230} :catch_25f

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_233
    :try_start_233
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/view/View;)V
    :try_end_23e
    .catch Ljava/lang/ClassCastException; {:try_start_233 .. :try_end_23e} :catch_27e

    move-object v6, v1

    move v1, v2

    goto/16 :goto_7a

    :cond_242
    :try_start_242
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_249
    .catch Ljava/lang/ClassCastException; {:try_start_242 .. :try_end_249} :catch_275

    move-result-object v1

    :try_start_24a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b:Landroid/os/Handler;
    :try_end_24e
    .catch Ljava/lang/ClassCastException; {:try_start_24a .. :try_end_24e} :catch_27a

    move v2, v3

    goto :goto_233

    :cond_250
    :try_start_250
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->getText(I)Ljava/lang/CharSequence;
    :try_end_258
    .catch Ljava/lang/ClassCastException; {:try_start_250 .. :try_end_258} :catch_275

    move-result-object v1

    :try_start_259
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d:Landroid/os/Handler;
    :try_end_25d
    .catch Ljava/lang/ClassCastException; {:try_start_259 .. :try_end_25d} :catch_27a

    move v2, v3

    goto :goto_233

    :catch_25f
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_263
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fm;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v8, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;J)V

    move-object v6, v1

    move v1, v2

    goto/16 :goto_7a

    :catch_275
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v3

    goto :goto_263

    :catch_27a
    move-exception v0

    move-object v0, v6

    move v2, v3

    goto :goto_263

    :catch_27e
    move-exception v3

    goto :goto_263

    :catch_280
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    goto/16 :goto_1c9

    :catch_286
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v3

    goto/16 :goto_1c9

    :catch_28c
    move-exception v0

    move-object v0, v6

    move v2, v3

    goto/16 :goto_1c9

    :catch_291
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move v2, v7

    goto/16 :goto_1c9

    :catch_297
    move-exception v0

    move-object v0, v6

    move-object v1, v2

    move v2, v3

    goto/16 :goto_1c9

    :catch_29d
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    goto/16 :goto_1c9

    :catch_2a3
    move-exception v2

    move v2, v3

    goto/16 :goto_1c9

    :cond_2a7
    move-object v0, v6

    move v1, v7

    goto/16 :goto_7a
.end method
