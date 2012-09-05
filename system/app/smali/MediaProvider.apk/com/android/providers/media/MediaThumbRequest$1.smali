.class final Lcom/android/providers/media/MediaThumbRequest$1;
.super Ljava/lang/Object;
.source "MediaThumbRequest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/providers/media/MediaThumbRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/media/MediaThumbRequest;Lcom/android/providers/media/MediaThumbRequest;)I
    .registers 9
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 77
    iget v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    iget v3, p2, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    if-eq v2, v3, :cond_11

    .line 78
    iget v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    iget v3, p2, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    if-ge v2, v3, :cond_f

    .line 80
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 78
    goto :goto_e

    .line 80
    :cond_11
    iget-wide v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    iget-wide v4, p2, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v0, 0x0

    goto :goto_e

    :cond_1b
    iget-wide v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    iget-wide v4, p2, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    check-cast p1, Lcom/android/providers/media/MediaThumbRequest;

    .end local p1
    check-cast p2, Lcom/android/providers/media/MediaThumbRequest;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaThumbRequest$1;->compare(Lcom/android/providers/media/MediaThumbRequest;Lcom/android/providers/media/MediaThumbRequest;)I

    move-result v0

    return v0
.end method
