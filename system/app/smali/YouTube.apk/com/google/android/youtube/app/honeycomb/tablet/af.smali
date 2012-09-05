.class public final Lcom/google/android/youtube/app/honeycomb/tablet/af;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/ui/u;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/core/e;

.field private i:Lcom/google/android/youtube/app/ae;

.field private j:Lcom/google/android/youtube/app/honeycomb/ui/q;

.field private k:Landroid/app/Dialog;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v5, "yt_upload"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->h:Lcom/google/android/youtube/core/e;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/af;)Lcom/google/android/youtube/app/honeycomb/ui/q;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->j:Lcom/google/android/youtube/app/honeycomb/ui/q;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/af;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, -0x1

    return v0
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->j:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/view/Menu;)Z

    .line 109
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/client/l;

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/q;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->h:Lcom/google/android/youtube/core/e;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/ui/q;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/app/honeycomb/ui/u;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->j:Lcom/google/android/youtube/app/honeycomb/ui/q;

    .line 62
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->k:Landroid/app/Dialog;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->k:Landroid/app/Dialog;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->k:Landroid/app/Dialog;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->i:Lcom/google/android/youtube/app/ae;

    .line 73
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->j:Lcom/google/android/youtube/app/honeycomb/ui/q;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 114
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    const-string v0, "Error authenticating"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->h:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 120
    return-void
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->j:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_9

    .line 91
    :goto_8
    return-object v0

    .line 86
    :cond_9
    packed-switch p1, :pswitch_data_18

    .line 91
    const/4 v0, 0x0

    goto :goto_8

    .line 88
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 86
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->d:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->d()V

    .line 103
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 124
    return-void
.end method

.method public final g_()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->d:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->d()V

    .line 98
    return-void
.end method

.method protected final h_()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->j:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a()V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 138
    return-void
.end method

.method protected final i_()V
    .registers 5

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->e:Lcom/google/android/youtube/app/aa;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->g:Landroid/app/Activity;

    const v2, 0x7f0a014e

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->i:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->e()Z

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 131
    return-void
.end method
