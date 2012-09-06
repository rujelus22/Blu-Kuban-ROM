.class final Lcom/google/android/youtube/core/async/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/s;

.field private final b:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/s;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/youtube/core/async/x;->a:Lcom/google/android/youtube/core/async/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "targetCallback can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/x;->b:Lcom/google/android/youtube/core/async/l;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/async/x;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/async/x;->a:Lcom/google/android/youtube/core/async/s;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/s;->a(Lcom/google/android/youtube/core/async/s;)Lcom/google/android/youtube/core/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/x;->a:Lcom/google/android/youtube/core/async/s;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/cache/a;->a(Lcom/google/android/youtube/core/utils/o;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/async/x;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-void
.end method
