.class public final Lcom/google/android/youtube/app/honeycomb/tablet/y;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/core/async/ad;

.field private final i:Lcom/google/android/youtube/core/client/ad;

.field private final j:Lcom/google/android/youtube/core/client/af;

.field private final k:Lcom/google/android/youtube/core/client/ag;

.field private final l:Lcom/google/android/youtube/core/e;

.field private final m:Z

.field private n:Ljava/lang/String;

.field private o:Landroid/net/Uri;

.field private p:Lcom/google/android/youtube/app/ui/cv;

.field private q:Lcom/google/android/youtube/core/ui/h;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const-string v5, "yt_playlist"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 80
    const v0, 0x7f0a019c

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 82
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->l:Lcom/google/android/youtube/core/e;

    .line 84
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_5f

    .line 86
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/j;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/j;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/google/android/youtube/core/utils/j;->a:Ljava/lang/String;

    :goto_2e
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->n:Ljava/lang/String;

    .line 91
    :goto_30
    const-string v0, "authenticate"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->m:Z

    .line 93
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    .line 94
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->j:Lcom/google/android/youtube/core/client/af;

    .line 95
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->k:Lcom/google/android/youtube/core/client/ag;

    .line 97
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->m:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->f()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    :goto_54
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->h:Lcom/google/android/youtube/core/async/ad;

    .line 101
    invoke-static {p2, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->u:Lcom/google/android/youtube/core/async/g;

    .line 102
    return-void

    .line 87
    :cond_5d
    const/4 v0, 0x0

    goto :goto_2e

    .line 89
    :cond_5f
    const-string v0, "playlist_uri"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    goto :goto_30

    .line 97
    :cond_6a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->e()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    goto :goto_54
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/y;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/y;)Z
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->m:Z

    return v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 106
    const v0, 0x7f040038

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 19
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->n:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 113
    const-string v1, "Playlist Uri or Playlist Id not set"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 117
    :cond_1b
    const v1, 0x7f09001c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->r:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f09006c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->s:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f090066

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f090021

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/ui/h;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->q:Lcom/google/android/youtube/core/ui/h;

    .line 122
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/z;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->q:Lcom/google/android/youtube/core/ui/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->h:Lcom/google/android/youtube/core/async/ad;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->j:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->k:Lcom/google/android/youtube/core/client/ag;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->m:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v12

    sget-object v13, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v14, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->PLAYLIST:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->l:Lcom/google/android/youtube/core/e;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v15}, Lcom/google/android/youtube/app/honeycomb/tablet/z;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/y;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->p:Lcom/google/android/youtube/app/ui/cv;

    .line 141
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->p:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->u:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 165
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->l:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->p:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    if-nez v0, :cond_23

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->p:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->r:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->s:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3e
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    const v2, 0x7f0a015a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_63
    return-void

    :cond_64
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3e

    :cond_6a
    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-ne v0, v6, :cond_83

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    const v2, 0x7f0a015b

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    :cond_83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    const v2, 0x7f0a015c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    :cond_a1
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 175
    return-void
.end method

.method protected final h_()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->p:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    .line 221
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 222
    return-void
.end method

.method protected final i_()V
    .registers 5

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 146
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->m:Z

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 159
    :goto_e
    return-void

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    if-eqz v0, :cond_2e

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->u:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->p:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->o:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_e

    .line 156
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->u:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_e
.end method
