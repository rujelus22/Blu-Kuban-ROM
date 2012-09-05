.class public Lcom/google/android/youtube/core/async/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/l;

.field private final b:Lcom/google/android/youtube/core/cache/b;

.field private final c:Lcom/google/android/youtube/core/async/ad;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "cache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/l;->b:Lcom/google/android/youtube/core/cache/b;

    .line 35
    const-string v0, "target may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/l;->c:Lcom/google/android/youtube/core/async/ad;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/l;->a:Lcom/google/android/youtube/core/utils/l;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "filter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/l;->a:Lcom/google/android/youtube/core/utils/l;

    .line 29
    const-string v0, "cache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/l;->b:Lcom/google/android/youtube/core/cache/b;

    .line 30
    const-string v0, "target may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/l;->c:Lcom/google/android/youtube/core/async/ad;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/cache/b;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/core/async/l;->b:Lcom/google/android/youtube/core/cache/b;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/l;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/async/l;->a:Lcom/google/android/youtube/core/utils/l;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/async/l;->c:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/core/async/q;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/q;-><init>(Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 41
    return-void
.end method
