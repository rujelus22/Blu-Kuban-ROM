.class public Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/p;
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/ad;

.field private b:Lcom/google/android/youtube/core/async/ad;

.field private c:Lcom/google/android/youtube/core/client/ad;

.field private d:Lcom/google/android/youtube/core/client/af;

.field private e:Lcom/google/android/youtube/core/client/ag;

.field private f:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private g:Lcom/google/android/youtube/core/e;

.field private h:Lcom/google/android/youtube/app/ui/j;

.field private i:I

.field private j:Lcom/google/android/youtube/app/ui/cv;

.field private k:Lcom/google/android/youtube/app/a/x;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Landroid/net/Uri;

.field private r:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "playlist_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/app/a/x;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->k:Lcom/google/android/youtube/app/a/x;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Z

    return v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_c

    .line 260
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 257
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->h:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 255
    :pswitch_data_c
    .packed-switch 0x3ec
        :pswitch_5
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    const-string v0, "yt_playlist"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->d:Lcom/google/android/youtube/core/client/af;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->e:Lcom/google/android/youtube/core/client/ag;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->e()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->a:Lcom/google/android/youtube/core/async/ad;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->f()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->b:Lcom/google/android/youtube/core/async/ad;

    .line 91
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->f:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->g:Lcom/google/android/youtube/core/e;

    .line 93
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 7
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 212
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->g:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->finish()V

    .line 217
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 51
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    if-nez v0, :cond_23

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    new-array v3, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v4}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->l:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    :goto_3c
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    if-eqz v0, :cond_59

    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Landroid/widget/TextView;

    const v3, 0x7f0a015a

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    if-eqz v3, :cond_98

    :goto_5f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_63
    move v0, v2

    goto :goto_3c

    :cond_65
    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-ne v0, v6, :cond_7c

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Landroid/widget/TextView;

    const v3, 0x7f0a015b

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_59

    :cond_7c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Landroid/widget/TextView;

    const v3, 0x7f0a015c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v5, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_59

    :cond_98
    move v2, v1

    goto :goto_5f
.end method

.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 51
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->i:I

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->f:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/am;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->g:Lcom/google/android/youtube/core/e;

    invoke-direct {v1, p0, p2, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/am;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;Lcom/google/android/youtube/core/model/Video;Landroid/app/Activity;Lcom/google/android/youtube/core/e;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->finish()V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter

    .prologue
    .line 126
    invoke-super/range {p0 .. p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_a8

    .line 132
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/j;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/j;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_a5

    iget-object v0, v0, Lcom/google/android/youtube/core/utils/j;->a:Ljava/lang/String;

    :goto_1b
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Ljava/lang/String;

    .line 137
    :goto_1d
    const-string v0, "authenticate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Z

    .line 139
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->l:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Landroid/widget/TextView;

    .line 143
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Z

    if-eqz v0, :cond_b4

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->b:Lcom/google/android/youtube/core/async/ad;

    .line 146
    :goto_4d
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Z

    if-eqz v0, :cond_b7

    .line 147
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->h:Lcom/google/android/youtube/app/ui/j;

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->h:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/p;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->h:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a017a

    const v2, 0x7f020046

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->i:I

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->h:Lcom/google/android/youtube/app/ui/j;

    invoke-static {p0, v0}, Lcom/google/android/youtube/app/a/x;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->k:Lcom/google/android/youtube/app/a/x;

    .line 156
    :goto_75
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/al;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v3

    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->k:Lcom/google/android/youtube/app/a/x;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->d:Lcom/google/android/youtube/core/client/af;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->e:Lcom/google/android/youtube/core/client/ag;

    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Z

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v11

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v13, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->PLAYLIST:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v14, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->g:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v14}, Lcom/google/android/youtube/app/honeycomb/phone/al;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    .line 176
    invoke-static {p0, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/async/g;

    .line 177
    return-void

    .line 133
    :cond_a5
    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 135
    :cond_a8
    const-string v0, "playlist_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    goto/16 :goto_1d

    .line 143
    :cond_b4
    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->a:Lcom/google/android/youtube/core/async/ad;

    goto :goto_4d

    .line 153
    :cond_b7
    invoke-static {p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->k:Lcom/google/android/youtube/app/a/x;

    goto :goto_75
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 191
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Z

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->f:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 205
    :goto_c
    return-void

    .line 194
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    if-eqz v0, :cond_32

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_c

    .line 202
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->c:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_c
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    .line 186
    return-void
.end method
