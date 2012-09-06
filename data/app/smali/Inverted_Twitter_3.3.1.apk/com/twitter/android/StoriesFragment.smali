.class public Lcom/twitter/android/StoriesFragment;
.super Lcom/twitter/android/BaseListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/StoriesFragment;->c(I)V

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->d_()V

    return-void
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_8a

    :cond_9
    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    check-cast p2, Lcom/twitter/android/widget/StoryView;

    iget-object v1, p2, Lcom/twitter/android/widget/StoryView;->m:Ljava/lang/String;

    iget v2, p2, Lcom/twitter/android/widget/StoryView;->k:I

    packed-switch v2, :pswitch_data_94

    :goto_13
    if-eqz v1, :cond_9

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "query"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    iget-object v3, p2, Lcom/twitter/android/widget/StoryView;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "story"

    iget-object v3, p2, Lcom/twitter/android/widget/StoryView;->j:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "view_people"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_headline"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/StoriesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_4c
    iget-object v0, p2, Lcom/twitter/android/widget/StoryView;->j:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aN:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :goto_61
    const-string v0, "news_story"

    goto :goto_13

    :cond_64
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aO:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_61

    :pswitch_72
    new-instance v2, Lcom/twitter/android/service/ScribeLog;

    iget-object v3, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v3

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->aP:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v1, v2, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    const-string v0, "image_topic_story"

    goto :goto_13

    nop

    :pswitch_data_8a
    .packed-switch 0x7f0700ac
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_72
    .end packed-switch
.end method

.method protected final a(Z)V
    .registers 4

    const/4 v1, 0x5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    if-eqz p1, :cond_d

    invoke-virtual {p0, v1}, Lcom/twitter/android/StoriesFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->h()Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, Lcom/twitter/android/StoriesFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->g()V

    goto :goto_c
.end method

.method protected final b_()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0}, Lcom/twitter/android/fd;->a()V

    :cond_b
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/fd;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fd;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    :cond_22
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/fe;

    invoke-direct {v0, p0}, Lcom/twitter/android/fe;-><init>(Lcom/twitter/android/StoriesFragment;)V

    iput-object v0, p0, Lcom/twitter/android/StoriesFragment;->d:Lcom/twitter/android/client/g;

    if-nez p1, :cond_16

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/StoriesFragment;->h:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aM:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    :cond_16
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/StoriesFragment;->a(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13

    const/4 v9, 0x2

    const/4 v8, 0x1

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/aa;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/fd;->a:[Ljava/lang/String;

    const-string v4, "query is null AND unread!=2 AND type IN (?, ?)"

    new-array v5, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "_id ASC "

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/StoriesFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/StoriesFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-wide v0, p0, Lcom/twitter/android/StoriesFragment;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/StoriesFragment;->a(Z)V

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->l()Ljava/lang/String;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
