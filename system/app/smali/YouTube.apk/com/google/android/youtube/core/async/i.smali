.class public final Lcom/google/android/youtube/core/async/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ag;

.field private final b:Lcom/google/android/youtube/core/async/k;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/k;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "imageClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/b/ag;

    .line 31
    const-string v0, "renderer may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/i;->b:Lcom/google/android/youtube/core/async/k;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/i;)Lcom/google/android/youtube/core/async/k;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/i;->b:Lcom/google/android/youtube/core/async/k;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/i;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    const-string v0, "request may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/youtube/core/async/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/j;-><init>(Lcom/google/android/youtube/core/async/i;Ljava/util/List;Lcom/google/android/youtube/core/async/l;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/j;->a()V

    return-void
.end method
