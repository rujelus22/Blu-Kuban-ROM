.class final Lcom/google/android/youtube/app/honeycomb/phone/bx;
.super Lcom/google/android/youtube/app/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/bw;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bw;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/e;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/e;->a()V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->a(Lcom/google/android/youtube/app/honeycomb/phone/bw;Z)Z

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c(Lcom/google/android/youtube/app/honeycomb/phone/bw;)V

    .line 170
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/e;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->a(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/core/ui/PagedListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->b(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Event;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 182
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_29

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->e(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 184
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    if-ne v0, v1, :cond_2a

    sget-object v0, Lcom/google/android/youtube/app/m;->a:Lcom/google/android/youtube/core/b/aj;

    .line 187
    :goto_1d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->f(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/a;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 192
    :cond_29
    :goto_29
    return-void

    .line 184
    :cond_2a
    sget-object v0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/core/b/aj;

    goto :goto_1d

    .line 190
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->f(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/a;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public final a(Lcom/google/android/youtube/core/model/Event;)Z
    .registers 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a:Lcom/google/android/youtube/app/honeycomb/phone/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->d(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/ui/av;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/av;->a(Lcom/google/android/youtube/core/model/Event;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 154
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/bx;->a(Lcom/google/android/youtube/core/model/Event;)Z

    move-result v0

    return v0
.end method
