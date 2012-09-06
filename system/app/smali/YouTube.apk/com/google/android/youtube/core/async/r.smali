.class final Lcom/google/android/youtube/core/async/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/q;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/q;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/async/r;->a:Lcom/google/android/youtube/core/async/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/google/android/youtube/core/async/r;->b:Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lcom/google/android/youtube/core/async/r;->c:Lcom/google/android/youtube/core/async/l;

    .line 62
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/async/r;->a:Lcom/google/android/youtube/core/async/q;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/q;->a(Lcom/google/android/youtube/core/async/q;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/r;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/r;->c:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 66
    return-void
.end method
