.class final Lcom/google/android/youtube/app/prefetch/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    check-cast p1, Lcom/google/android/youtube/app/prefetch/Prefetch;

    check-cast p2, Lcom/google/android/youtube/app/prefetch/Prefetch;

    iget v0, p1, Lcom/google/android/youtube/app/prefetch/Prefetch;->e:I

    iget v1, p2, Lcom/google/android/youtube/app/prefetch/Prefetch;->e:I

    if-ge v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    iget v0, p1, Lcom/google/android/youtube/app/prefetch/Prefetch;->e:I

    iget v1, p2, Lcom/google/android/youtube/app/prefetch/Prefetch;->e:I

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method
