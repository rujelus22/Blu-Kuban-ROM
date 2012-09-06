.class public final Lcom/google/android/youtube/app/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/youtube/core/async/ar;

.field private final d:Ljava/util/concurrent/ConcurrentMap;

.field private final e:Lcom/google/android/youtube/core/b/ag;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Ljava/util/concurrent/ConcurrentMap;IIZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/app/d/b;->c:Lcom/google/android/youtube/core/async/ar;

    .line 50
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/d/b;->e:Lcom/google/android/youtube/core/b/ag;

    .line 51
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lcom/google/android/youtube/app/d/b;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 52
    const-string v0, "minDesiredTeasers must be > 0"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 53
    const-string v0, "maxTeasers must be > minDesiredTeasers"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 55
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/youtube/app/d/b;->a:I

    .line 56
    const/16 v0, 0x18

    iput v0, p0, Lcom/google/android/youtube/app/d/b;->b:I

    .line 57
    iput-boolean v1, p0, Lcom/google/android/youtube/app/d/b;->f:Z

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/d/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/youtube/app/d/b;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/d/b;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/d/b;->d:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/d/b;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/youtube/app/d/b;->b:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/d/b;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/youtube/app/d/b;->a:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/d/b;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/d/b;->c:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/d/b;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/d/b;->e:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/d/b;->c:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/app/d/c;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/d/c;-><init>(Lcom/google/android/youtube/app/d/b;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 63
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/d/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
