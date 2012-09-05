.class public Lcom/google/android/youtube/app/honeycomb/ui/d;
.super Lcom/google/android/youtube/core/ui/k;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/app/o;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final f:Lcom/google/android/youtube/core/client/al;

.field private final g:Lcom/google/android/youtube/app/honeycomb/ui/b;

.field private final h:Lcom/google/android/youtube/core/client/ad;

.field private final i:Lcom/google/android/youtube/core/client/af;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;)V
    .registers 18
    .parameter
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
    .line 70
    invoke-interface {p5}, Lcom/google/android/youtube/core/client/ad;->r()Lcom/google/android/youtube/core/async/ad;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    .line 71
    const-string v1, "navigation may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/o;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->a:Lcom/google/android/youtube/app/o;

    .line 72
    const-string v1, "analytics may not be null"

    invoke-static {p8, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->b:Lcom/google/android/youtube/core/Analytics;

    .line 73
    iput-object p4, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->g:Lcom/google/android/youtube/app/honeycomb/ui/b;

    .line 74
    const-string v1, "gdataClient may not be null"

    invoke-static {p5, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/ad;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->h:Lcom/google/android/youtube/core/client/ad;

    .line 75
    const-string v1, "imageClient may not be null"

    invoke-static {p7, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/af;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->i:Lcom/google/android/youtube/core/client/af;

    .line 76
    invoke-interface {p3, p0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    const-string v1, "logCategory may not be null"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->e:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 78
    const-string v1, "referrer may not be null"

    move-object/from16 v0, p10

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/al;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->f:Lcom/google/android/youtube/core/client/al;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Ljava/util/Map;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->k:Ljava/util/Map;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/app/honeycomb/ui/b;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->g:Lcom/google/android/youtube/app/honeycomb/ui/b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/d;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->b(Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 6
    .parameter

    .prologue
    .line 120
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/e;

    .line 123
    if-eqz v0, :cond_14

    .line 126
    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/ui/e;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_13
    return-void

    .line 128
    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/f;

    .line 129
    if-nez v0, :cond_34

    .line 130
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/f;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/ui/f;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Ljava/lang/String;Lcom/google/android/youtube/core/model/LiveEvent;)V

    .line 131
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->h:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->c:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_13

    .line 134
    :cond_34
    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/ui/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/ui/d;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->i:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 105
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->g:Lcom/google/android/youtube/app/honeycomb/ui/b;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/net/Uri;)V

    .line 106
    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-nez v2, :cond_21

    .line 107
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->b(Lcom/google/android/youtube/core/model/LiveEvent;)V

    goto :goto_4

    .line 109
    :cond_21
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->i:Lcom/google/android/youtube/core/client/af;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->c:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/honeycomb/ui/g;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/g;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Lcom/google/android/youtube/core/model/LiveEvent;)V

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/client/af;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_4

    .line 112
    :cond_36
    return-void
.end method

.method public a(Lcom/google/android/youtube/core/model/LiveEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a(Lcom/google/android/youtube/core/model/LiveEvent;)Z

    move-result v0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 91
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 92
    if-eqz v0, :cond_1f

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->b:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->e:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->a:Lcom/google/android/youtube/app/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->f:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V

    .line 96
    :cond_1f
    return-void
.end method
