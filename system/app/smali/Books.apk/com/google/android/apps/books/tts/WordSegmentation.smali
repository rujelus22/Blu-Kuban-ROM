.class Lcom/google/android/apps/books/tts/WordSegmentation;
.super Lcom/google/android/apps/books/tts/SubstringSegmentation;
.source "WordSegmentation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 3
    .parameter "text"
    .parameter "positionMap"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/tts/SubstringSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected buildSegmentation(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter "text"
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

    .prologue
    .line 26
    invoke-static {p1}, Lcom/google/android/apps/books/util/TextSegmentation;->findWords(Ljava/lang/String;)Lcom/google/android/apps/books/util/TextSegmentation;

    move-result-object v6

    iget-object v3, v6, Lcom/google/android/apps/books/util/TextSegmentation;->offsets:Ljava/util/List;

    .line 27
    .local v3, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 28
    .local v0, count:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 29
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/Range;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_f
    if-ge v2, v0, :cond_45

    .line 31
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_38

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 36
    .local v1, end:I
    :goto_19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 37
    .local v5, start:I
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/tts/WordSegmentation;->shouldIncludeItem(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 38
    new-instance v6, Lcom/google/android/apps/books/util/Range;

    invoke-direct {v6, v5, v1}, Lcom/google/android/apps/books/util/Range;-><init>(II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 34
    .end local v1           #end:I
    .end local v5           #start:I
    :cond_38
    add-int/lit8 v6, v2, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #end:I
    goto :goto_19

    .line 41
    .end local v1           #end:I
    :cond_45
    return-object v4
.end method
