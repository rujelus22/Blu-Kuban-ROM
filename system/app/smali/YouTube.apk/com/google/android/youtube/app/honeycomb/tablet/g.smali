.class public final Lcom/google/android/youtube/app/honeycomb/tablet/g;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/app/ui/f;


# instance fields
.field a:Lcom/google/android/youtube/app/ui/ad;

.field private h:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private i:Lcom/google/android/youtube/core/Analytics;

.field private j:Lcom/google/android/youtube/core/e;

.field private final k:Lcom/google/android/youtube/core/client/ad;

.field private l:Ljava/lang/String;

.field private m:Landroid/net/Uri;

.field private n:Lcom/google/android/youtube/app/ui/cv;

.field private o:Lcom/google/android/youtube/app/ui/cv;

.field private p:Lcom/google/android/youtube/core/ui/k;

.field private q:Lcom/google/android/youtube/app/ui/e;

.field private r:Lcom/google/android/youtube/app/ui/h;

.field private s:Landroid/view/MenuItem;

.field private t:Lcom/google/android/youtube/core/model/UserAuth;

.field private u:[Ljava/lang/String;

.field private v:Lcom/google/android/youtube/core/model/Playlist;

.field private w:Lcom/google/android/youtube/app/honeycomb/tablet/j;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const-string v5, "yt_channel"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/g;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILandroid/net/Uri;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "selected_card_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v1, "unsubscribe_uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/g;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Landroid/net/Uri;

    if-eqz v0, :cond_19

    const v0, 0x7f020075

    :goto_9
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 310
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    const v0, 0x7f0a0119

    :goto_15
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 311
    return-void

    .line 307
    :cond_19
    const v0, 0x7f02005f

    goto :goto_9

    .line 310
    :cond_1d
    const v0, 0x7f0a0118

    goto :goto_15
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->e()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 127
    const v0, 0x7f04000d

    return v0
.end method

.method public final a(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 243
    packed-switch p1, :pswitch_data_60

    .line 258
    :goto_5
    return-void

    .line 245
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_5

    .line 248
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_5

    .line 251
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/ad;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ad;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_5

    .line 254
    :pswitch_48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/k;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/k;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_5

    .line 243
    :pswitch_data_60
    .packed-switch 0x7f09002b
        :pswitch_6
        :pswitch_1c
        :pswitch_32
        :pswitch_48
    .end packed-switch
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "selected_card_id"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/e;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v0, "selected_playlist"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->v:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 234
    return-void
.end method

.method protected final a(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;)V

    .line 293
    const v0, 0x7f0900cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    .line 294
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->e()V

    .line 295
    return-void
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 287
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 288
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 25
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    const v2, 0x7f0a019e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v5

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->h()Lcom/google/android/youtube/core/async/ad;

    move-result-object v11

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->m()Lcom/google/android/youtube/core/async/ad;

    move-result-object v19

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->l()Lcom/google/android/youtube/core/async/ad;

    move-result-object v20

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v13

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l()Landroid/os/Bundle;

    move-result-object v21

    .line 149
    const-string v1, "username"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    .line 150
    const-string v1, "unsubscribe_uri"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Landroid/net/Uri;

    .line 152
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->u:[Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0a0122

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->u:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0a0123

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    new-instance v1, Lcom/google/android/youtube/app/ui/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->r:Lcom/google/android/youtube/app/ui/h;

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->r:Lcom/google/android/youtube/app/ui/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/h;->a(Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/j;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/j;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Landroid/app/Activity;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->w:Lcom/google/android/youtube/app/honeycomb/tablet/j;

    .line 161
    new-instance v6, Lcom/google/android/youtube/app/ui/cv;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/o;

    const v1, 0x7f09002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v10

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    sget-object v16, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v17, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    move-object/from16 v18, v0

    move-object v12, v5

    invoke-direct/range {v6 .. v18}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/cv;

    .line 175
    new-instance v6, Lcom/google/android/youtube/app/ui/cv;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/o;

    const v1, 0x7f09002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v10

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    sget-object v16, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v17, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    move-object/from16 v18, v0

    move-object/from16 v11, v19

    move-object v12, v5

    invoke-direct/range {v6 .. v18}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/cv;

    .line 189
    new-instance v6, Lcom/google/android/youtube/app/ui/ad;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/o;

    const v1, 0x7f09002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v10, Lcom/google/android/youtube/app/a/f;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-direct {v10, v1}, Lcom/google/android/youtube/app/a/f;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    sget-object v14, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v15, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_ACTIVITY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-direct/range {v6 .. v15}, Lcom/google/android/youtube/app/ui/ad;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/f;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/ad;

    .line 200
    new-instance v9, Lcom/google/android/youtube/app/a/l;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/android/youtube/app/a/l;-><init>(Landroid/content/Context;)V

    .line 201
    const v1, 0x7f09002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 202
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->e()Lcom/google/android/youtube/core/async/ad;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/e;

    move-object/from16 v10, v20

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/android/youtube/app/honeycomb/tablet/aa;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/l;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/k;

    .line 211
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/h;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/h;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/app/a/l;)V

    invoke-interface {v8, v1}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    const v1, 0x7f09002b

    .line 214
    if-eqz p2, :cond_20e

    .line 215
    const-string v1, "selected_card_id"

    const v2, 0x7f09002b

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 216
    const-string v1, "selected_playlist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Playlist;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->v:Lcom/google/android/youtube/core/model/Playlist;

    move v3, v2

    .line 221
    :goto_1e3
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

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/e;

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/e;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/e;->a(Lcom/google/android/youtube/app/ui/f;)V

    .line 227
    return-void

    .line 218
    :cond_20e
    if-eqz v21, :cond_21d

    .line 219
    const-string v1, "selected_card_id"

    const v2, 0x7f09002b

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    goto :goto_1e3

    :cond_21d
    move v3, v1

    goto :goto_1e3
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900cc

    if-ne v0, v1, :cond_14

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->w:Lcom/google/android/youtube/app/honeycomb/tablet/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_13
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_1c

    .line 275
    :goto_3
    return-void

    .line 263
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    goto :goto_3

    .line 266
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    goto :goto_3

    .line 269
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/ad;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ad;->a()V

    goto :goto_3

    .line 272
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/k;->a()V

    goto :goto_3

    .line 261
    :pswitch_data_1c
    .packed-switch 0x7f09002b
        :pswitch_4
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 327
    sparse-switch p1, :sswitch_data_2c

    .line 337
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 329
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 331
    :sswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0121

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->u:[Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 327
    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_5
        0x3f9 -> :sswitch_e
    .end sparse-switch
.end method

.method protected final h_()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->b(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->notifyDataSetInvalidated()V

    .line 281
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 282
    return-void
.end method

.method protected final i_()V
    .registers 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(I)V

    .line 240
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 342
    packed-switch p2, :pswitch_data_5e

    .line 357
    :goto_5
    return-void

    .line 344
    :pswitch_6
    const v0, 0x7f0a0124

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "SubscribeToActivity"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/honeycomb/tablet/i;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/i;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_5

    .line 352
    :pswitch_32
    const v0, 0x7f0a0125

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "SubscribeToUploads"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/honeycomb/tablet/i;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/i;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->f(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 356
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_5

    .line 342
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_32
    .end packed-switch
.end method
