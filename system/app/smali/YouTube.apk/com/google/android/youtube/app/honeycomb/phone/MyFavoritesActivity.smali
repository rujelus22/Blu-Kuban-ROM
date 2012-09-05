.class public Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/ad;

.field private b:Lcom/google/android/youtube/core/client/ad;

.field private c:Lcom/google/android/youtube/core/client/af;

.field private d:Lcom/google/android/youtube/core/client/ag;

.field private e:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private f:Lcom/google/android/youtube/core/model/UserAuth;

.field private g:Lcom/google/android/youtube/core/e;

.field private h:Lcom/google/android/youtube/app/ui/cv;

.field private i:Lcom/google/android/youtube/app/a/x;

.field private j:Lcom/google/android/youtube/app/ui/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;)Lcom/google/android/youtube/app/a/x;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->i:Lcom/google/android/youtube/app/a/x;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/x;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/x;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;Lcom/google/android/youtube/core/model/Video;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->f:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->g:Lcom/google/android/youtube/core/e;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 139
    sparse-switch p1, :sswitch_data_14

    .line 148
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 142
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 145
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->j:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 139
    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_5
        0x3f0 -> :sswitch_c
    .end sparse-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->b:Lcom/google/android/youtube/core/client/ad;

    .line 64
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->s()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->a:Lcom/google/android/youtube/core/async/ad;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->d:Lcom/google/android/youtube/core/client/ag;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->g:Lcom/google/android/youtube/core/e;

    .line 68
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->f:Lcom/google/android/youtube/core/model/UserAuth;

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->finish()V

    .line 135
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->finish()V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->d(I)V

    .line 77
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/16 v1, 0x3f0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->j:Lcom/google/android/youtube/app/ui/j;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->j:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a0165

    const v2, 0x7f020046

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->j:Lcom/google/android/youtube/app/ui/j;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/v;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/v;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/p;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->j:Lcom/google/android/youtube/app/ui/j;

    invoke-static {p0, v0}, Lcom/google/android/youtube/app/a/x;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->i:Lcom/google/android/youtube/app/a/x;

    .line 92
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/w;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v3

    const v1, 0x7f09002c

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->i:Lcom/google/android/youtube/app/a/x;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->a:Lcom/google/android/youtube/core/async/ad;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->d:Lcom/google/android/youtube/core/client/ag;

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v13, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->g:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/honeycomb/phone/w;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    .line 110
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 122
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    .line 116
    return-void
.end method
