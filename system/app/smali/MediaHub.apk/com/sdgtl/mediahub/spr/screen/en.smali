.class final Lcom/sdgtl/mediahub/spr/screen/en;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/16 v4, 0x35

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    if-nez v0, :cond_3a

    if-eqz p2, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    goto :goto_3a

    :cond_55
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v7, -0x1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->l(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move v1, v7

    :goto_98
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_3a

    :cond_9e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_1dd

    :try_start_af
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cs;

    if-eqz v0, :cond_192

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->a:I

    if-nez v1, :cond_18b

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    if-eqz v1, :cond_17c

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_17c

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_f5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->sendBroadcast(Landroid/content/Intent;)V

    move-object v0, v6

    move v1, v7

    goto :goto_98

    :cond_f5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cs;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cs;->c:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v5, 0x7f0a01d6

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

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

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gmt"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cs;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "server_time"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cs;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "my_time"

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cs;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V
    :try_end_178
    .catch Ljava/lang/ClassCastException; {:try_start_af .. :try_end_178} :catch_1a3

    move-object v0, v6

    move v1, v7

    goto/16 :goto_98

    :cond_17c
    const v0, 0x7f0a01c7

    :try_start_17f
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_182
    .catch Ljava/lang/ClassCastException; {:try_start_17f .. :try_end_182} :catch_1d2

    move-result-object v1

    :try_start_183
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i:Landroid/os/Handler;
    :try_end_187
    .catch Ljava/lang/ClassCastException; {:try_start_183 .. :try_end_187} :catch_1d7

    move-object v6, v1

    move v1, v2

    goto/16 :goto_98

    :cond_18b
    :try_start_18b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i:Landroid/os/Handler;

    move v1, v2

    goto/16 :goto_98

    :cond_192
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;
    :try_end_19a
    .catch Ljava/lang/ClassCastException; {:try_start_18b .. :try_end_19a} :catch_1d2

    move-result-object v1

    :try_start_19b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h:Landroid/os/Handler;
    :try_end_19f
    .catch Ljava/lang/ClassCastException; {:try_start_19b .. :try_end_19f} :catch_1d7

    move-object v6, v1

    move v1, v2

    goto/16 :goto_98

    :catch_1a3
    move-exception v0

    move-object v2, v0

    move v1, v7

    move-object v0, v6

    :goto_1a7
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    move-object v9, v6

    move-object v6, v0

    move-object v0, v9

    goto/16 :goto_98

    :cond_1af
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/en;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    goto/16 :goto_3a

    :catch_1d2
    move-exception v0

    move v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1a7

    :catch_1d7
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v9

    goto :goto_1a7

    :cond_1dd
    move-object v0, v6

    move v1, v7

    goto/16 :goto_98
.end method
