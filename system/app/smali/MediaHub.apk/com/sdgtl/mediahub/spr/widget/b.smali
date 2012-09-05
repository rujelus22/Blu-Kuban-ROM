.class final Lcom/sdgtl/mediahub/spr/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v10, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    :try_start_7
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->c:Z

    if-eqz v2, :cond_48

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eo;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->c:Ljava/lang/String;

    :cond_48
    new-instance v5, Lcom/sdgtl/mediahub/spr/contentProvider/a;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-direct {v5, v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/eo;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_1b4
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_5b} :catch_13f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5b} :catch_166
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_7 .. :try_end_5b} :catch_18d

    move-result-object v2

    move v3, v4

    move v0, v4

    :goto_5e
    if-nez v0, :cond_62

    if-lt v3, v10, :cond_87

    :cond_62
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const-string v1, "widget_last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    :goto_83
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_87
    :try_start_87
    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/e/e;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v6

    if-eqz v6, :cond_134

    iget v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    if-nez v7, :cond_134

    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, v6, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_138

    iget-object v8, v6, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;)V

    :goto_b5
    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->e:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->f:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(Ljava/lang/String;)V

    iget v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->g:I

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(I)V

    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->h:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->i:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->l:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->m:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    iget-object v8, v6, Lcom/sdgtl/mediahub/spr/common/ec;->p:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/ec;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v6

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/e/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v6

    if-eqz v6, :cond_134

    iget v7, v6, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    if-nez v7, :cond_134

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/dg;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/dg;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/dg;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h(Ljava/lang/String;)V

    if-nez v2, :cond_1d7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    :goto_10f
    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/dg;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(Ljava/lang/String;)J

    iget v2, v6, Lcom/sdgtl/mediahub/spr/common/dg;->f:I

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(I)J

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const-string v6, ""

    invoke-static {v2, v5, v6}, Lcom/sdgtl/mediahub/spr/e/c;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v2

    if-eqz v2, :cond_132

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v2, :cond_132

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->b(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    :cond_132
    move-object v2, v0

    move v0, v1

    :cond_134
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5e

    :cond_138
    iget-object v7, v6, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;)V
    :try_end_13d
    .catchall {:try_start_87 .. :try_end_13d} :catchall_1b4
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_13d} :catch_13f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_13d} :catch_166
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_87 .. :try_end_13d} :catch_18d

    goto/16 :goto_b5

    :catch_13f
    move-exception v0

    :try_start_140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_1b4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const-string v1, "widget_last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15a
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    goto/16 :goto_83

    :catch_166
    move-exception v0

    :try_start_167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_1b4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_181

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const-string v1, "widget_last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_181
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    goto/16 :goto_83

    :catch_18d
    move-exception v0

    :try_start_18e
    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/r;->printStackTrace()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_1b4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const-string v1, "widget_last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a8
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    goto/16 :goto_83

    :catchall_1b4
    move-exception v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    const-string v2, "widget_last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cc
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/b;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/widget/b;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    throw v0

    :cond_1d7
    move-object v0, v2

    goto/16 :goto_10f
.end method
