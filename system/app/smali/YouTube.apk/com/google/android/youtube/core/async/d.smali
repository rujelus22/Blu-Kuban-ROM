.class public final Lcom/google/android/youtube/core/async/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/core/client/af;

.field private final b:Lcom/google/android/youtube/core/async/f;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/async/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "imageClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/d;->a:Lcom/google/android/youtube/core/client/af;

    .line 31
    const-string v0, "renderer may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/f;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/d;->b:Lcom/google/android/youtube/core/async/f;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/d;)Lcom/google/android/youtube/core/async/f;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/d;->b:Lcom/google/android/youtube/core/async/f;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/d;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/d;->a:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    const-string v0, "request may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/youtube/core/async/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/e;-><init>(Lcom/google/android/youtube/core/async/d;Ljava/util/List;Lcom/google/android/youtube/core/async/g;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/e;->a()V

    return-void
.end method
