.class abstract Lcom/google/android/apps/books/tts/SubstringSegmentation;
.super Lcom/google/android/apps/books/tts/BaseTtsSegmentation;
.source "SubstringSegmentation.java"


# instance fields
.field private final mItemIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 4
    .parameter "text"
    .parameter "positionMap"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/tts/SubstringSegmentation;->buildSegmentation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/tts/SubstringSegmentation;->mItemIndices:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract buildSegmentation(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/Range;",
            ">;"
        }
    .end annotation
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/books/tts/SubstringSegmentation;->mItemIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemRange(I)Lcom/google/android/apps/books/util/Range;
    .registers 3
    .parameter "index"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/books/tts/SubstringSegmentation;->mItemIndices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Range;

    return-object v0
.end method

.method public getItemText(I)Ljava/lang/String;
    .registers 6
    .parameter "index"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/apps/books/tts/SubstringSegmentation;->mItemIndices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Range;

    .line 47
    .local v0, range:Lcom/google/android/apps/books/util/Range;
    iget-object v1, p0, Lcom/google/android/apps/books/tts/SubstringSegmentation;->mText:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/apps/books/util/Range;->start:I

    iget v3, v0, Lcom/google/android/apps/books/util/Range;->end:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
