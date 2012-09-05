.class public Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
.super Ljava/lang/Object;
.source "BooksCarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/BooksCarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverCacheKey"
.end annotation


# instance fields
.field final viewability:Ljava/lang/String;

.field final volumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "volumeId"
    .parameter "viewability"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->volumeId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->viewability:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 49
    instance-of v1, p1, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;

    if-eqz v1, :cond_1f

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;

    .line 51
    .local v0, other:Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->volumeId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->volumeId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->viewability:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->viewability:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 54
    .end local v0           #other:Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
    :goto_1c
    return v1

    .line 51
    .restart local v0       #other:Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    .line 54
    .end local v0           #other:Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->volumeId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;->viewability:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
