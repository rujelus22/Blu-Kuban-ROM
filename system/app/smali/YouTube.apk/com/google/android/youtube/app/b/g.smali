.class final Lcom/google/android/youtube/app/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/d;

.field private final b:Lcom/google/android/youtube/core/model/Video;

.field private final c:Lcom/google/android/youtube/app/b/b;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/app/b/g;-><init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/youtube/app/b/g;->a:Lcom/google/android/youtube/app/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/google/android/youtube/app/b/g;->b:Lcom/google/android/youtube/core/model/Video;

    .line 332
    iput-object p3, p0, Lcom/google/android/youtube/app/b/g;->c:Lcom/google/android/youtube/app/b/b;

    .line 333
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/app/b/g;->a:Lcom/google/android/youtube/app/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 325
    check-cast p2, Lcom/google/android/youtube/core/model/u;

    iget-object v0, p0, Lcom/google/android/youtube/app/b/g;->a:Lcom/google/android/youtube/app/b/d;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/g;->b:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/app/b/g;->c:Lcom/google/android/youtube/app/b/b;

    invoke-static {v0, v1, v2, p2}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;Lcom/google/android/youtube/core/model/u;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/b/g;->a:Lcom/google/android/youtube/app/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;)V

    return-void
.end method
