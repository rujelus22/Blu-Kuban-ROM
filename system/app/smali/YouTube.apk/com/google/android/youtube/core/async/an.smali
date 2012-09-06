.class final Lcom/google/android/youtube/core/async/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/am;

.field private final b:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/am;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/core/async/an;->a:Lcom/google/android/youtube/core/async/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "targetCallback can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/an;->b:Lcom/google/android/youtube/core/async/l;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/core/async/an;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 49
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/async/an;->a:Lcom/google/android/youtube/core/async/am;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/am;->b(Lcom/google/android/youtube/core/async/am;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/an;->a:Lcom/google/android/youtube/core/async/am;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/am;->a(Lcom/google/android/youtube/core/async/am;)Lcom/google/android/youtube/core/utils/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/async/an;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method
