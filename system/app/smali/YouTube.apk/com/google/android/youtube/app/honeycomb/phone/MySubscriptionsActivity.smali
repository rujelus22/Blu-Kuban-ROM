.class public Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private a:Lcom/google/android/youtube/core/ui/k;

.field private b:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private c:Lcom/google/android/youtube/core/client/ad;

.field private d:Lcom/google/android/youtube/core/client/af;

.field private e:Lcom/google/android/youtube/core/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 92
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;

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
    .line 125
    packed-switch p1, :pswitch_data_c

    .line 129
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 127
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 125
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    const-string v0, "yt_channel"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->c:Lcom/google/android/youtube/core/client/ad;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->d:Lcom/google/android/youtube/core/client/af;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->e:Lcom/google/android/youtube/core/e;

    .line 53
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->a:Lcom/google/android/youtube/core/ui/k;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/k;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->finish()V

    .line 121
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->finish()V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->d(I)V

    .line 62
    new-instance v3, Lcom/google/android/youtube/app/a/a;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/a/a;-><init>(Landroid/content/Context;)V

    .line 63
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/h;

    .line 64
    new-instance v0, Lcom/google/android/youtube/app/ui/b;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->c:Lcom/google/android/youtube/core/client/ad;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->e:Lcom/google/android/youtube/core/e;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->d:Lcom/google/android/youtube/core/client/af;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/b;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/a;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->a:Lcom/google/android/youtube/core/ui/k;

    .line 72
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ae;

    invoke-direct {v0, p0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/ae;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;Lcom/google/android/youtube/app/a/a;)V

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 108
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->a:Lcom/google/android/youtube/core/ui/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/k;->e()V

    .line 102
    return-void
.end method
