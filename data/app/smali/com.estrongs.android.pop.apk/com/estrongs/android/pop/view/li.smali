.class Lcom/estrongs/android/pop/view/li;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/RecommendListView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/RecommendListView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const v1, -0xeaab6a

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_20
    :goto_20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    :cond_24
    if-ne v0, v4, :cond_1f8

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-eq v0, v4, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-ne v0, v5, :cond_74

    :cond_47
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iput v2, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->b(Lcom/estrongs/android/pop/view/RecommendListView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    goto :goto_20

    :cond_74
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b1

    :cond_8d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->o:I

    if-eq v0, v3, :cond_150

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    const-string v2, "market://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lcom/estrongs/android/pop/view/a/k;->s:Z

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_cd
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V
    :try_end_e2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_cd .. :try_end_e2} :catch_e4

    goto/16 :goto_20

    :catch_e4
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090254

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20

    :cond_101
    :try_start_101
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_101 .. :try_end_10a} :catch_e4

    goto/16 :goto_20

    :cond_10c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/a/k;->n:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iput v5, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->b(Lcom/estrongs/android/pop/view/RecommendListView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2, v0, v3}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/a/e;->c(Lcom/estrongs/android/pop/view/a/k;)Z

    goto/16 :goto_20

    :cond_150
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->d(Lcom/estrongs/android/pop/view/RecommendListView;)Z

    move-result v0

    if-eqz v0, :cond_18c

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v2, 0x1e24a

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->e(Lcom/estrongs/android/pop/view/RecommendListView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_175
    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/RecommendListView;->f(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/RecommendListView;->f(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_186
    monitor-exit v1

    goto/16 :goto_20

    :catchall_189
    move-exception v0

    monitor-exit v1
    :try_end_18b
    .catchall {:try_start_175 .. :try_end_18b} :catchall_189

    throw v0

    :cond_18c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    :cond_1b1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-ne v0, v3, :cond_1da

    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    :cond_1da
    iget-object v0, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_20

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/li;->a:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/a/e;->c(Lcom/estrongs/android/pop/view/a/k;)Z

    goto/16 :goto_20

    :cond_1f8
    if-ne v0, v3, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_20
.end method
