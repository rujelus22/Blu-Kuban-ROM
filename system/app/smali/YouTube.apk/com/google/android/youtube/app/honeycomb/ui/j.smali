.class final Lcom/google/android/youtube/app/honeycomb/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/h;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/h;)V
    .registers 3
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/j;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/h;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->e(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1f

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->l(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->b(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE_TEASER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V

    .line 206
    :cond_1e
    :goto_1e
    return-void

    .line 203
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->m(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->l(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->k()V

    goto :goto_1e
.end method
