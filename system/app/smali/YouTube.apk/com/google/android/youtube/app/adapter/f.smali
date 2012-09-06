.class public final Lcom/google/android/youtube/app/adapter/f;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/youtube/core/b/ai;

.field private final d:Ljava/util/Set;

.field private final e:Lcom/google/android/youtube/core/async/l;

.field private final f:Lcom/google/android/youtube/app/prefetch/d;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->a:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/f;->c:Lcom/google/android/youtube/core/b/ai;

    .line 70
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/f;->f:Lcom/google/android/youtube/app/prefetch/d;

    .line 71
    iput-boolean p4, p0, Lcom/google/android/youtube/app/adapter/f;->g:Z

    .line 72
    if-eqz p5, :cond_57

    move v0, v1

    :goto_1a
    const-string v3, "Omit this renderer all together instead of using it with no badges"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 74
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_59

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->i:Z

    .line 75
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->j:Z

    .line 76
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_32
    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->k:Z

    .line 77
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_5f

    :goto_38
    iput-boolean v1, p0, Lcom/google/android/youtube/app/adapter/f;->l:Z

    .line 78
    iput-boolean p6, p0, Lcom/google/android/youtube/app/adapter/f;->h:Z

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->b:Ljava/util/List;

    .line 81
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->k:Z

    if-eqz v0, :cond_61

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->d:Ljava/util/Set;

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->a:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->e:Lcom/google/android/youtube/core/async/l;

    .line 88
    :goto_56
    return-void

    :cond_57
    move v0, v2

    .line 72
    goto :goto_1a

    :cond_59
    move v0, v2

    .line 74
    goto :goto_24

    :cond_5b
    move v0, v2

    .line 75
    goto :goto_2b

    :cond_5d
    move v0, v2

    .line 76
    goto :goto_32

    :cond_5f
    move v1, v2

    .line 77
    goto :goto_38

    .line 85
    :cond_61
    iput-object v4, p0, Lcom/google/android/youtube/app/adapter/f;->d:Ljava/util/Set;

    .line 86
    iput-object v4, p0, Lcom/google/android/youtube/app/adapter/f;->e:Lcom/google/android/youtube/core/async/l;

    goto :goto_56
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/adapter/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/adapter/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/adapter/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/adapter/f;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/adapter/f;)Lcom/google/android/youtube/app/prefetch/d;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->f:Lcom/google/android/youtube/app/prefetch/d;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/adapter/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->h:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/youtube/app/adapter/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/adapter/g;-><init>(Lcom/google/android/youtube/app/adapter/f;Landroid/view/View;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 5
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/f;->k:Z

    if-eqz v0, :cond_26

    .line 93
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 95
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 97
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->c:Lcom/google/android/youtube/core/b/ai;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/f;->e:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ai;->a(Ljava/util/List;Lcom/google/android/youtube/core/async/l;)V

    .line 99
    :cond_26
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/f;->d:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/g;->a()V

    goto :goto_20

    :cond_30
    return-void
.end method
