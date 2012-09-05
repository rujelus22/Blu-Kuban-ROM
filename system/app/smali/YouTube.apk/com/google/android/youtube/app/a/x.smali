.class public Lcom/google/android/youtube/app/a/x;
.super Lcom/google/android/youtube/core/a/d;
.source "SourceFile"


# static fields
.field private static final r:[I


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/content/res/Resources;

.field protected final c:Landroid/view/LayoutInflater;

.field protected final d:Lcom/google/android/youtube/app/ui/j;

.field protected final e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final h:Lcom/google/android/youtube/app/b/i;

.field private final i:Ljava/util/concurrent/ConcurrentHashMap;

.field private final j:Ljava/util/HashSet;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Set;

.field private final m:Lcom/google/android/youtube/app/ui/PromoHelper;

.field private final n:I

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/youtube/app/a/x;->r:[I

    return-void

    :array_a
    .array-data 0x4
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/d;-><init>()V

    .line 152
    const-string v0, "activity may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->a:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/google/android/youtube/app/a/x;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    iput-object p3, p0, Lcom/google/android/youtube/app/a/x;->d:Lcom/google/android/youtube/app/ui/j;

    .line 155
    iput-object p4, p0, Lcom/google/android/youtube/app/a/x;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 156
    iput-object p5, p0, Lcom/google/android/youtube/app/a/x;->h:Lcom/google/android/youtube/app/b/i;

    .line 157
    if-lez p6, :cond_65

    const/4 v0, 0x1

    :goto_19
    const-string v2, "modulo may not be < 1"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 158
    iput p6, p0, Lcom/google/android/youtube/app/a/x;->n:I

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->b:Landroid/content/res/Resources;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->c:Landroid/view/LayoutInflater;

    .line 162
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper;

    iget-object v2, p0, Lcom/google/android/youtube/app/a/x;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/app/ui/PromoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->m:Lcom/google/android/youtube/app/ui/PromoHelper;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->j:Ljava/util/HashSet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/x;->l:Ljava/util/Set;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;

    if-eqz v2, :cond_67

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/j;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/a/x;->q:Z

    .line 168
    :goto_64
    return-void

    :cond_65
    move v0, v1

    .line 157
    goto :goto_19

    .line 167
    :cond_67
    iput-boolean v1, p0, Lcom/google/android/youtube/app/a/x;->q:Z

    goto :goto_64
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/a/x;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string v0, "contextualMenu may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/google/android/youtube/app/a/x;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/b/i;)Lcom/google/android/youtube/app/a/x;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "contextualMenu may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "prefetchStore may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/google/android/youtube/app/a/x;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/google/android/youtube/app/a/x;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v0, "videoSources may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/android/youtube/app/a/x;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;I)Lcom/google/android/youtube/app/a/x;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    const-string v0, "videoSources may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/google/android/youtube/app/a/x;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/b/i;)Lcom/google/android/youtube/app/a/x;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v0, "videoSources may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "prefetchStore may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/google/android/youtube/app/a/x;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/android/youtube/app/a/x;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/a/x;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/b/i;I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    invoke-super {p0}, Lcom/google/android/youtube/core/a/d;->a()V

    .line 204
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 183
    if-eqz p1, :cond_10

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->j:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/d;->c(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/x;->notifyDataSetChanged()V

    .line 213
    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/plus1/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-virtual {v0, p2}, Lcom/google/android/plus1/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 217
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/x;->notifyDataSetChanged()V

    .line 220
    :cond_1e
    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final b(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 4
    .parameter

    .prologue
    .line 192
    if-eqz p1, :cond_10

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->j:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/d;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/x;->b(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/x;->a(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 236
    invoke-super {p0}, Lcom/google/android/youtube/core/a/d;->getCount()I

    move-result v0

    .line 237
    if-lez v0, :cond_c

    iget v1, p0, Lcom/google/android/youtube/app/a/x;->n:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/x;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    .line 246
    const/4 p2, 0x0

    .line 263
    :cond_7
    :goto_7
    return-object p2

    .line 248
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/x;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 250
    if-nez p2, :cond_222

    .line 251
    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f040056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 252
    new-instance v1, Lcom/google/android/youtube/app/a/z;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/a/z;-><init>(Landroid/view/View;)V

    .line 253
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 258
    :goto_23
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_2e

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_39

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_4b

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->c:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_22b

    const/4 v1, 0x0

    :goto_48
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4b
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v1, v3, :cond_5d

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v1, v3, :cond_22f

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-eqz v1, :cond_22f

    :cond_5d
    const/4 v1, 0x1

    move v3, v1

    :goto_5f
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_8e

    if-eqz v3, :cond_262

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->d:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_233

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/y;

    :goto_7b
    if-eqz v1, :cond_236

    iget-object v4, v2, Lcom/google/android/youtube/app/a/z;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/x;->b:Landroid/content/res/Resources;

    iget v1, v1, Lcom/google/android/youtube/app/a/y;->a:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8e
    :goto_8e
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_9b

    iget-object v4, v2, Lcom/google/android/youtube/app/a/z;->f:Landroid/widget/ImageView;

    if-eqz v3, :cond_27b

    const/16 v1, 0x8

    :goto_98
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9b
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_bb

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_27e

    if-eqz v1, :cond_27e

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/a/x;->b(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_27e

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->e:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/a/x;->d(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_bb
    :goto_bb
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_ca

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->g:Landroid/widget/TextView;

    iget v3, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ca
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_d8

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->h:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-eqz v1, :cond_291

    const/4 v1, 0x0

    :goto_d5
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d8
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_e6

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->i:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    if-eqz v1, :cond_295

    const/4 v1, 0x0

    :goto_e3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    :cond_e6
    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v1, :cond_2b6

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_111

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_299

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    const v3, 0x7f0200d1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_111
    :goto_111
    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->d:Lcom/google/android/youtube/app/ui/j;

    if-eqz v1, :cond_2c3

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->p:Landroid/widget/ImageView;

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->d:Lcom/google/android/youtube/app/ui/j;

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/youtube/app/ui/j;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->p:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :cond_126
    :goto_126
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->j:Landroid/widget/ImageView;

    if-eqz v1, :cond_14c

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->j:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d0

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->j:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->j:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/google/android/youtube/app/a/x;->o:Z

    if-nez v1, :cond_14c

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->m:Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/PromoHelper;->e()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/app/a/x;->o:Z

    :cond_14c
    :goto_14c
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_16c

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v1, :cond_2d9

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->k:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->k:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/google/android/youtube/app/a/x;->p:Z

    if-nez v1, :cond_16c

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->m:Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/PromoHelper;->f()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/app/a/x;->p:Z

    :cond_16c
    :goto_16c
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_184

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    if-eqz v1, :cond_2e2

    iget-boolean v1, p0, Lcom/google/android/youtube/app/a/x;->q:Z

    if-eqz v1, :cond_2e2

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_184
    :goto_184
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_1c9

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/a/x;->h:Lcom/google/android/youtube/app/b/i;

    if-eqz v3, :cond_1c1

    iget-object v3, p0, Lcom/google/android/youtube/app/a/x;->h:Lcom/google/android/youtube/app/b/i;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/b/i;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    iget-object v3, p0, Lcom/google/android/youtube/app/a/x;->h:Lcom/google/android/youtube/app/b/i;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/b/i;->c(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/a/x;->h:Lcom/google/android/youtube/app/b/i;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/b/i;->c()Z

    move-result v4

    if-nez v4, :cond_1ab

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1c1

    :cond_1ab
    int-to-double v3, v3

    const-wide/high16 v5, 0x4059

    sget-object v1, Lcom/google/android/youtube/app/a/x;->r:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v7, v1

    div-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-int v1, v3

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->m:Landroid/widget/ImageView;

    sget-object v4, Lcom/google/android/youtube/app/a/x;->r:[I

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    :cond_1c1
    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_2eb

    const/4 v1, 0x0

    :goto_1c6
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    :cond_1c9
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/u;

    if-eqz v1, :cond_2f3

    iget-object v3, v1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1ed

    iget-object v3, v1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    if-eqz v3, :cond_2f3

    iget-object v3, v1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f3

    :cond_1ed
    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->n:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/a/x;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/x;->k:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-static {v4, v0}, Lcom/google/android/youtube/plus1/h;->b(Landroid/content/Context;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/google/android/youtube/app/a/z;->n:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2ee

    const v0, 0x7f020092

    :goto_20f
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, v2, Lcom/google/android/youtube/app/a/z;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/google/android/youtube/app/a/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto/16 :goto_7

    .line 255
    :cond_222
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/z;

    move-object v2, v1

    goto/16 :goto_23

    .line 258
    :cond_22b
    const/16 v1, 0x8

    goto/16 :goto_48

    :cond_22f
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_5f

    :cond_233
    const/4 v1, 0x0

    goto/16 :goto_7b

    :cond_236
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/google/android/youtube/app/a/x;->b:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lcom/google/android/youtube/core/utils/r;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/google/android/youtube/app/a/z;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/x;->b:Landroid/content/res/Resources;

    const v6, 0x7f0a0162

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v1, :cond_25f

    :goto_24b
    aput-object v1, v7, v8

    const/4 v1, 0x1

    iget v8, v0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_25f
    const-string v1, ""

    goto :goto_24b

    :cond_262
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->d:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/a/x;->b:Landroid/content/res/Resources;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v5, v5, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_27b
    const/4 v1, 0x0

    goto/16 :goto_98

    :cond_27e
    if-eqz v3, :cond_bb

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->e:Landroid/widget/ImageView;

    const v3, 0x7f020089

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_bb

    :cond_291
    const/16 v1, 0x8

    goto/16 :goto_d5

    :cond_295
    const/16 v1, 0x8

    goto/16 :goto_e3

    .line 259
    :cond_299
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_111

    iget-object v1, p0, Lcom/google/android/youtube/app/a/x;->e:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a()V

    goto/16 :goto_111

    :cond_2b6
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_111

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->o:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_111

    :cond_2c3
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->p:Landroid/widget/ImageView;

    if-eqz v1, :cond_126

    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->p:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_126

    .line 260
    :cond_2d0
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->j:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14c

    :cond_2d9
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->k:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_16c

    :cond_2e2
    iget-object v1, v2, Lcom/google/android/youtube/app/a/z;->l:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_184

    :cond_2eb
    const/4 v1, 0x4

    goto/16 :goto_1c6

    .line 261
    :cond_2ee
    const v0, 0x7f020091

    goto/16 :goto_20f

    :cond_2f3
    iget-object v0, v2, Lcom/google/android/youtube/app/a/z;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/google/android/youtube/app/a/z;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v2, Lcom/google/android/youtube/app/a/z;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_7
.end method
