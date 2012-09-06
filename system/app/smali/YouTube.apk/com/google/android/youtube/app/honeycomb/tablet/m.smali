.class public final Lcom/google/android/youtube/app/honeycomb/tablet/m;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/g;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ae;

.field private final h:Lcom/google/android/youtube/core/d;

.field private i:Lcom/google/android/youtube/app/ui/dh;

.field private j:Lcom/google/android/youtube/app/ui/ec;

.field private k:Lcom/google/android/youtube/app/ui/ec;

.field private l:Lcom/google/android/youtube/core/ui/j;

.field private m:Lcom/google/android/youtube/app/ui/dc;

.field private n:Lcom/google/android/youtube/app/ui/f;

.field private o:Lcom/google/android/youtube/app/ui/i;

.field private p:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private q:Lcom/google/android/youtube/app/k;

.field private r:Lcom/google/android/youtube/core/Analytics;

.field private s:Lcom/google/android/youtube/core/model/UserAuth;

.field private t:Lcom/google/android/youtube/core/model/Playlist;

.field private final u:Lcom/google/android/youtube/app/honeycomb/tablet/u;

.field private v:Lcom/google/android/youtube/app/adapter/br;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    .line 105
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    .line 106
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/u;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->u:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->u:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/adapter/br;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->v:Lcom/google/android/youtube/app/adapter/br;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->r:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/ui/dh;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->i:Lcom/google/android/youtube/app/ui/dh;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 307
    return-void
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/tablet/m;)V
    .registers 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 111
    const v0, 0x7f040049

    return v0
.end method

.method public final a(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_7

    .line 356
    :goto_6
    return-void

    .line 338
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    .line 339
    sparse-switch p1, :sswitch_data_64

    goto :goto_6

    .line 341
    :sswitch_11
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->i:Lcom/google/android/youtube/app/ui/dh;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/dh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 344
    :sswitch_21
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->j:Lcom/google/android/youtube/app/ui/ec;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 347
    :sswitch_31
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->k:Lcom/google/android/youtube/app/ui/ec;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 350
    :sswitch_41
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->l:Lcom/google/android/youtube/core/ui/j;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    const/16 v4, 0x17

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 353
    :sswitch_53
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->m:Lcom/google/android/youtube/app/ui/dc;

    new-array v2, v2, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/dc;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 339
    nop

    :sswitch_data_64
    .sparse-switch
        0x7f080034 -> :sswitch_11
        0x7f080035 -> :sswitch_21
        0x7f080037 -> :sswitch_41
        0x7f0800a9 -> :sswitch_53
        0x7f0800aa -> :sswitch_31
    .end sparse-switch
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/os/Bundle;)V

    .line 295
    const-string v0, "selected_card_id"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/f;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v0, "selected_playlist"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->t:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 297
    return-void
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 390
    const v0, 0x7f120004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 391
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 28
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v5

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->r:Lcom/google/android/youtube/core/Analytics;

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->q:Lcom/google/android/youtube/app/k;

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->k()Lcom/google/android/youtube/core/async/ar;

    move-result-object v13

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->j()Lcom/google/android/youtube/core/async/ar;

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->l()Lcom/google/android/youtube/core/async/ar;

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->u()Lcom/google/android/youtube/core/async/ar;

    move-result-object v22

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->p()Lcom/google/android/youtube/core/async/ar;

    move-result-object v23

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->m()Lcom/google/android/youtube/core/async/ar;

    move-result-object v24

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->w()Lcom/google/android/youtube/core/async/ar;

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v16

    .line 138
    new-instance v1, Lcom/google/android/youtube/app/ui/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/app/ui/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->o:Lcom/google/android/youtube/app/ui/i;

    .line 140
    const v1, 0x7f080034

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/br;->a(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/br;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->v:Lcom/google/android/youtube/app/adapter/br;

    .line 142
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/n;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->v:Lcom/google/android/youtube/app/adapter/br;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->r:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v19, Lcom/google/android/youtube/app/m;->G:Lcom/google/android/youtube/core/b/aj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    move-object/from16 v20, v0

    move-object/from16 v7, p0

    move-object v15, v5

    move-object/from16 v21, v11

    invoke-direct/range {v6 .. v21}, Lcom/google/android/youtube/app/honeycomb/tablet/n;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/br;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/ui/PagedGridView;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->i:Lcom/google/android/youtube/app/ui/dh;

    .line 217
    const v1, 0x7f080035

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 218
    new-instance v8, Lcom/google/android/youtube/app/honeycomb/tablet/o;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v13

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->r:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v20, Lcom/google/android/youtube/app/m;->H:Lcom/google/android/youtube/core/b/aj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    move-object/from16 v21, v0

    move-object/from16 v9, p0

    move-object/from16 v14, v22

    move-object v15, v5

    invoke-direct/range {v8 .. v21}, Lcom/google/android/youtube/app/honeycomb/tablet/o;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->j:Lcom/google/android/youtube/app/ui/ec;

    .line 237
    new-instance v9, Lcom/google/android/youtube/app/ui/ec;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    const v1, 0x7f0800aa

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v13

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->r:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/youtube/core/Analytics$VideoCategory;->WatchLater:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v20, Lcom/google/android/youtube/app/m;->P:Lcom/google/android/youtube/core/b/aj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    move-object/from16 v21, v0

    move-object/from16 v14, v23

    move-object v15, v5

    invoke-direct/range {v9 .. v21}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->k:Lcom/google/android/youtube/app/ui/ec;

    .line 251
    new-instance v9, Lcom/google/android/youtube/app/adapter/as;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/android/youtube/app/adapter/as;-><init>(Landroid/content/Context;)V

    .line 252
    const v1, 0x7f080037

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 253
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/z;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->h()Lcom/google/android/youtube/core/async/ar;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    move-object/from16 v10, v24

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/android/youtube/app/honeycomb/tablet/z;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/as;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->l:Lcom/google/android/youtube/core/ui/j;

    .line 262
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/r;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/r;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Lcom/google/android/youtube/app/adapter/as;)V

    invoke-interface {v8, v1}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    new-instance v9, Lcom/google/android/youtube/app/adapter/bm;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/android/youtube/app/adapter/bm;-><init>(Landroid/content/Context;)V

    .line 265
    const v1, 0x7f0800a9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 266
    new-instance v6, Lcom/google/android/youtube/app/ui/dc;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/youtube/app/ui/dc;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bm;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->m:Lcom/google/android/youtube/app/ui/dc;

    .line 273
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/s;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/s;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Lcom/google/android/youtube/app/adapter/bm;)V

    invoke-interface {v8, v1}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->t()Landroid/os/Bundle;

    move-result-object v2

    .line 276
    const v1, 0x7f0800a9

    .line 277
    if-eqz p2, :cond_200

    .line 278
    const-string v1, "selected_card_id"

    const v2, 0x7f0800a9

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

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->t:Lcom/google/android/youtube/core/model/Playlist;

    move v3, v2

    .line 284
    :goto_1d5
    const v1, 0x7f080042

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v4, 0x7f040080

    const v2, 0x7f080039

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v1, v4, v2, v3}, Lcom/google/android/youtube/app/ui/f;->a(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/f;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/f;->a(Lcom/google/android/youtube/app/ui/g;)V

    .line 290
    return-void

    .line 281
    :cond_200
    if-eqz v2, :cond_20d

    .line 282
    const-string v1, "selected_card_id"

    const v3, 0x7f0800a9

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
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->o:Lcom/google/android/youtube/app/ui/i;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/i;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/f;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(I)V

    .line 313
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->a()V

    .line 324
    return-void
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    .line 395
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 409
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 397
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->e:Lcom/google/android/youtube/app/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/p;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h:Lcom/google/android/youtube/core/d;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/p;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Lcom/google/android/youtube/core/d;)V

    const v3, 0x7f0b019c

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->q:Lcom/google/android/youtube/app/k;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/k;->e()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    .line 407
    const/4 v0, 0x1

    goto :goto_b

    .line 395
    nop

    :pswitch_data_26
    .packed-switch 0x7f08013e
        :pswitch_c
    .end packed-switch
.end method

.method protected final b()V
    .registers 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g()V

    .line 303
    return-void
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
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->u:Lcom/google/android/youtube/app/honeycomb/tablet/u;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b()V

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->i:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dh;->c()V

    goto :goto_3

    .line 365
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->j:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    goto :goto_3

    .line 368
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->k:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    goto :goto_3

    .line 371
    :sswitch_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->l:Lcom/google/android/youtube/core/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/j;->c()V

    goto :goto_3

    .line 374
    :sswitch_21
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->m:Lcom/google/android/youtube/app/ui/dc;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dc;->c()V

    goto :goto_3

    .line 359
    nop

    :sswitch_data_28
    .sparse-switch
        0x7f080034 -> :sswitch_4
        0x7f080035 -> :sswitch_f
        0x7f080037 -> :sswitch_1b
        0x7f0800a9 -> :sswitch_21
        0x7f0800aa -> :sswitch_15
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
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/f;->a(I)V

    .line 332
    :cond_e
    return-void
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_2c

    .line 432
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 416
    :pswitch_5
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/q;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/q;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;)V

    .line 424
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01da

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

    .line 414
    nop

    :pswitch_data_2c
    .packed-switch 0x3ef
        :pswitch_5
    .end packed-switch
.end method

.method protected final c()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/f;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->b(I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/f;->notifyDataSetInvalidated()V

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->o:Lcom/google/android/youtube/app/ui/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/i;->a()V

    .line 384
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 385
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->a()V

    .line 318
    return-void
.end method
