.class final Lcom/google/android/youtube/core/async/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final b:Lcom/google/android/youtube/core/async/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/ad;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/google/android/youtube/core/async/az;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/google/android/youtube/core/async/az;->b:Lcom/google/android/youtube/core/async/ad;

    .line 569
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/az;)Lcom/google/android/youtube/core/async/ad;
    .registers 2
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/youtube/core/async/az;->b:Lcom/google/android/youtube/core/async/ad;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 563
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    const-string v1, "attempted a retrying request with an empty userAuth"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/az;->b:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/core/async/ba;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/youtube/core/async/ba;-><init>(Lcom/google/android/youtube/core/async/az;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/async/z;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method
