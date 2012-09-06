.class public Lcom/twitter/android/DiscoverFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/twitter/android/cj;
.implements Lcom/twitter/android/ff;
.implements Lcom/twitter/android/widget/an;


# instance fields
.field l:Landroid/content/SharedPreferences;

.field m:Ljava/util/HashSet;

.field n:Lcom/twitter/android/ae;

.field o:Lcom/twitter/android/ac;

.field p:Lcom/twitter/android/af;

.field q:Lcom/twitter/android/ag;

.field r:Lcom/twitter/android/util/FriendshipCache;

.field s:I

.field t:Z

.field private final u:Ljava/util/HashSet;

.field private v:Lcom/twitter/android/widget/t;

.field private w:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->u:Ljava/util/HashSet;

    return-void
.end method

.method private h(I)V
    .registers 10

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/t;->a(Z)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    :goto_21
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    const/16 v6, 0xc8

    move-wide v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;I)V

    return-void

    :cond_33
    const/4 v7, 0x0

    goto :goto_21
.end method

.method private i(I)Z
    .registers 13

    const-wide/16 v9, 0x0

    const/4 v0, 0x1

    const-wide/32 v7, 0x493e0

    const/4 v1, 0x0

    new-instance v2, Lcom/twitter/android/client/a;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "discover_prefs"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    packed-switch p1, :pswitch_data_66

    :pswitch_23
    move v0, v1

    :cond_24
    :goto_24
    return v0

    :pswitch_25
    const-string v5, "last_refresh"

    invoke-virtual {v2, v5, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-lez v2, :cond_3d

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->b(Landroid/content/Context;)J

    move-result-wide v5

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-gtz v2, :cond_24

    :cond_3d
    move v0, v1

    goto :goto_24

    :pswitch_3f
    const-string v5, "last_refresh_activity"

    invoke-virtual {v2, v5, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-gtz v2, :cond_24

    move v0, v1

    goto :goto_24

    :pswitch_4c
    const-string v5, "last_refresh_trends"

    invoke-virtual {v2, v5, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-gtz v2, :cond_24

    move v0, v1

    goto :goto_24

    :pswitch_59
    const-string v5, "last_refresh_wtf"

    invoke-virtual {v2, v5, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-gtz v2, :cond_24

    move v0, v1

    goto :goto_24

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_25
        :pswitch_3f
        :pswitch_23
        :pswitch_4c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_59
    .end packed-switch
.end method

.method private j(I)Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/DiscoverFragment;->s:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 11

    const/4 v4, 0x3

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e6

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v0}, Lcom/twitter/android/ae;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0, p2}, Lcom/twitter/android/fd;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/twitter/android/DiscoverFragment;->j(I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Lcom/twitter/android/fd;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {p0, v1}, Lcom/twitter/android/DiscoverFragment;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2b
    invoke-direct {p0, v4}, Lcom/twitter/android/DiscoverFragment;->h(I)V

    :cond_2e
    invoke-virtual {v0}, Lcom/twitter/android/fd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->t:Z

    if-eqz v0, :cond_d

    :cond_38
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetChanged()V

    invoke-virtual {p0, v4}, Lcom/twitter/android/DiscoverFragment;->c(I)V

    goto :goto_d

    :pswitch_41
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    invoke-virtual {v0}, Lcom/twitter/android/ac;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cf;

    invoke-virtual {v0, p2}, Lcom/twitter/android/cf;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-direct {p0, v7}, Lcom/twitter/android/DiscoverFragment;->j(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    invoke-virtual {v0}, Lcom/twitter/android/ac;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cf;

    invoke-virtual {v0}, Lcom/twitter/android/cf;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-direct {p0, v7}, Lcom/twitter/android/DiscoverFragment;->i(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_66
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->b(IJJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    goto :goto_d

    :pswitch_79
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ej;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ej;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/twitter/android/DiscoverFragment;->j(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ej;

    invoke-virtual {v0}, Lcom/twitter/android/ej;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-direct {p0, v2}, Lcom/twitter/android/DiscoverFragment;->i(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_9e
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    goto/16 :goto_d

    :pswitch_ac
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->u:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ed;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/twitter/android/DiscoverFragment;->j(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0}, Lcom/twitter/android/ed;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-direct {p0, v3}, Lcom/twitter/android/DiscoverFragment;->i(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_d6
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->a(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    goto/16 :goto_d

    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_e
        :pswitch_41
        :pswitch_79
        :pswitch_ac
    .end packed-switch
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Lcom/twitter/android/api/PromotedContent;

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->u:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    :cond_18
    return-void
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 16

    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    move-object v0, p1

    check-cast v0, Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->c()Z

    move-result v0

    if-eqz v0, :cond_1f0

    add-int/lit8 v0, v1, -0x1

    :goto_17
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/t;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    invoke-virtual {v3, v1, v0}, Lcom/twitter/android/widget/t;->a(II)I

    move-result v0

    packed-switch v1, :pswitch_data_1f4

    :cond_26
    :goto_26
    return-void

    :pswitch_27
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v1}, Lcom/twitter/android/ae;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_202

    goto :goto_26

    :sswitch_39
    check-cast p2, Lcom/twitter/android/widget/StoryView;

    iget-object v1, p2, Lcom/twitter/android/widget/StoryView;->m:Ljava/lang/String;

    iget v0, p2, Lcom/twitter/android/widget/StoryView;->k:I

    packed-switch v0, :pswitch_data_210

    move-object v0, v2

    :goto_43
    if-eqz v1, :cond_26

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_26

    :sswitch_7c
    invoke-virtual {p0, v6}, Lcom/twitter/android/DiscoverFragment;->b(Z)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v3

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->aL:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v3, v4, v1}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    invoke-virtual {p0, v8}, Lcom/twitter/android/DiscoverFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_26

    :pswitch_97
    iget-object v0, p2, Lcom/twitter/android/widget/StoryView;->j:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aI:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :goto_ac
    const-string v0, "news_story"

    goto :goto_43

    :cond_af
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aJ:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_ac

    :pswitch_bd
    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v3

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->aK:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    const-string v0, "image_topic_story"

    goto/16 :goto_43

    :cond_d5
    invoke-virtual {v1, v0}, Lcom/twitter/android/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_26

    :pswitch_e0
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    invoke-virtual {v1}, Lcom/twitter/android/ac;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_107

    invoke-virtual {v1, v0}, Lcom/twitter/android/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Lcom/twitter/android/ac;->c()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/cf;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/twitter/android/cf;->a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_26

    :cond_107
    invoke-virtual {v1, v0}, Lcom/twitter/android/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_26

    :pswitch_112
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    invoke-virtual {v1}, Lcom/twitter/android/af;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_16a

    invoke-virtual {v1, v0}, Lcom/twitter/android/af;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v5, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "query"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "context"

    const-string v6, "trend"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-ne v4, v7, :cond_165

    invoke-virtual {v1}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/ej;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ej;->a(Landroid/database/Cursor;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    if-eqz v0, :cond_165

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v4, v0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    invoke-virtual {v1, v9, v2, v4, v5}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    const-string v0, "type"

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_165
    invoke-virtual {p0, v3}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_26

    :cond_16a
    invoke-virtual {v1, v0}, Lcom/twitter/android/af;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_26

    :pswitch_175
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v1}, Lcom/twitter/android/ag;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1c8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_26

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/util/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1ab

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1ab
    check-cast p2, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p2}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_1c3

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v3, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    const-string v2, "imp"

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c3
    invoke-virtual {p0, v0, v7}, Lcom/twitter/android/DiscoverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_26

    :cond_1c8
    invoke-virtual {v1, v0}, Lcom/twitter/android/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "friendship_cache"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DiscoverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_26

    :pswitch_1db
    packed-switch v0, :pswitch_data_218

    goto/16 :goto_26

    :pswitch_1e0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_26

    :pswitch_1eb
    invoke-virtual {p0, v7}, Lcom/twitter/android/DiscoverFragment;->f(I)V

    goto/16 :goto_26

    :cond_1f0
    move v0, v1

    goto/16 :goto_17

    nop

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_27
        :pswitch_e0
        :pswitch_112
        :pswitch_175
        :pswitch_1db
    .end packed-switch

    :sswitch_data_202
    .sparse-switch
        0x7f0700ac -> :sswitch_39
        0x7f0700ae -> :sswitch_39
        0x7f0700b3 -> :sswitch_7c
    .end sparse-switch

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_97
        :pswitch_bd
    .end packed-switch

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_1e0
        :pswitch_1eb
    .end packed-switch
.end method

.method final a(Lcom/twitter/android/client/Session;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/twitter/android/client/a;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "discover_prefs"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 7

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->c(J)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_1f

    :cond_2c
    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/twitter/android/client/b;->a(JZLjava/lang/String;)Ljava/lang/String;

    :goto_36
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->b(J)V

    goto :goto_24

    :cond_3c
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method protected final a(Z)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    iput v5, p0, Lcom/twitter/android/DiscoverFragment;->s:I

    iput-boolean v5, p0, Lcom/twitter/android/DiscoverFragment;->t:Z

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    if-eqz p1, :cond_27

    invoke-virtual {p0, v4}, Lcom/twitter/android/DiscoverFragment;->b(I)V

    invoke-virtual {v1, v5, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v7, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->c()V

    invoke-virtual {v1, v4, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v0}, Lcom/twitter/android/ae;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0}, Lcom/twitter/android/fd;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_78

    invoke-virtual {p0, v4}, Lcom/twitter/android/DiscoverFragment;->b(I)V

    invoke-virtual {v1, v5, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_3b
    invoke-direct {p0, v6}, Lcom/twitter/android/DiscoverFragment;->i(I)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0, v4}, Lcom/twitter/android/DiscoverFragment;->h(I)V

    :cond_44
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    invoke-virtual {v0}, Lcom/twitter/android/ac;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cf;

    invoke-virtual {v0}, Lcom/twitter/android/cf;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_55

    invoke-virtual {v1, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_55
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ej;

    invoke-virtual {v0}, Lcom/twitter/android/ej;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_66

    invoke-virtual {v1, v7, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_66
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0}, Lcom/twitter/android/ed;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {v1, v4, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_26

    :cond_78
    invoke-virtual {v0}, Lcom/twitter/android/fd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-direct {p0, v4}, Lcom/twitter/android/DiscoverFragment;->h(I)V

    goto :goto_3b

    :cond_82
    invoke-virtual {p0, v4}, Lcom/twitter/android/DiscoverFragment;->c(I)V

    goto :goto_3b
.end method

.method final b(Z)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->a()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->b()V

    goto :goto_9
.end method

.method protected final b_()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v0}, Lcom/twitter/android/ae;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0}, Lcom/twitter/android/fd;->a()V

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    invoke-virtual {v0}, Lcom/twitter/android/ac;->notifyDataSetChanged()V

    :cond_18
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->notifyDataSetChanged()V

    :cond_21
    return-void
.end method

.method protected final e(I)Landroid/app/Dialog;
    .registers 5

    packed-switch p1, :pswitch_data_38

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->e(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/ab;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/ab;-><init>(Lcom/twitter/android/DiscoverFragment;Landroid/support/v4/app/FragmentActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0013

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0129

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00d4

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method final g(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/DiscoverFragment;->s:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/DiscoverFragment;->s:I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 15

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_c3

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    new-instance v6, Lcom/twitter/android/ae;

    new-instance v0, Lcom/twitter/android/fd;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fd;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    check-cast v2, Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-direct {v6, v1, v0, v2}, Lcom/twitter/android/ae;-><init>(Landroid/content/Context;Lcom/twitter/android/fd;Lcom/twitter/android/widget/TapRefreshableListView;)V

    iput-object v6, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    new-instance v0, Lcom/twitter/android/ac;

    new-instance v2, Lcom/twitter/android/cf;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lcom/twitter/android/cf;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/ac;-><init>(Landroid/content/Context;Lcom/twitter/android/cf;)V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    new-instance v0, Lcom/twitter/android/ej;

    invoke-direct {v0, v1}, Lcom/twitter/android/ej;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/twitter/android/fi;

    invoke-direct {v2, v3}, Lcom/twitter/android/fi;-><init>(Lcom/twitter/android/client/b;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/ej;->a(Lcom/twitter/android/cj;)V

    new-instance v2, Lcom/twitter/android/af;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/af;-><init>(Landroid/content/Context;Lcom/twitter/android/ej;)V

    iput-object v2, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    new-instance v0, Lcom/twitter/android/ed;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02003c

    iget-object v7, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/ed;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/ed;->a(Lcom/twitter/android/cj;)V

    new-instance v2, Lcom/twitter/android/ag;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/ag;-><init>(Landroid/content/Context;Lcom/twitter/android/ed;)V

    iput-object v2, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    new-instance v0, Lcom/twitter/android/widget/t;

    const/4 v2, 0x5

    new-array v2, v2, [Z

    fill-array-data v2, :array_e2

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcom/twitter/android/ev;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/twitter/android/ew;

    const/4 v7, 0x0

    new-instance v8, Lcom/twitter/android/ew;

    const v9, 0x7f0b0137

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/twitter/android/SULActivity;

    invoke-direct {v11, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v8, v9, v10, v11}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/twitter/android/ew;

    const v9, 0x7f0b0125

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/twitter/android/ev;-><init>([Lcom/twitter/android/ew;I)V

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/widget/t;-><init>([Z[Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/t;->a(Z)V

    :cond_c3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->m:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "discover_prefs"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->l:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/twitter/android/ad;

    invoke-direct {v0, p0}, Lcom/twitter/android/ad;-><init>(Lcom/twitter/android/DiscoverFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->d:Lcom/twitter/android/client/g;

    return-void

    :array_e2
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_54

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    if-ne v0, p2, :cond_6

    if-eqz p3, :cond_6

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    const-string v2, "friendship"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "friendship"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->notifyDataSetChanged()V

    goto :goto_6

    :pswitch_35
    if-ne v0, p2, :cond_6

    if-eqz p3, :cond_6

    const-string v0, "friendship_cache"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    const-string v0, "friendship_cache"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v1, v0}, Lcom/twitter/android/util/FriendshipCache;->a(Lcom/twitter/android/util/FriendshipCache;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->notifyDataSetChanged()V

    goto :goto_6

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_7
        :pswitch_35
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->c()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->z()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/b;->a(Landroid/location/LocationListener;)V

    :cond_14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    if-eqz p1, :cond_3c

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    :goto_2f
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/DiscoverFragment;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_34
    new-instance v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    goto :goto_2f

    :cond_3c
    new-instance v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    goto :goto_2f
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13

    const/4 v9, 0x2

    const/4 v2, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_124

    move-object v0, v6

    :goto_9
    return-object v0

    :pswitch_a
    sget-object v0, Lcom/twitter/android/provider/aa;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/fd;->a:[Ljava/lang/String;

    const-string v4, "query is null AND unread!=2 AND type IN (?, ?)"

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "_id ASC "

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_50
    sget-object v0, Lcom/twitter/android/provider/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/ag;->a:[Ljava/lang/String;

    const-string v4, "type=?"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_8f
    sget-object v0, Lcom/twitter/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/ek;->a:[Ljava/lang/String;

    const-string v4, "type=? AND latitude IS NULL AND longitude IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "query_id DESC, time ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_d0
    sget-object v0, Lcom/twitter/android/provider/ac;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v0

    if-eqz v0, :cond_121

    const-string v4, "friendship IS NULL OR friendship NOT IN (1,3,9,10,11) AND user_id!=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    :goto_110
    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/bd;->b:[Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_121
    move-object v5, v6

    move-object v4, v6

    goto :goto_110

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_a
        :pswitch_50
        :pswitch_8f
        :pswitch_d0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f030010

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/DiscoverFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TapRefreshableListView;->a(Lcom/twitter/android/widget/o;)V

    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/DiscoverFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/DiscoverFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v0}, Lcom/twitter/android/ae;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0, v1}, Lcom/twitter/android/fd;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_15
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->o:Lcom/twitter/android/ac;

    invoke-virtual {v0}, Lcom/twitter/android/ac;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cf;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cf;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_21
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ej;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ej;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_2d
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->q:Lcom/twitter/android/ag;

    invoke-virtual {v0}, Lcom/twitter/android/ag;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ed;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_15
        :pswitch_21
        :pswitch_2d
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->l()Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aD:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_12
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->b([J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_12
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/b;->b(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003d

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method
