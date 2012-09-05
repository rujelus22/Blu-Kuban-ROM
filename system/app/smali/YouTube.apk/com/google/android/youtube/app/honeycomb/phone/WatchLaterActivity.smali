.class public Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/b/k;
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

.field private k:Lcom/google/android/youtube/app/b/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;)Lcom/google/android/youtube/app/a/x;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->i:Lcom/google/android/youtube/app/a/x;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ay;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ay;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Lcom/google/android/youtube/core/model/Video;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->f:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->d(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->g:Lcom/google/android/youtube/core/e;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 155
    sparse-switch p1, :sswitch_data_14

    .line 164
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 158
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 161
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->j:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 155
    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_5
        0x3fe -> :sswitch_c
    .end sparse-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 69
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->b:Lcom/google/android/youtube/core/client/ad;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->d:Lcom/google/android/youtube/core/client/ag;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->k:Lcom/google/android/youtube/app/b/i;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->g:Lcom/google/android/youtube/core/e;

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->n()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->a:Lcom/google/android/youtube/core/async/ad;

    .line 76
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->f:Lcom/google/android/youtube/core/model/UserAuth;

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->finish()V

    .line 151
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->finish()V

    .line 147
    return-void
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->i:Lcom/google/android/youtube/app/a/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/a/x;->notifyDataSetChanged()V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->d(I)V

    .line 85
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/16 v1, 0x3fe

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->j:Lcom/google/android/youtube/app/ui/j;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->j:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a016f

    const v2, 0x7f020046

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->j:Lcom/google/android/youtube/app/ui/j;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/aw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/aw;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/p;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->j:Lcom/google/android/youtube/app/ui/j;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->k:Lcom/google/android/youtube/app/b/i;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/a/x;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/b/i;)Lcom/google/android/youtube/app/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->i:Lcom/google/android/youtube/app/a/x;

    .line 100
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ax;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v3

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->i:Lcom/google/android/youtube/app/a/x;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->a:Lcom/google/android/youtube/core/async/ad;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->d:Lcom/google/android/youtube/core/client/ag;

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->WatchLater:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_LATER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v13, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->g:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/honeycomb/phone/ax;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->k:Lcom/google/android/youtube/app/b/i;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/b/i;->a(Lcom/google/android/youtube/app/b/k;)V

    .line 120
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->k:Lcom/google/android/youtube/app/b/i;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/b/i;->b(Lcom/google/android/youtube/app/b/k;)V

    .line 125
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onDestroy()V

    .line 126
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 138
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    .line 132
    return-void
.end method
