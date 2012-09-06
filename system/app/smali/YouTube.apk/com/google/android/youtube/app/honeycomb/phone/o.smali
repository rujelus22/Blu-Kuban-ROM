.class public final Lcom/google/android/youtube/app/honeycomb/phone/o;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/core/b/ae;

.field private final f:Lcom/google/android/youtube/core/b/ag;

.field private final g:Lcom/google/android/youtube/app/a;

.field private final h:Landroid/view/View;

.field private final i:Lcom/google/android/youtube/core/ui/PagedGridView;

.field private final j:Lcom/google/android/youtube/core/ui/j;

.field private final k:Lcom/google/android/youtube/app/adapter/ba;

.field private final l:Lcom/google/android/youtube/core/d;

.field private final m:Lcom/google/android/youtube/core/Analytics;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/ui/db;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->b:Landroid/view/LayoutInflater;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->c:Landroid/content/res/Resources;

    .line 52
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->b:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_87

    const v0, 0x7f040071

    move v1, v0

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/o;->n()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->h:Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 57
    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->e:Lcom/google/android/youtube/core/b/ae;

    .line 58
    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->g:Lcom/google/android/youtube/app/a;

    .line 60
    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->f:Lcom/google/android/youtube/core/b/ag;

    .line 61
    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->l:Lcom/google/android/youtube/core/d;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->m:Lcom/google/android/youtube/core/Analytics;

    .line 64
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->m:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->e:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->g:Lcom/google/android/youtube/app/a;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->l:Lcom/google/android/youtube/core/d;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->f:Lcom/google/android/youtube/core/b/ag;

    move-object v0, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/YouTubeApplication;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/db;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->k:Lcom/google/android/youtube/app/adapter/ba;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->h:Landroid/view/View;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->i:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 78
    new-instance v0, Lcom/google/android/youtube/core/ui/j;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->i:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->k:Lcom/google/android/youtube/app/adapter/ba;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->e:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->e()Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->l:Lcom/google/android/youtube/core/d;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->j:Lcom/google/android/youtube/core/ui/j;

    .line 84
    return-void

    .line 52
    :cond_87
    const v0, 0x7f04001b

    move v1, v0

    goto :goto_1b
.end method

.method private l()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->i:Lcom/google/android/youtube/core/ui/PagedGridView;

    if-eqz v0, :cond_12

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->i:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->c:Landroid/content/res/Resources;

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->setNumColumns(I)V

    .line 120
    :cond_12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/o;->l()V

    .line 114
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->j:Lcom/google/android/youtube/core/ui/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->e:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 101
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->c()V

    .line 89
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/o;->l()V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 91
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/o;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v1, 0x7f0b015e

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method
