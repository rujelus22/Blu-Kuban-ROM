.class final Lcom/google/android/youtube/app/honeycomb/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/h;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/h;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/k;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/h;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->c(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->d()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 121
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/h;->a(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/utils/l;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/h;->a(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/utils/l;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/utils/l;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_28
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->a(Lcom/google/android/youtube/app/honeycomb/ui/h;Lcom/google/android/youtube/core/model/LiveEvent;)Lcom/google/android/youtube/core/model/LiveEvent;

    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->b(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->b(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->c(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->c()V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->d(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->f(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/h;->e(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v3}, Lcom/google/android/youtube/app/honeycomb/ui/h;->b(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/r;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_7c

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    :goto_74
    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->g(Lcom/google/android/youtube/app/honeycomb/ui/h;)V

    :goto_7b
    return-void

    :cond_7c
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    goto :goto_74

    :cond_7f
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->i(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/client/af;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/h;->h(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/async/g;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/af;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_7b

    :cond_8f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/k;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->c(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->d()V

    goto :goto_7b
.end method
