.class public final Lcom/google/android/youtube/app/honeycomb/tablet/n;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/f;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final a:Lcom/google/android/youtube/core/client/ad;

.field private final h:Lcom/google/android/youtube/core/e;

.field private i:Lcom/google/android/youtube/app/ui/cd;

.field private j:Lcom/google/android/youtube/app/ui/cv;

.field private k:Lcom/google/android/youtube/app/ui/cv;

.field private l:Lcom/google/android/youtube/core/ui/k;

.field private m:Lcom/google/android/youtube/app/ui/bw;

.field private n:Lcom/google/android/youtube/app/ui/e;

.field private o:Lcom/google/android/youtube/app/ui/h;

.field private p:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private q:Lcom/google/android/youtube/app/ae;

.field private r:Lcom/google/android/youtube/core/Analytics;

.field private s:Lcom/google/android/youtube/core/model/UserAuth;

.field private t:Lcom/google/android/youtube/core/model/Playlist;

.field private final u:Lcom/google/android/youtube/app/honeycomb/tablet/v;

.field private v:Lcom/google/android/youtube/app/a/v;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v4, 0x0

    const-string v5, "yt_your_channel"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    .line 105
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    .line 106
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/v;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->u:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/app/honeycomb/tablet/v;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->u:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/app/a/v;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->v:Lcom/google/android/youtube/app/a/v;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->r:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/app/ui/cd;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->i:Lcom/google/android/youtube/app/ui/cd;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 307
    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/tablet/n;)V
    .registers 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->e()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 111
    const v0, 0x7f040025

    return v0
.end method

.method public final a(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_7

    .line 356
    :goto_6
    return-void

    .line 338
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    .line 339
    sparse-switch p1, :sswitch_data_64

    goto :goto_6

    .line 341
    :sswitch_11
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->i:Lcom/google/android/youtube/app/ui/cd;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/cd;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 344
    :sswitch_21
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->j:Lcom/google/android/youtube/app/ui/cv;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 347
    :sswitch_31
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->k:Lcom/google/android/youtube/app/ui/cv;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 350
    :sswitch_41
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->l:Lcom/google/android/youtube/core/ui/k;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    const/16 v4, 0x17

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/ui/k;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 353
    :sswitch_53
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->m:Lcom/google/android/youtube/app/ui/bw;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/bw;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 339
    nop

    :sswitch_data_64
    .sparse-switch
        0x7f09002b -> :sswitch_11
        0x7f09002c -> :sswitch_21
        0x7f09002e -> :sswitch_41
        0x7f09005f -> :sswitch_53
        0x7f090060 -> :sswitch_31
    .end sparse-switch
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/os/Bundle;)V

    .line 295
    const-string v0, "selected_card_id"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/e;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v0, "selected_playlist"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->t:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 297
    return-void
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 390
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 393
    const v0, 0x7f0900c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    :cond_24
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 28
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v5

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->r:Lcom/google/android/youtube/core/Analytics;

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->q:Lcom/google/android/youtube/app/ae;

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->i()Lcom/google/android/youtube/core/async/ad;

    move-result-object v13

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->h()Lcom/google/android/youtube/core/async/ad;

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->j()Lcom/google/android/youtube/core/async/ad;

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->s()Lcom/google/android/youtube/core/async/ad;

    move-result-object v22

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->n()Lcom/google/android/youtube/core/async/ad;

    move-result-object v23

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->k()Lcom/google/android/youtube/core/async/ad;

    move-result-object v24

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->u()Lcom/google/android/youtube/core/async/ad;

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v16

    .line 138
    new-instance v1, Lcom/google/android/youtube/app/ui/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->o:Lcom/google/android/youtube/app/ui/h;

    .line 140
    const v1, 0x7f09002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/a/v;->a(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/v;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->v:Lcom/google/android/youtube/app/a/v;

    .line 142
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/o;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->v:Lcom/google/android/youtube/app/a/v;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->r:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v19, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v20, v0

    move-object/from16 v7, p0

    move-object v15, v5

    move-object/from16 v21, v11

    invoke-direct/range {v6 .. v21}, Lcom/google/android/youtube/app/honeycomb/tablet/o;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/v;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/ui/PagedGridView;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->i:Lcom/google/android/youtube/app/ui/cd;

    .line 217
    const v1, 0x7f09002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 218
    new-instance v8, Lcom/google/android/youtube/app/honeycomb/tablet/p;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v13

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->r:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v20, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v21, v0

    move-object/from16 v9, p0

    move-object/from16 v14, v22

    move-object v15, v5

    invoke-direct/range {v8 .. v21}, Lcom/google/android/youtube/app/honeycomb/tablet/p;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->j:Lcom/google/android/youtube/app/ui/cv;

    .line 237
    new-instance v9, Lcom/google/android/youtube/app/ui/cv;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    const v1, 0x7f090060

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/ui/h;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v13

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->r:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/youtube/core/Analytics$VideoCategory;->WatchLater:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v20, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_LATER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v21, v0

    move-object/from16 v14, v23

    move-object v15, v5

    invoke-direct/range {v9 .. v21}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->k:Lcom/google/android/youtube/app/ui/cv;

    .line 251
    new-instance v9, Lcom/google/android/youtube/app/a/l;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/android/youtube/app/a/l;-><init>(Landroid/content/Context;)V

    .line 252
    const v1, 0x7f09002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 253
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->f()Lcom/google/android/youtube/core/async/ad;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v10, v24

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/android/youtube/app/honeycomb/tablet/aa;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/l;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->l:Lcom/google/android/youtube/core/ui/k;

    .line 262
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/s;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/s;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Lcom/google/android/youtube/app/a/l;)V

    invoke-interface {v8, v1}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    new-instance v9, Lcom/google/android/youtube/app/a/s;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/android/youtube/app/a/s;-><init>(Landroid/content/Context;)V

    .line 265
    const v1, 0x7f09005f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 266
    new-instance v6, Lcom/google/android/youtube/app/ui/bw;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/youtube/app/ui/bw;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/s;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->m:Lcom/google/android/youtube/app/ui/bw;

    .line 273
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/t;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/t;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Lcom/google/android/youtube/app/a/s;)V

    invoke-interface {v8, v1}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->l()Landroid/os/Bundle;

    move-result-object v2

    .line 276
    const v1, 0x7f09005f

    .line 277
    if-eqz p2, :cond_200

    .line 278
    const-string v1, "selected_card_id"

    const v2, 0x7f09005f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 279
    const-string v1, "selected_playlist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Playlist;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->t:Lcom/google/android/youtube/core/model/Playlist;

    move v3, v2

    .line 284
    :goto_1d5
    const v1, 0x7f090037

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v4, 0x7f040047

    const v2, 0x7f090030

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v1, v4, v2, v3}, Lcom/google/android/youtube/app/ui/e;->a(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/e;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/e;->a(Lcom/google/android/youtube/app/ui/f;)V

    .line 290
    return-void

    .line 281
    :cond_200
    if-eqz v2, :cond_20d

    .line 282
    const-string v1, "selected_card_id"

    const v3, 0x7f09005f

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    goto :goto_1d5

    :cond_20d
    move v3, v1

    goto :goto_1d5
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->o:Lcom/google/android/youtube/app/ui/h;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/h;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a(I)V

    .line 313
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->a()V

    .line 324
    return-void
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    .line 425
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 401
    :pswitch_d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->e:Lcom/google/android/youtube/app/aa;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/q;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h:Lcom/google/android/youtube/core/e;

    invoke-direct {v3, p0, v4}, Lcom/google/android/youtube/app/honeycomb/tablet/q;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Lcom/google/android/youtube/core/e;)V

    const v4, 0x7f0a014e

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->q:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/ae;->e()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    goto :goto_c

    .line 413
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->r:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Rentals"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 415
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v1, :cond_42

    .line 416
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    const v2, 0x7f0a00a8

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    goto :goto_c

    .line 418
    :cond_42
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_c

    .line 421
    :cond_4c
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/g;->c(Landroid/app/Activity;)V

    goto :goto_c

    .line 399
    :pswitch_data_52
    .packed-switch 0x7f0900c8
        :pswitch_d
        :pswitch_25
    .end packed-switch
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 359
    sparse-switch p1, :sswitch_data_28

    .line 377
    :goto_3
    return-void

    .line 361
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->u:Lcom/google/android/youtube/app/honeycomb/tablet/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b()V

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->i:Lcom/google/android/youtube/app/ui/cd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cd;->a()V

    goto :goto_3

    .line 365
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->j:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    goto :goto_3

    .line 368
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->k:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    goto :goto_3

    .line 371
    :sswitch_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->l:Lcom/google/android/youtube/core/ui/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/k;->a()V

    goto :goto_3

    .line 374
    :sswitch_21
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->m:Lcom/google/android/youtube/app/ui/bw;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bw;->a()V

    goto :goto_3

    .line 359
    nop

    :sswitch_data_28
    .sparse-switch
        0x7f09002b -> :sswitch_4
        0x7f09002c -> :sswitch_f
        0x7f09002e -> :sswitch_1b
        0x7f09005f -> :sswitch_21
        0x7f090060 -> :sswitch_15
    .end sparse-switch
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 328
    if-eqz p1, :cond_e

    .line 329
    const-string v0, "selected_card_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/e;->a(I)V

    .line 332
    :cond_e
    return-void
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 430
    sparse-switch p1, :sswitch_data_3c

    .line 452
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 432
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 435
    :sswitch_e
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/r;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/r;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;)V

    .line 443
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a017e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 430
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_5
        0x3ef -> :sswitch_e
    .end sparse-switch
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->a()V

    .line 318
    return-void
.end method

.method protected final h_()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->b(I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->notifyDataSetInvalidated()V

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/n;->o:Lcom/google/android/youtube/app/ui/h;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/h;->a()V

    .line 384
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 385
    return-void
.end method

.method protected final i_()V
    .registers 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->e()V

    .line 303
    return-void
.end method
