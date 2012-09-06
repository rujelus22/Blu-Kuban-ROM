.class final Lcom/google/android/youtube/core/async/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/ay;

.field private final b:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ay;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/google/android/youtube/core/async/az;->b:Lcom/google/android/youtube/core/async/l;

    .line 116
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/async/az;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/ay;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/ay;->b(Lcom/google/android/youtube/core/async/ay;)Lcom/google/android/youtube/core/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/ay;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/ay;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/ay;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/ay;->a(Lcom/google/android/youtube/core/async/ay;)Lcom/google/android/youtube/core/utils/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/async/az;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method
