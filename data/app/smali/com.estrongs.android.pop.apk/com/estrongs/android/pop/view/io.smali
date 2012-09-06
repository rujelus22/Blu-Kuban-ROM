.class Lcom/estrongs/android/pop/view/io;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/OpenRecomm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_c2

    :cond_5
    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->e(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->d(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_2a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_36
    iget-object v0, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->b(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_42
    iget-object v0, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(I)V

    goto :goto_5

    :pswitch_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/a/i;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    :goto_6b
    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    if-eqz v3, :cond_bf

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v3

    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/estrongs/android/pop/view/a/i;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/OpenRecomm;->c(Lcom/estrongs/android/pop/view/OpenRecomm;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/OpenRecomm;->d(Lcom/estrongs/android/pop/view/OpenRecomm;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/pop/view/a/j;

    aget-object v6, v2, v1

    iget-object v6, v6, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    aget-object v7, v2, v1

    iget-object v7, v7, Lcom/estrongs/android/pop/view/a/i;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/estrongs/android/pop/view/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/a/j;)V

    :cond_af
    iget-object v3, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/OpenRecomm;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/io;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V

    :cond_bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :pswitch_data_c2
    .packed-switch 0x1e241
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_12
        :pswitch_1e
        :pswitch_2a
        :pswitch_36
        :pswitch_42
        :pswitch_4e
    .end packed-switch
.end method
