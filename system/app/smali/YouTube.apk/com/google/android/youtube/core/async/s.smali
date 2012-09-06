.class public Lcom/google/android/youtube/core/async/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/o;

.field private final b:Lcom/google/android/youtube/core/cache/a;

.field private final c:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "cache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/s;->b:Lcom/google/android/youtube/core/cache/a;

    .line 35
    const-string v0, "target may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/s;->c:Lcom/google/android/youtube/core/async/ar;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/s;->a:Lcom/google/android/youtube/core/utils/o;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/utils/o;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "filter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/o;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/s;->a:Lcom/google/android/youtube/core/utils/o;

    .line 29
    const-string v0, "cache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/s;->b:Lcom/google/android/youtube/core/cache/a;

    .line 30
    const-string v0, "target may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/s;->c:Lcom/google/android/youtube/core/async/ar;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/s;)Lcom/google/android/youtube/core/cache/a;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/core/async/s;->b:Lcom/google/android/youtube/core/cache/a;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/o;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/async/s;->a:Lcom/google/android/youtube/core/utils/o;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/async/s;->c:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/core/async/x;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/x;-><init>(Lcom/google/android/youtube/core/async/s;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 41
    return-void
.end method
