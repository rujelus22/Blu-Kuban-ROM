.class public final Lcom/google/android/youtube/core/async/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Lcom/google/android/youtube/core/utils/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ar;Ljava/util/concurrent/atomic/AtomicLong;Lcom/google/android/youtube/core/utils/d;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/async/ar;

    .line 25
    const-string v0, "lastEventTime may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/am;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    const-string v0, "clock may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/am;->c:Lcom/google/android/youtube/core/utils/d;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/am;)Lcom/google/android/youtube/core/utils/d;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->c:Lcom/google/android/youtube/core/utils/d;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/am;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/core/async/an;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/an;-><init>(Lcom/google/android/youtube/core/async/am;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 32
    return-void
.end method
