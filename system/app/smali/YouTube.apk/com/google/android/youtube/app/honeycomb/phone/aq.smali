.class public final Lcom/google/android/youtube/app/honeycomb/phone/aq;
.super Lcom/google/android/youtube/app/honeycomb/phone/ap;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/b/k;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private c:Lcom/google/android/youtube/app/ah;

.field private d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private e:Lcom/google/android/youtube/core/client/ad;

.field private f:Lcom/google/android/youtube/core/client/af;

.field private g:Lcom/google/android/youtube/app/v;

.field private h:Lcom/google/android/youtube/core/client/ag;

.field private i:Lcom/google/android/youtube/core/e;

.field private j:Lcom/google/android/youtube/app/ui/cv;

.field private k:Z

.field private l:Lcom/google/android/youtube/app/honeycomb/ui/h;

.field private m:Lcom/google/android/youtube/app/a/x;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/aq;)Lcom/google/android/youtube/app/ah;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->c:Lcom/google/android/youtube/app/ah;

    return-object v0
.end method

.method private k()V
    .registers 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->j:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->j:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 136
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;->k()V

    .line 144
    return-void
.end method

.method protected final b()V
    .registers 20

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 66
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->s()Lcom/google/android/youtube/app/ah;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->c:Lcom/google/android/youtube/app/ah;

    .line 67
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 68
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->e:Lcom/google/android/youtube/core/client/ad;

    .line 69
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->f:Lcom/google/android/youtube/core/client/af;

    .line 70
    new-instance v1, Lcom/google/android/youtube/app/v;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/app/v;-><init>(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->g:Lcom/google/android/youtube/app/v;

    .line 71
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->h:Lcom/google/android/youtube/core/client/ag;

    .line 72
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->i:Lcom/google/android/youtube/core/e;

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    .line 79
    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ae;->i()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->k:Z

    .line 80
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->k:Z

    if-eqz v2, :cond_9f

    .line 81
    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 82
    invoke-virtual {v4, v3}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->a(Landroid/view/View;)V

    .line 83
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->e:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->f:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v7}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/app/honeycomb/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/o;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->l:Lcom/google/android/youtube/app/honeycomb/ui/h;

    .line 87
    :cond_9f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->g:Lcom/google/android/youtube/app/v;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/v;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/b/i;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/app/a/x;->a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/b/i;)Lcom/google/android/youtube/app/a/x;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->m:Lcom/google/android/youtube/app/a/x;

    .line 89
    new-instance v5, Lcom/google/android/youtube/app/honeycomb/phone/ar;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->m:Lcom/google/android/youtube/app/a/x;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->g:Lcom/google/android/youtube/app/v;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->f:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->h:Lcom/google/android/youtube/core/client/ag;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v15

    sget-object v16, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v17, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_DEFAULT:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->i:Lcom/google/android/youtube/core/e;

    move-object/from16 v18, v0

    move-object/from16 v6, p0

    move-object v9, v4

    invoke-direct/range {v5 .. v18}, Lcom/google/android/youtube/app/honeycomb/phone/ar;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/aq;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->j:Lcom/google/android/youtube/app/ui/cv;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_10f

    const-string v2, "com.google.android.youtube.action.search"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onSearchRequested()Z

    .line 115
    :cond_10f
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->k:Z

    if-eqz v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->l:Lcom/google/android/youtube/app/honeycomb/ui/h;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;)V

    .line 122
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 123
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    const-string v0, "yt_home"

    return-object v0
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;->k()V

    .line 140
    return-void
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 127
    return-void
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aq;->m:Lcom/google/android/youtube/app/a/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/a/x;->notifyDataSetChanged()V

    .line 161
    return-void
.end method
