.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ab;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final h:Lcom/google/android/youtube/core/async/ar;

.field private final i:Lcom/google/android/youtube/core/b/ag;

.field private final j:Lcom/google/android/youtube/core/b/ai;

.field private final k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final l:Lcom/google/android/youtube/core/d;

.field private m:Lcom/google/android/youtube/app/ui/ec;

.field private n:Landroid/view/ViewGroup;

.field private o:Lcom/google/android/youtube/app/ui/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->c()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->h:Lcom/google/android/youtube/core/async/ar;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->i:Lcom/google/android/youtube/core/b/ag;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->j:Lcom/google/android/youtube/core/b/ai;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->l:Lcom/google/android/youtube/core/d;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ab;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g()V

    return-void
.end method

.method private g()V
    .registers 7

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->m:Lcom/google/android/youtube/app/ui/ec;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->o:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 161
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 82
    const v0, 0x7f04006c

    return v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "selected_time_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->o:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

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
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->t()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->g()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/google/android/youtube/app/ui/ec;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/app/c/g;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->d:Lcom/google/android/youtube/app/a;

    const v6, 0x7f08002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/ui/g;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g:Landroid/app/Activity;

    invoke-static {v7}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->h:Lcom/google/android/youtube/core/async/ar;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->i:Lcom/google/android/youtube/core/b/ag;

    iget-object v10, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->j:Lcom/google/android/youtube/core/b/ai;

    iget-object v11, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v11}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v11

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v13, Lcom/google/android/youtube/app/m;->I:Lcom/google/android/youtube/core/b/aj;

    iget-object v14, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->l:Lcom/google/android/youtube/core/d;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->m:Lcom/google/android/youtube/app/ui/ec;

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g:Landroid/app/Activity;

    const v2, 0x7f0b01f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 109
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/ac;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ab;)V

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
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04006a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->n:Landroid/view/ViewGroup;

    .line 130
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->n:Landroid/view/ViewGroup;

    const v4, 0x7f080026

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 131
    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g:Landroid/app/Activity;

    const v5, 0x7f04002d

    invoke-static {v4, v3, v2, v1, v5}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->o:Lcom/google/android/youtube/app/ui/aq;

    .line 134
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->u()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->n:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 137
    return-void

    .line 121
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->t()Landroid/os/Bundle;

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

.method protected final b()V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->o:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->g()V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method protected final c()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->m:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    .line 156
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 157
    return-void
.end method
