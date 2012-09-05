.class public final Lcom/google/android/youtube/core/async/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/g;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/g;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/async/g;

    .line 18
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/i;
    .registers 2
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/youtube/core/async/i;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/async/i;-><init>(Lcom/google/android/youtube/core/async/g;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/i;->b:Z

    .line 26
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/i;->b:Z

    if-nez v0, :cond_9

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 42
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/i;->b:Z

    if-nez v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    :cond_9
    return-void
.end method
