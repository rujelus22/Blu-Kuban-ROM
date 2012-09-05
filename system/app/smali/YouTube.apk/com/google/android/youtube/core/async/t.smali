.class final Lcom/google/android/youtube/core/async/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/r;

.field private final b:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/r;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/youtube/core/async/t;->a:Lcom/google/android/youtube/core/async/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/t;->b:Lcom/google/android/youtube/core/async/g;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/t;)Lcom/google/android/youtube/core/async/g;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/async/t;->b:Lcom/google/android/youtube/core/async/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/async/t;->a:Lcom/google/android/youtube/core/async/r;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/r;->a(Lcom/google/android/youtube/core/async/r;)Lcom/google/android/youtube/core/utils/l;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/utils/l;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/async/t;->a:Lcom/google/android/youtube/core/async/r;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/r;->b(Lcom/google/android/youtube/core/async/r;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/async/u;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/u;-><init>(Lcom/google/android/youtube/core/async/t;Ljava/lang/Exception;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 74
    :goto_1a
    return-void

    .line 72
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/async/t;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/async/t;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
