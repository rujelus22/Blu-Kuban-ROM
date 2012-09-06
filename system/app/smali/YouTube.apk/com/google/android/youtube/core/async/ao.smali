.class public final Lcom/google/android/youtube/core/async/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;

.field private final b:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/ar;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "playlistVideosRequester may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ao;->a:Lcom/google/android/youtube/core/async/ar;

    .line 36
    const-string v0, "bitmapBlendRequester may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ao;->b:Lcom/google/android/youtube/core/async/ar;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ao;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ao;->b:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ao;->a:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/core/async/aq;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/aq;-><init>(Lcom/google/android/youtube/core/async/ao;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
