.class final Lcom/google/android/youtube/app/honeycomb/phone/l;
.super Lcom/google/android/youtube/app/ui/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/k;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/k;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

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
.method public final a(Lcom/google/android/youtube/core/model/Event;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 229
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_29

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 231
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    if-ne v0, v1, :cond_2a

    sget-object v0, Lcom/google/android/youtube/app/m;->c:Lcom/google/android/youtube/core/b/aj;

    .line 234
    :goto_1d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->b(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/a;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 239
    :cond_29
    :goto_29
    return-void

    .line 231
    :cond_2a
    sget-object v0, Lcom/google/android/youtube/app/m;->d:Lcom/google/android/youtube/core/b/aj;

    goto :goto_1d

    .line 237
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/l;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->b(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/a;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;)V

    goto :goto_29
.end method
