.class public final Lcom/google/android/youtube/core/cache/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/cache/a;

.field private final b:Lcom/google/android/youtube/core/cache/a;

.field private final c:Lcom/google/android/youtube/core/cache/j;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/j;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "compoundCache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/i;->a:Lcom/google/android/youtube/core/cache/a;

    .line 56
    const-string v0, "singleElementsCache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/i;->b:Lcom/google/android/youtube/core/cache/a;

    .line 58
    const-string v0, "splitter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/j;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/i;->c:Lcom/google/android/youtube/core/cache/j;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/i;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/utils/o;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/i;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/a;->a(Lcom/google/android/youtube/core/utils/o;)V

    .line 85
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/i;->c:Lcom/google/android/youtube/core/cache/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/i;->b:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/youtube/core/cache/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/i;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
