.class public Lcom/google/android/youtube/app/honeycomb/ui/d;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/youtube/app/a;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private final h:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final i:Lcom/google/android/youtube/core/b/aj;

.field private final j:Lcom/google/android/youtube/app/honeycomb/ui/b;

.field private final k:Lcom/google/android/youtube/core/b/ae;

.field private final l:Lcom/google/android/youtube/core/b/ag;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;)V
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
    .line 73
    invoke-interface {p5}, Lcom/google/android/youtube/core/b/ae;->t()Lcom/google/android/youtube/core/async/ar;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 74
    const-string v1, "navigation may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->a:Lcom/google/android/youtube/app/a;

    .line 75
    const-string v1, "analytics may not be null"

    invoke-static {p8, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->b:Lcom/google/android/youtube/core/Analytics;

    .line 76
    iput-object p4, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Lcom/google/android/youtube/app/honeycomb/ui/b;

    .line 77
    const-string v1, "gdataClient may not be null"

    invoke-static {p5, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ae;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->k:Lcom/google/android/youtube/core/b/ae;

    .line 78
    const-string v1, "imageClient may not be null"

    invoke-static {p7, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ag;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->l:Lcom/google/android/youtube/core/b/ag;

    .line 79
    invoke-interface {p3, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    const-string v1, "logCategory may not be null"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->h:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 81
    const-string v1, "referrer may not be null"

    move-object/from16 v0, p10

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/aj;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->i:Lcom/google/android/youtube/core/b/aj;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->m:Ljava/util/Map;

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->n:Ljava/util/Map;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/app/honeycomb/ui/b;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Lcom/google/android/youtube/app/honeycomb/ui/b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/d;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->b(Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->m:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 6
    .parameter

    .prologue
    .line 123
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/e;

    .line 126
    if-eqz v0, :cond_14

    .line 129
    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/ui/e;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_13
    return-void

    .line 131
    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/f;

    .line 132
    if-nez v0, :cond_34

    .line 133
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/f;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/ui/f;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Ljava/lang/String;Lcom/google/android/youtube/core/model/LiveEvent;)V

    .line 134
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->m:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->c:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/google/android/youtube/core/b/ae;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_13

    .line 137
    :cond_34
    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/ui/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/ui/d;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->l:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 108
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->j:Lcom/google/android/youtube/app/honeycomb/ui/b;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/net/Uri;)V

    .line 109
    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-nez v2, :cond_21

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->b(Lcom/google/android/youtube/core/model/LiveEvent;)V

    goto :goto_4

    .line 112
    :cond_21
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->l:Lcom/google/android/youtube/core/b/ag;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->c:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/honeycomb/ui/g;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/g;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Lcom/google/android/youtube/core/model/LiveEvent;)V

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_4

    .line 115
    :cond_36
    return-void
.end method

.method public a(Lcom/google/android/youtube/core/model/LiveEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 43
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
    .line 93
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 94
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 95
    if-eqz v0, :cond_1f

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->b:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->h:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->a:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/d;->i:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 99
    :cond_1f
    return-void
.end method
