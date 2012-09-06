.class final Lcom/google/android/youtube/app/adapter/an;
.super Lcom/google/android/youtube/app/adapter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/al;

.field private final b:Lcom/google/android/youtube/core/b/ae;

.field private final c:Lcom/google/android/youtube/core/b/ag;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/al;Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/an;->a:Lcom/google/android/youtube/app/adapter/al;

    .line 141
    const v0, 0x7f080023

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/app/adapter/l;-><init>(Landroid/content/Context;I)V

    .line 142
    const-string v0, "gdataClient cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/an;->b:Lcom/google/android/youtube/core/b/ae;

    .line 143
    const-string v0, "imageClient cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/an;->c:Lcom/google/android/youtube/core/b/ag;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/al;Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/adapter/an;-><init>(Lcom/google/android/youtube/app/adapter/al;Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    move-object v2, p1

    .line 132
    check-cast v2, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/an;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/al;->c(Lcom/google/android/youtube/app/adapter/al;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_69

    iget-object v0, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_3d

    iget-object v0, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    :goto_1f
    move-object v6, v0

    :goto_20
    iget-object v0, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_42

    iget-object v0, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_38

    iget-object v0, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-nez v0, :cond_42

    :cond_38
    const/4 v0, 0x0

    invoke-interface {p3, v6, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3c
    return-void

    :cond_3d
    iget-object v0, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    goto :goto_1f

    :cond_42
    if-eqz v6, :cond_56

    iget-object v7, p0, Lcom/google/android/youtube/app/adapter/an;->c:Lcom/google/android/youtube/core/b/ag;

    new-instance v0, Lcom/google/android/youtube/app/adapter/am;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/an;->a:Lcom/google/android/youtube/app/adapter/al;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/an;->b:Lcom/google/android/youtube/core/b/ae;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/an;->c:Lcom/google/android/youtube/core/b/ag;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/am;-><init>(Lcom/google/android/youtube/app/adapter/al;Lcom/google/android/youtube/core/model/LiveEvent;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v7, v6, v0}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_3c

    :cond_56
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/an;->b:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, v2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/youtube/app/adapter/ap;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/an;->a:Lcom/google/android/youtube/app/adapter/al;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/an;->c:Lcom/google/android/youtube/core/b/ag;

    invoke-direct {v3, v4, v2, v5, p3}, Lcom/google/android/youtube/app/adapter/ap;-><init>(Lcom/google/android/youtube/app/adapter/al;Lcom/google/android/youtube/core/model/LiveEvent;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1, v3}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_3c

    :cond_69
    move-object v6, v0

    goto :goto_20
.end method
