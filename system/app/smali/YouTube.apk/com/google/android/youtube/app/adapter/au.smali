.class public final Lcom/google/android/youtube/app/adapter/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;
.implements Lcom/google/android/youtube/app/adapter/bf;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/app/c/g;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/List;

.field private final e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/c/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->a:Landroid/content/Context;

    .line 47
    const-string v0, "plusOneClient cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/c/g;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->b:Lcom/google/android/youtube/app/c/g;

    .line 48
    new-instance v0, Lcom/google/android/youtube/app/adapter/av;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/adapter/av;-><init>(Lcom/google/android/youtube/app/adapter/au;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->e:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->c:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->d:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/au;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/aw;->a()V

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/au;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/au;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/adapter/au;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/youtube/app/adapter/aw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/adapter/aw;-><init>(Lcom/google/android/youtube/app/adapter/au;Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/au;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 5
    .parameter

    .prologue
    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 61
    invoke-static {v0}, Lcom/google/android/youtube/plus1/c;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 63
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->b:Lcom/google/android/youtube/app/c/g;

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/app/c/g;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    .line 64
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/plus1/u;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/au;->f:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/au;->f:Z

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/au;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method
