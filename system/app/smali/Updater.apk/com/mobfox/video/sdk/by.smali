.class public final Lcom/mobfox/video/sdk/by;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/mobfox/video/sdk/bz;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/by;->a:Z

    iput-object p1, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/mobfox/video/sdk/by;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobfox/video/sdk/by;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/mobfox/video/sdk/by;->d:J

    return-wide v0
.end method

.method public final a(Lcom/mobfox/video/sdk/bz;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/by;->e:Lcom/mobfox/video/sdk/bz;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobfox/video/sdk/by;->d:J

    iput-object p1, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_33

    :cond_1c
    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAllowedUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_38
    iget-wide v0, p0, Lcom/mobfox/video/sdk/by;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobfox/video/sdk/by;->d:J

    :cond_46
    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->e:Lcom/mobfox/video/sdk/bz;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->e:Lcom/mobfox/video/sdk/bz;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/bz;->a()V

    :cond_4f
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v0, "market:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "http://market.android.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "voicemail:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "geo:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "google.streetview:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    :cond_5e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_69
    iget-object v1, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_6e} :catch_6f

    :cond_6e
    :goto_6e
    return v3

    :catch_6f
    move-exception v0

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could open URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_85
    const-string v0, "mfox:external:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6e

    :cond_a4
    const-string v0, "mfox:replayvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    :try_start_ac
    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "replayVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ac .. :try_end_c3} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c3} :catch_d5

    goto :goto_6e

    :catch_c4
    move-exception v0

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "MOBFOX"

    const-string v1, "Your activity class has no replayVideo method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_d5
    move-exception v0

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "MOBFOX"

    const-string v1, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_e6
    const-string v0, "mfox:playvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    :try_start_ee
    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "playVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_105
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ee .. :try_end_105} :catch_107
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_105} :catch_119

    goto/16 :goto_6e

    :catch_107
    move-exception v0

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "MOBFOX"

    const-string v1, "Your activity class has no playVideo method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    :catch_119
    move-exception v0

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "MOBFOX"

    const-string v1, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    :cond_12b
    const-string v0, "mfox:skip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6e

    :cond_13a
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/by;->a:Z

    if-nez v0, :cond_146

    iget-object v0, p0, Lcom/mobfox/video/sdk/by;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    :cond_146
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_6e

    :cond_14b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    const-class v2, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobfox/video/sdk/by;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6e
.end method
