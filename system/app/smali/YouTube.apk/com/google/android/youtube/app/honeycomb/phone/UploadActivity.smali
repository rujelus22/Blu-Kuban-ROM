.class public Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/ui/q;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private m:Lcom/google/android/youtube/app/g;

.field private n:Lcom/google/android/youtube/app/k;

.field private o:Lcom/google/android/youtube/app/honeycomb/ui/m;

.field private p:Lcom/google/android/youtube/core/d;

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->q:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->r:Z

    if-nez v0, :cond_1a

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->o:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->r:Z

    .line 71
    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 89
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->i()V

    .line 90
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    const-string v0, "Error authenticating"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->p:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 96
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->o:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const-string v0, "yt_upload"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 100
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->d()V

    .line 118
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->finish()V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->d()V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->setContentView(Landroid/view/View;)V

    .line 42
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->e(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 45
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v3

    .line 47
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->p:Lcom/google/android/youtube/core/d;

    .line 49
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/m;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->p:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/ui/m;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/app/honeycomb/ui/q;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->o:Lcom/google/android/youtube/app/honeycomb/ui/m;

    .line 50
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/app/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->m:Lcom/google/android/youtube/app/g;

    .line 51
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->n:Lcom/google/android/youtube/app/k;

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->o:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->q:Z

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_19

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->m:Lcom/google/android/youtube/app/g;

    const v1, 0x7f0b019c

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->n:Lcom/google/android/youtube/app/k;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->e()Z

    move-result v2

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    .line 64
    :goto_18
    return-void

    .line 62
    :cond_19
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->i()V

    goto :goto_18
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 83
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->q:Z

    .line 84
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->r:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->o:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a()V

    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/UploadActivity;->r:Z

    .line 85
    :cond_11
    return-void
.end method
