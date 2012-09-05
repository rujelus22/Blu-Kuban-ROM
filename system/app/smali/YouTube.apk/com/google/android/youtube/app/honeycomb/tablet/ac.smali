.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ac;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final h:Lcom/google/android/youtube/core/async/ad;

.field private final i:Lcom/google/android/youtube/core/client/af;

.field private final j:Lcom/google/android/youtube/core/client/ag;

.field private final k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final l:Lcom/google/android/youtube/core/e;

.field private m:Lcom/google/android/youtube/app/ui/cv;

.field private n:Landroid/view/ViewGroup;

.field private o:Lcom/google/android/youtube/app/ui/aj;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const-string v5, "yt_results"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->c()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->h:Lcom/google/android/youtube/core/async/ad;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->i:Lcom/google/android/youtube/core/client/af;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->j:Lcom/google/android/youtube/core/client/ag;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->l:Lcom/google/android/youtube/core/e;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ac;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->e()V

    return-void
.end method

.method private e()V
    .registers 7

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->m:Lcom/google/android/youtube/app/ui/cv;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->o:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 161
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 82
    const v0, 0x7f040043

    return v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "selected_time_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->o:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 143
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->l()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->a:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->f()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/google/android/youtube/app/ui/cv;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/plus1/f;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->d:Lcom/google/android/youtube/app/o;

    const v6, 0x7f090021

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/ui/h;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->g:Landroid/app/Activity;

    invoke-static {v7}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->h:Lcom/google/android/youtube/core/async/ad;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->i:Lcom/google/android/youtube/core/client/af;

    iget-object v10, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->j:Lcom/google/android/youtube/core/client/ag;

    iget-object v11, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v11}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v11

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v13, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->YOUTUBE_SEARCH:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v14, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->l:Lcom/google/android/youtube/core/e;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->m:Lcom/google/android/youtube/app/ui/cv;

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->g:Landroid/app/Activity;

    const v2, 0x7f0a019d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 109
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/ad;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ad;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ac;)V

    .line 116
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 117
    if-eqz p2, :cond_ae

    .line 118
    const-string v1, "selected_time_filter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    move-object v2, v1

    .line 128
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040041

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->n:Landroid/view/ViewGroup;

    .line 130
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->n:Landroid/view/ViewGroup;

    const v4, 0x7f090014

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 131
    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->g:Landroid/app/Activity;

    const v5, 0x7f04001a

    invoke-static {v4, v3, v2, v1, v5}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->o:Lcom/google/android/youtube/app/ui/aj;

    .line 134
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->m()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->n:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 137
    return-void

    .line 121
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->l()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "selected_time_filter"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 123
    if-eqz v1, :cond_75

    move-object v2, v1

    .line 124
    goto :goto_75
.end method

.method protected final h_()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->m:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    .line 156
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 157
    return-void
.end method

.method protected final i_()V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->o:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->e()V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method
