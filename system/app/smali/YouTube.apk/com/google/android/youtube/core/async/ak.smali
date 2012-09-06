.class final Lcom/google/android/youtube/core/async/ak;
.super Lcom/google/android/youtube/core/async/al;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/youtube/core/async/aj;

    invoke-virtual {p1, p2}, Lcom/google/android/youtube/core/async/aj;->b(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/aj;

    move-result-object v0

    return-object v0
.end method
