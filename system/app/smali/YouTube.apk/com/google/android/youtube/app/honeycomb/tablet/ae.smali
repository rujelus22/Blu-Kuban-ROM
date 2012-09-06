.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ae;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/ui/q;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final a:Lcom/google/android/youtube/core/d;

.field private h:Lcom/google/android/youtube/app/k;

.field private i:Lcom/google/android/youtube/app/honeycomb/ui/m;

.field private j:Landroid/app/Dialog;

.field private k:Landroid/view/View;

.field private final l:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v5, "yt_upload"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Lcom/google/android/youtube/core/d;

    .line 45
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->k:Landroid/view/View;

    .line 46
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    const v1, 0x7f0b0145

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 49
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/af;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/af;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ae;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ae;)Lcom/google/android/youtube/app/honeycomb/ui/m;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->i:Lcom/google/android/youtube/app/honeycomb/ui/m;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/ae;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->i:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/view/Menu;)Z

    .line 101
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/b/j;

    .line 63
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/m;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->k:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Lcom/google/android/youtube/core/d;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/ui/m;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/app/honeycomb/ui/q;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->i:Lcom/google/android/youtube/app/honeycomb/ui/m;

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->h:Lcom/google/android/youtube/app/k;

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 74
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->i:Lcom/google/android/youtube/app/honeycomb/ui/m;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    const-string v0, "Error authenticating"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 112
    return-void
.end method

.method protected final b()V
    .registers 5

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->e:Lcom/google/android/youtube/app/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    const v2, 0x7f0b019c

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->h:Lcom/google/android/youtube/app/k;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/k;->e()Z

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    .line 124
    return-void
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->i:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->i:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a()V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 117
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->d:Lcom/google/android/youtube/app/a;

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->d()V

    .line 89
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->d:Lcom/google/android/youtube/app/a;

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->d()V

    .line 95
    return-void
.end method
