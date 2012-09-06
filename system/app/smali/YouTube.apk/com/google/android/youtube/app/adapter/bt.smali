.class public Lcom/google/android/youtube/app/adapter/bt;
.super Lcom/google/android/youtube/core/a/d;
.source "SourceFile"


# static fields
.field protected static final f:I


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/content/res/Resources;

.field protected final c:Landroid/view/LayoutInflater;

.field protected final d:Lcom/google/android/youtube/app/ui/p;

.field protected final e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final i:Lcom/google/android/youtube/app/prefetch/d;

.field private final j:Ljava/util/concurrent/ConcurrentHashMap;

.field private final k:Ljava/util/HashSet;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Set;

.field private final n:I

.field private o:Z

.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 151
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f040079

    :goto_9
    sput v0, Lcom/google/android/youtube/app/adapter/bt;->f:I

    return-void

    :cond_c
    const v0, 0x7f04009a

    goto :goto_9
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/prefetch/d;II)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/d;-><init>()V

    .line 164
    const-string v0, "activity may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->a:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/bt;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/bt;->d:Lcom/google/android/youtube/app/ui/p;

    .line 167
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/bt;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    .line 169
    iput p7, p0, Lcom/google/android/youtube/app/adapter/bt;->p:I

    .line 170
    if-lez p6, :cond_5f

    const/4 v0, 0x1

    :goto_1c
    const-string v2, "modulo may not be < 1"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 171
    iput p6, p0, Lcom/google/android/youtube/app/adapter/bt;->n:I

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->b:Landroid/content/res/Resources;

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->c:Landroid/view/LayoutInflater;

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->k:Ljava/util/HashSet;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->m:Ljava/util/Set;

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;

    if-eqz v2, :cond_61

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/j;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/bt;->o:Z

    .line 180
    :goto_5e
    return-void

    :cond_5f
    move v0, v1

    .line 170
    goto :goto_1c

    .line 179
    :cond_61
    iput-boolean v1, p0, Lcom/google/android/youtube/app/adapter/bt;->o:Z

    goto :goto_5e
.end method

.method public static a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;I)Lcom/google/android/youtube/app/adapter/bt;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v0, "videoSources may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/google/android/youtube/app/adapter/bt;

    sget v7, Lcom/google/android/youtube/app/adapter/bt;->f:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/adapter/bt;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/prefetch/d;II)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/android/youtube/app/adapter/bt;

    const/4 v6, 0x1

    sget v7, Lcom/google/android/youtube/app/adapter/bt;->f:I

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/adapter/bt;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/prefetch/d;II)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    invoke-super {p0}, Lcom/google/android/youtube/core/a/d;->a()V

    .line 216
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_10

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->k:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/d;->b(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/bt;->notifyDataSetChanged()V

    .line 225
    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/plus1/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-virtual {v0, p2}, Lcom/google/android/plus1/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 229
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/bt;->notifyDataSetChanged()V

    .line 232
    :cond_1e
    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/bt;->a(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->k:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/d;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/android/youtube/core/a/d;->getCount()I

    move-result v0

    .line 249
    if-lez v0, :cond_c

    iget v1, p0, Lcom/google/android/youtube/app/adapter/bt;->n:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/bt;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_e

    move-object p2, v7

    .line 275
    :cond_d
    :goto_d
    return-object p2

    .line 260
    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/bt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 262
    if-nez p2, :cond_1ef

    .line 263
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->c:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/google/android/youtube/app/adapter/bt;->p:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 264
    new-instance v1, Lcom/google/android/youtube/app/adapter/bv;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/adapter/bv;-><init>(Landroid/view/View;)V

    .line 265
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 270
    :goto_27
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_32

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->a:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_3d

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3d
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_4f

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->c:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    move v1, v3

    :goto_4c
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4f
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v5, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v1, v5, :cond_61

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v5, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v1, v5, :cond_1fb

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-eqz v1, :cond_1fb

    :cond_61
    move v5, v6

    :goto_62
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_90

    if-eqz v5, :cond_22a

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->d:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1fe

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/bu;

    :goto_7d
    if-eqz v1, :cond_201

    iget-object v7, v2, Lcom/google/android/youtube/app/adapter/bv;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/youtube/app/adapter/bt;->b:Landroid/content/res/Resources;

    iget v1, v1, Lcom/google/android/youtube/app/adapter/bu;->a:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_90
    :goto_90
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_9c

    iget-object v7, v2, Lcom/google/android/youtube/app/adapter/bv;->f:Landroid/widget/ImageView;

    if-eqz v5, :cond_242

    move v1, v4

    :goto_99
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9c
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_bc

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v5, :cond_245

    if-eqz v1, :cond_245

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_245

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->e:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/adapter/bt;->d(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_bc
    :goto_bc
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_cb

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->g:Landroid/widget/TextView;

    iget v5, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_cb
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_d9

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->h:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-eqz v1, :cond_258

    move v1, v3

    :goto_d6
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d9
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_e7

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->i:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    if-eqz v1, :cond_25b

    move v1, v3

    :goto_e4
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :cond_e7
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v1, :cond_27a

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_110

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v0}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->m:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25e

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    const v5, 0x7f02012d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_110
    :goto_110
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->d:Lcom/google/android/youtube/app/ui/p;

    if-eqz v1, :cond_285

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->p:Landroid/widget/ImageView;

    if-eqz v1, :cond_124

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->d:Lcom/google/android/youtube/app/ui/p;

    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v0}, Lcom/google/android/youtube/app/ui/p;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    :cond_124
    :goto_124
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->j:Landroid/widget/ImageView;

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->k:Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_290

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13c
    :goto_13c
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_14e

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v1, :cond_297

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14e
    :goto_14e
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_164

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    if-eqz v1, :cond_29e

    iget-boolean v1, p0, Lcom/google/android/youtube/app/adapter/bt;->o:Z

    if-eqz v1, :cond_29e

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_164
    :goto_164
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_19a

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    if-eqz v1, :cond_2c3

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/youtube/app/prefetch/d;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v1

    if-eqz v1, :cond_2c3

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v1, v5, :cond_2c3

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v1, v5, :cond_186

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/bt;->i:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/prefetch/d;->c()Z

    move-result v5

    if-eqz v5, :cond_2c3

    :cond_186
    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->m:Landroid/widget/ImageView;

    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v1, v7, :cond_2a5

    const v1, 0x7f0200df

    :goto_18f
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_192
    iget-object v5, v2, Lcom/google/android/youtube/app/adapter/bv;->m:Landroid/widget/ImageView;

    if-eqz v6, :cond_2aa

    move v1, v3

    :goto_197
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :cond_19a
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/u;

    if-eqz v1, :cond_2b2

    iget-object v5, v1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1be

    iget-object v5, v1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    if-eqz v5, :cond_2b2

    iget-object v5, v1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2b2

    :cond_1be
    iget-object v4, v2, Lcom/google/android/youtube/app/adapter/bv;->n:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/bt;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/youtube/app/adapter/bt;->l:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-static {v5, v0}, Lcom/google/android/youtube/plus1/c;->b(Landroid/content/Context;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/google/android/youtube/app/adapter/bv;->n:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2ad

    const v0, 0x7f0200da

    :goto_1e0
    invoke-virtual {v4, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, v2, Lcom/google/android/youtube/app/adapter/bv;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/google/android/youtube/app/adapter/bv;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto/16 :goto_d

    .line 267
    :cond_1ef
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/bv;

    move-object v2, v1

    goto/16 :goto_27

    :cond_1f8
    move v1, v4

    .line 270
    goto/16 :goto_4c

    :cond_1fb
    move v5, v3

    goto/16 :goto_62

    :cond_1fe
    move-object v1, v7

    goto/16 :goto_7d

    :cond_201
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/app/adapter/bt;->b:Landroid/content/res/Resources;

    invoke-static {v1, v7}, Lcom/google/android/youtube/core/utils/ac;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, v2, Lcom/google/android/youtube/app/adapter/bv;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/youtube/app/adapter/bt;->b:Landroid/content/res/Resources;

    const v9, 0x7f0b01bc

    new-array v10, v11, [Ljava/lang/Object;

    if-eqz v1, :cond_227

    :goto_214
    aput-object v1, v10, v3

    iget v1, v0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_90

    :cond_227
    const-string v1, ""

    goto :goto_214

    :cond_22a
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->d:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->d:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/youtube/app/adapter/bt;->b:Landroid/content/res/Resources;

    iget-object v8, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v8, v8, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_90

    :cond_242
    move v1, v3

    goto/16 :goto_99

    :cond_245
    if-eqz v5, :cond_bc

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->e:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->e:Landroid/widget/ImageView;

    const v5, 0x7f0200d0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_bc

    :cond_258
    move v1, v4

    goto/16 :goto_d6

    :cond_25b
    move v1, v4

    goto/16 :goto_e4

    .line 271
    :cond_25e
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    const v5, 0x7f0200cc

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_110

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bt;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a()V

    goto/16 :goto_110

    :cond_27a
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_110

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_110

    :cond_285
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->p:Landroid/widget/ImageView;

    if-eqz v1, :cond_124

    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_124

    .line 272
    :cond_290
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_13c

    :cond_297
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14e

    :cond_29e
    iget-object v1, v2, Lcom/google/android/youtube/app/adapter/bv;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_164

    :cond_2a5
    const v1, 0x7f0200e1

    goto/16 :goto_18f

    :cond_2aa
    const/4 v1, 0x4

    goto/16 :goto_197

    .line 273
    :cond_2ad
    const v0, 0x7f0200d9

    goto/16 :goto_1e0

    :cond_2b2
    iget-object v0, v2, Lcom/google/android/youtube/app/adapter/bv;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/google/android/youtube/app/adapter/bv;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v2, Lcom/google/android/youtube/app/adapter/bv;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_d

    :cond_2c3
    move v6, v3

    goto/16 :goto_192
.end method
