.class public final Lcom/google/android/youtube/core/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/b;


# instance fields
.field private final a:Lcom/google/android/youtube/core/cache/b;

.field private final b:Lcom/google/android/youtube/core/cache/b;

.field private final c:Lcom/google/android/youtube/core/cache/i;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/cache/i;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "compoundCache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/b;

    .line 56
    const-string v0, "singleElementsCache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/h;->b:Lcom/google/android/youtube/core/cache/b;

    .line 58
    const-string v0, "splitter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/h;->c:Lcom/google/android/youtube/core/cache/i;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/utils/l;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/b;->a(Lcom/google/android/youtube/core/utils/l;)V

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->c:Lcom/google/android/youtube/core/cache/i;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/h;->b:Lcom/google/android/youtube/core/cache/b;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/b;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
