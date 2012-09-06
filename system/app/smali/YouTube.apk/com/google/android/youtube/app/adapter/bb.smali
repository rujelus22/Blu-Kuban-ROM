.class public final Lcom/google/android/youtube/app/adapter/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/YouTubeApplication;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/db;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    new-instance v10, Lcom/google/android/youtube/app/adapter/bd;

    const v1, 0x7f08003a

    move-object/from16 v0, p7

    invoke-direct {v10, p0, v1, v0}, Lcom/google/android/youtube/app/adapter/bd;-><init>(Landroid/content/Context;ILcom/google/android/youtube/core/b/ag;)V

    .line 347
    new-instance v1, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/YouTubeApplication;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/db;)V

    .line 358
    new-instance v2, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v2}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v2, v10}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/google/android/youtube/app/adapter/ba;

    const v3, 0x7f04001a

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/youtube/app/adapter/ba;

    const v1, 0x7f040027

    new-instance v2, Lcom/google/android/youtube/app/adapter/n;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/n;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 282
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v8, Lcom/google/android/youtube/app/adapter/bp;

    invoke-direct {v8, p0}, Lcom/google/android/youtube/app/adapter/bp;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v9, Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {v9, p0}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-interface/range {p6 .. p6}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/android/youtube/app/adapter/bw;->a(Landroid/graphics/Typeface;)V

    .line 94
    invoke-static {p0, p2, p4}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v10

    .line 98
    new-instance v1, Lcom/google/android/youtube/app/adapter/f;

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/app/adapter/f;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V

    .line 107
    new-instance v2, Lcom/google/android/youtube/app/adapter/bc;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/bc;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    .line 115
    new-instance v3, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v3}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v3, v8}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/google/android/youtube/app/adapter/ba;

    const v3, 0x7f04008b

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 127
    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    const-string v0, "prefetchStore cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/c/g;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/c/g;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v7, Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {v7, p0}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    .line 177
    sget-object v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->SMALL:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    invoke-static {p0, p1, v0}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v8

    .line 180
    new-instance v0, Lcom/google/android/youtube/app/adapter/f;

    invoke-interface {p4, p0}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0xf

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/f;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V

    .line 189
    new-instance v1, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v1}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v1, v7}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    .line 195
    if-eqz p5, :cond_35

    .line 196
    new-instance v1, Lcom/google/android/youtube/app/adapter/au;

    invoke-direct {v1, p0, p5}, Lcom/google/android/youtube/app/adapter/au;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/c/g;)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    .line 201
    :cond_35
    new-instance v1, Lcom/google/android/youtube/app/adapter/ba;

    const v2, 0x7f040028

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 205
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    const-string v0, "prefetchStore cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static/range {p0 .. p5}, Lcom/google/android/youtube/app/adapter/bb;->b(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/c/g;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/c/g;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    const-string v0, "plusOneClient cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/c/g;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/bb;->b(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    new-instance v7, Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {v7, p0}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-interface {p6}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/youtube/app/adapter/bw;->a(Landroid/graphics/Typeface;)V

    .line 378
    invoke-static {p0, p2, p4}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v8

    .line 382
    new-instance v0, Lcom/google/android/youtube/app/adapter/f;

    invoke-interface {p6, p0}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/f;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V

    .line 391
    new-instance v1, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v1}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v1, v7}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    .line 397
    new-instance v1, Lcom/google/android/youtube/app/adapter/ah;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/app/adapter/ah;-><init>(Landroid/content/res/Resources;Lcom/google/android/youtube/app/adapter/bf;)V

    .line 400
    new-instance v0, Lcom/google/android/youtube/app/adapter/be;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/be;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    .line 408
    new-instance v2, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v2}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/google/android/youtube/app/adapter/ba;

    const v2, 0x7f040088

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 416
    return-object v1
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    new-instance v7, Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {v7, p0}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    .line 243
    sget-object v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->SMALL:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    invoke-static {p0, p1, v0}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v8

    .line 246
    new-instance v0, Lcom/google/android/youtube/app/adapter/f;

    invoke-interface {p4, p0}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0xf

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/f;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V

    .line 255
    new-instance v1, Lcom/google/android/youtube/app/adapter/ad;

    invoke-direct {v1, p5}, Lcom/google/android/youtube/app/adapter/ad;-><init>(Lcom/google/android/youtube/app/ui/p;)V

    .line 258
    new-instance v2, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v2}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v2, v7}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/google/android/youtube/app/adapter/ba;

    const v2, 0x7f040028

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 269
    return-object v1
.end method
