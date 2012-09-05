.class public Lcom/google/android/apps/books/tts/CharacterSegmentation;
.super Lcom/google/android/apps/books/tts/BaseTtsSegmentation;
.source "CharacterSegmentation.java"


# instance fields
.field private final mItemOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 7
    .parameter "text"
    .parameter "positionMap"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 20
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/tts/CharacterSegmentation;->mItemOffsets:Ljava/util/List;

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 26
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, characterIndex:I
    :goto_e
    if-ge v0, v1, :cond_28

    .line 27
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/tts/CharacterSegmentation;->shouldIncludeItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 28
    iget-object v2, p0, Lcom/google/android/apps/books/tts/CharacterSegmentation;->mItemOffsets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 31
    :cond_28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/tts/CharacterSegmentation;->mItemOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemRange(I)Lcom/google/android/apps/books/util/Range;
    .registers 5
    .parameter "index"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/android/apps/books/tts/CharacterSegmentation;->mItemOffsets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 41
    .local v0, offset:I
    new-instance v1, Lcom/google/android/apps/books/util/Range;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/util/Range;-><init>(II)V

    return-object v1
.end method

.method public getItemText(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/apps/books/tts/CharacterSegmentation;->mItemOffsets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/android/apps/books/tts/CharacterSegmentation;->mText:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
