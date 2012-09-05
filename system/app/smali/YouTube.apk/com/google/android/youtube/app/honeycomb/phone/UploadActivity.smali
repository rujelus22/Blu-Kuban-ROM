.class public Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/ui/u;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private b:Lcom/google/android/youtube/app/aa;

.field private c:Lcom/google/android/youtube/app/ae;

.field private d:Lcom/google/android/youtube/app/honeycomb/ui/q;

.field private e:Lcom/google/android/youtube/core/e;

.field private f:Z

.field private g:Z

.field private h:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->f:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->h:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->g:Z

    if-nez v0, :cond_1a

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->d:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->h:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->g:Z

    .line 75
    :cond_1a
    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_12

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->d:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_9
    return-object v0

    .line 115
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    .line 113
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const-string v0, "yt_upload"

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->h:Lcom/google/android/youtube/core/model/UserAuth;

    .line 93
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->e()V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    const-string v0, "Error authenticating"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->e:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 100
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->d()V

    .line 129
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 104
    return-void
.end method

.method public final g_()V
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->d()V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    const v1, 0x7f040050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->setContentView(Landroid/view/View;)V

    .line 45
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->d(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 48
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v3

    .line 50
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->e:Lcom/google/android/youtube/core/e;

    .line 52
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 53
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/q;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->e:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/ui/q;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/app/honeycomb/ui/u;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->d:Lcom/google/android/youtube/app/honeycomb/ui/q;

    .line 54
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->h()Lcom/google/android/youtube/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->b:Lcom/google/android/youtube/app/aa;

    .line 55
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->c:Lcom/google/android/youtube/app/ae;

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->d:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->f:Z

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->h:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_19

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->b:Lcom/google/android/youtube/app/aa;

    const v1, 0x7f0a014e

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->c:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ae;->e()Z

    move-result v2

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 68
    :goto_18
    return-void

    .line 66
    :cond_19
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->e()V

    goto :goto_18
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 87
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->f:Z

    .line 88
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->g:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->d:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a()V

    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->g:Z

    .line 89
    :cond_11
    return-void
.end method
