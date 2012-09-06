.class public final Lcom/google/android/youtube/app/honeycomb/tablet/x;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/core/async/ar;

.field private final i:Lcom/google/android/youtube/core/b/ae;

.field private final j:Lcom/google/android/youtube/core/b/ag;

.field private final k:Lcom/google/android/youtube/core/b/ai;

.field private final l:Lcom/google/android/youtube/core/d;

.field private final m:Z

.field private n:Ljava/lang/String;

.field private o:Landroid/net/Uri;

.field private p:Lcom/google/android/youtube/app/ui/ec;

.field private q:Lcom/google/android/youtube/core/ui/g;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/google/android/youtube/core/async/l;

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const-string v5, "yt_playlist"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 82
    const v0, 0x7f0b01f1

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->l:Lcom/google/android/youtube/core/d;

    .line 86
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_67

    .line 88
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/m;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/m;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_63

    iget-object v0, v1, Lcom/google/android/youtube/core/utils/m;->a:Ljava/lang/String;

    :goto_2e
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->n:Ljava/lang/String;

    .line 90
    if-eqz v1, :cond_65

    iget-boolean v0, v1, Lcom/google/android/youtube/core/utils/m;->b:Z

    :goto_34
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->v:Z

    .line 94
    :goto_36
    const-string v0, "authenticate"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->m:Z

    .line 96
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->j:Lcom/google/android/youtube/core/b/ag;

    .line 98
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->k:Lcom/google/android/youtube/core/b/ai;

    .line 100
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->m:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->h()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    :goto_5a
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->h:Lcom/google/android/youtube/core/async/ar;

    .line 104
    invoke-static {p2, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->u:Lcom/google/android/youtube/core/async/l;

    .line 105
    return-void

    .line 89
    :cond_63
    const/4 v0, 0x0

    goto :goto_2e

    .line 90
    :cond_65
    const/4 v0, 0x0

    goto :goto_34

    .line 92
    :cond_67
    const-string v0, "playlist_uri"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    goto :goto_36

    .line 100
    :cond_72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->g()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    goto :goto_5a
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/x;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/x;)Z
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->m:Z

    return v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 109
    const v0, 0x7f04005c

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 19
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    if-nez v1, :cond_1f

    .line 116
    const-string v1, "Invalid intent: Playlist Uri or Playlist Id not set"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_1f
    const v1, 0x7f080024

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->r:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0800b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->s:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f080067

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f08002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->q:Lcom/google/android/youtube/core/ui/g;

    .line 125
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/y;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->q:Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->h:Lcom/google/android/youtube/core/async/ar;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->j:Lcom/google/android/youtube/core/b/ag;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->k:Lcom/google/android/youtube/core/b/ai;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->m:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v12

    sget-object v13, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v14, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->l:Lcom/google/android/youtube/core/d;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v15}, Lcom/google/android/youtube/app/honeycomb/tablet/y;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/x;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->p:Lcom/google/android/youtube/app/ui/ec;

    .line 144
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->p:Lcom/google/android/youtube/app/ui/ec;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->u:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 168
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->l:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->p:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

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

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->v:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->d:Lcom/google/android/youtube/app/a;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->m:Z

    sget-object v3, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)V

    iput-boolean v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->v:Z

    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    if-nez v0, :cond_34

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->p:Lcom/google/android/youtube/app/ui/ec;

    new-array v1, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->r:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->s:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4f
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    const v2, 0x7f0b01af

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_74
    return-void

    :cond_75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    :cond_7b
    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-ne v0, v6, :cond_94

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    const v2, 0x7f0b01b0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :cond_94
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    const v2, 0x7f0b01b1

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

    goto :goto_6f

    :cond_b2
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74
.end method

.method protected final b()V
    .registers 5

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 149
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->m:Z

    if-eqz v0, :cond_f

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 162
    :goto_e
    return-void

    .line 152
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    if-eqz v0, :cond_2e

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->u:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->p:Lcom/google/android/youtube/app/ui/ec;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->o:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_e

    .line 159
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->i:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->u:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->b(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_e
.end method

.method protected final c()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->p:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    .line 229
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 230
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 178
    return-void
.end method
