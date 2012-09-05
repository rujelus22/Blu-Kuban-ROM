.class public Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;
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

.field private f:Lcom/google/android/youtube/core/e;

.field private g:Lcom/google/android/youtube/app/ui/cv;

.field private h:Lcom/google/android/youtube/app/a/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_c

    .line 116
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 110
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 52
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->b:Lcom/google/android/youtube/core/client/ad;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->d:Lcom/google/android/youtube/core/client/ag;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->f:Lcom/google/android/youtube/core/e;

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->o()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->a:Lcom/google/android/youtube/core/async/ad;

    .line 58
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->g:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->finish()V

    .line 106
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->finish()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0a011e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->d(I)V

    .line 67
    invoke-static {p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->h:Lcom/google/android/youtube/app/a/x;

    .line 68
    new-instance v0, Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v2

    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/h;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->h:Lcom/google/android/youtube/app/a/x;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->a:Lcom/google/android/youtube/core/async/ad;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->d:Lcom/google/android/youtube/core/client/ag;

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v9

    sget-object v10, Lcom/google/android/youtube/core/Analytics$VideoCategory;->WatchHistory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v11, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_HISTORY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v12, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->f:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->g:Lcom/google/android/youtube/app/ui/cv;

    .line 81
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 93
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->g:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    .line 87
    return-void
.end method
