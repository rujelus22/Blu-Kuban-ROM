.class public Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/ej;
.implements Lcom/google/android/youtube/app/ui/v;
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Landroid/net/Uri;

.field private F:Lcom/google/android/youtube/core/async/l;

.field private G:Lcom/google/android/youtube/app/prefetch/d;

.field private H:Lcom/google/android/youtube/core/j;

.field private I:Z

.field private m:Landroid/content/res/Resources;

.field private n:Lcom/google/android/youtube/core/async/ar;

.field private o:Lcom/google/android/youtube/core/async/ar;

.field private p:Lcom/google/android/youtube/core/b/ae;

.field private q:Lcom/google/android/youtube/core/b/ag;

.field private r:Lcom/google/android/youtube/core/b/ai;

.field private s:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private t:Lcom/google/android/youtube/core/d;

.field private u:Lcom/google/android/youtube/app/ui/p;

.field private v:I

.field private w:Lcom/google/android/youtube/app/ui/eh;

.field private x:Lcom/google/android/youtube/app/adapter/ba;

.field private y:Lcom/google/android/youtube/app/ui/br;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
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

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->y:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_12

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 330
    :cond_12
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    .line 101
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    .line 102
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Lcom/google/android/youtube/core/b/ag;

    .line 103
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/b/ai;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->g()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Lcom/google/android/youtube/core/async/ar;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->h()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Lcom/google/android/youtube/core/async/ar;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->s:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->t:Lcom/google/android/youtube/core/d;

    .line 108
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->G:Lcom/google/android/youtube/app/prefetch/d;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->H:Lcom/google/android/youtube/core/j;

    .line 110
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 7
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->F:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 249
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->C:Z

    sget-object v3, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)V

    .line 214
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->t:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->finish()V

    .line 254
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->B:Landroid/widget/TextView;

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

    .line 58
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->I:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->C:Z

    sget-object v5, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)V

    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->I:Z

    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    if-nez v0, :cond_36

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    new-array v3, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v4}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->z:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->A:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->A:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    move v0, v1

    :goto_4f
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->B:Landroid/widget/TextView;

    const v3, 0x7f0b01af

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->B:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    if-eqz v3, :cond_ab

    :goto_72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_76
    move v0, v2

    goto :goto_4f

    :cond_78
    iget v0, p2, Lcom/google/android/youtube/core/model/Playlist;->size:I

    if-ne v0, v6, :cond_8f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->B:Landroid/widget/TextView;

    const v3, 0x7f0b01b0

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    :cond_8f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->B:Landroid/widget/TextView;

    const v3, 0x7f0b01b1

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

    goto :goto_6c

    :cond_ab
    move v2, v1

    goto :goto_72
.end method

.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->v:I

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->s:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/bl;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->t:Lcom/google/android/youtube/core/d;

    invoke-direct {v1, p0, p2, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/bl;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;Lcom/google/android/youtube/core/model/Video;Landroid/app/Activity;Lcom/google/android/youtube/core/d;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_c

    .line 303
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 300
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->u:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 298
    :pswitch_data_c
    .packed-switch 0x3ec
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    const-string v0, "yt_playlist"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->finish()V

    .line 258
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->g()V

    .line 324
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const v6, 0x7f0a0056

    const/4 v1, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_42

    const v0, 0x7f040074

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_4a

    .line 149
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/m;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/m;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_46

    iget-object v0, v3, Lcom/google/android/youtube/core/utils/m;->a:Ljava/lang/String;

    :goto_25
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->D:Ljava/lang/String;

    .line 151
    if-eqz v3, :cond_48

    iget-boolean v0, v3, Lcom/google/android/youtube/core/utils/m;->b:Z

    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->I:Z

    .line 155
    :goto_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    if-nez v0, :cond_55

    .line 156
    const-string v0, "Invalid intent: Playlist Uri or Playlist Id not set"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->finish()V

    .line 210
    :goto_41
    return-void

    .line 144
    :cond_42
    const v0, 0x7f04005a

    goto :goto_10

    .line 150
    :cond_46
    const/4 v0, 0x0

    goto :goto_25

    :cond_48
    move v0, v1

    .line 151
    goto :goto_2b

    .line 153
    :cond_4a
    const-string v0, "playlist_uri"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    goto :goto_2d

    .line 160
    :cond_55
    const-string v0, "authenticate"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->C:Z

    .line 162
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->z:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->A:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->B:Landroid/widget/TextView;

    .line 166
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->C:Z

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->o:Lcom/google/android/youtube/core/async/ar;

    move-object v7, v0

    .line 169
    :goto_85
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->C:Z

    if-eqz v0, :cond_118

    .line 170
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->u:Lcom/google/android/youtube/app/ui/p;

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->u:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->u:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01d7

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->v:I

    .line 174
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/b/ai;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->G:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->H:Lcom/google/android/youtube/core/j;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->u:Lcom/google/android/youtube/app/ui/p;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    .line 190
    :goto_b6
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/g;

    .line 191
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->y:Lcom/google/android/youtube/app/ui/br;

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    const v3, 0x7f0a004e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    const v3, 0x7f0a0054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    const v5, 0x7f0a0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 199
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->g()V

    .line 201
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->t:Lcom/google/android/youtube/core/d;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/ui/ej;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    .line 209
    invoke-static {p0, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->F:Lcom/google/android/youtube/core/async/l;

    goto/16 :goto_41

    .line 166
    :cond_113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->n:Lcom/google/android/youtube/core/async/ar;

    move-object v7, v0

    goto/16 :goto_85

    .line 182
    :cond_118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->q:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->r:Lcom/google/android/youtube/core/b/ai;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->G:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->H:Lcom/google/android/youtube/core/j;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    goto :goto_b6
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 228
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->C:Z

    if-eqz v0, :cond_d

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->s:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 242
    :goto_c
    return-void

    .line 231
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    if-eqz v0, :cond_32

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->F:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->E:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_c

    .line 239
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->p:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->F:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->b(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_c
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    .line 223
    return-void
.end method
