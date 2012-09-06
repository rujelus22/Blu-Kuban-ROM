.class public final Lcom/google/android/youtube/app/ui/b;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/adapter/c;

.field private final b:Lcom/google/android/youtube/core/b/ae;

.field private final h:Lcom/google/android/youtube/core/b/ag;

.field private final i:Lcom/google/android/youtube/core/async/l;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/c;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-interface {p4}, Lcom/google/android/youtube/core/b/ae;->w()Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 51
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/b;->a:Lcom/google/android/youtube/app/adapter/c;

    .line 52
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->b:Lcom/google/android/youtube/core/b/ae;

    .line 53
    const-string v0, "imageClient can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->h:Lcom/google/android/youtube/core/b/ag;

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/ui/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/c;-><init>(Lcom/google/android/youtube/app/ui/b;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->i:Lcom/google/android/youtube/core/async/l;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->j:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/b;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->k:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->i:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->h:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/app/adapter/c;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->a:Lcom/google/android/youtube/app/adapter/c;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 74
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v3, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-eq v2, v3, :cond_1c

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v3, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-ne v2, v3, :cond_4

    .line 76
    :cond_1c
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->b:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    .line 79
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->a:Lcom/google/android/youtube/app/adapter/c;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/adapter/c;->a(Landroid/net/Uri;)V

    .line 80
    new-instance v3, Lcom/google/android/youtube/app/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-direct {v3, p0, v0}, Lcom/google/android/youtube/app/ui/d;-><init>(Lcom/google/android/youtube/app/ui/b;Landroid/net/Uri;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/async/n;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/n;

    move-result-object v0

    .line 82
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->b:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3, v2, v0}, Lcom/google/android/youtube/core/b/ae;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_4

    .line 86
    :cond_44
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/j;->c()V

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/n;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/n;->a()V

    goto :goto_9

    .line 66
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 68
    return-void
.end method
