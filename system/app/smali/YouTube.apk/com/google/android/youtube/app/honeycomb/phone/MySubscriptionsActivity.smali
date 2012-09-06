.class public Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private m:Lcom/google/android/youtube/core/ui/j;

.field private n:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private o:Lcom/google/android/youtube/core/b/ae;

.field private p:Lcom/google/android/youtube/core/b/ag;

.field private q:Lcom/google/android/youtube/core/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->p:Lcom/google/android/youtube/core/b/ag;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->q:Lcom/google/android/youtube/core/d;

    .line 51
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->m:Lcom/google/android/youtube/core/ui/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 111
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->finish()V

    .line 119
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string v0, "yt_channel"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->finish()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0b0171

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->e(I)V

    .line 60
    new-instance v3, Lcom/google/android/youtube/app/adapter/c;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/adapter/c;-><init>(Landroid/content/Context;)V

    .line 61
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/g;

    .line 62
    new-instance v0, Lcom/google/android/youtube/app/ui/b;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->q:Lcom/google/android/youtube/core/d;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->p:Lcom/google/android/youtube/core/b/ag;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/b;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/c;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->m:Lcom/google/android/youtube/core/ui/j;

    .line 70
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/be;

    invoke-direct {v0, p0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/be;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;Lcom/google/android/youtube/app/adapter/c;)V

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 106
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->m:Lcom/google/android/youtube/core/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/j;->e()V

    .line 100
    return-void
.end method
