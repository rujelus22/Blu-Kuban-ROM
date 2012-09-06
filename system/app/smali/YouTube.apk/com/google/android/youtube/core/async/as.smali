.class public final Lcom/google/android/youtube/core/async/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ar;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/as;->a:Lcom/google/android/youtube/core/async/ar;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, p0, Lcom/google/android/youtube/core/async/as;->a:Lcom/google/android/youtube/core/async/ar;

    new-instance v2, Lcom/google/android/youtube/core/async/at;

    invoke-direct {v2, p0, p2}, Lcom/google/android/youtube/core/async/at;-><init>(Lcom/google/android/youtube/core/async/as;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 47
    return-void
.end method
