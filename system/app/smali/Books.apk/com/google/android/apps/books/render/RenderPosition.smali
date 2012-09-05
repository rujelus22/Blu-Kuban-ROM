.class public Lcom/google/android/apps/books/render/RenderPosition;
.super Ljava/lang/Object;
.source "RenderPosition.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/RenderPosition$SpecialIndex;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:Lcom/google/android/apps/books/common/Position;


# instance fields
.field public final chapterIndex:I

.field public final highlight:Ljava/lang/String;

.field public final highlightSearch:Ljava/lang/Integer;

.field public final nextHighlightChapterIndex:Ljava/lang/Integer;

.field public final pageIndex:I

.field public final pageOffset:I

.field public final position:Lcom/google/android/apps/books/common/Position;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 11
    .parameter "chapterIndex"
    .parameter "pageIndex"

    .prologue
    const/4 v5, 0x0

    .line 57
    sget-object v1, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;)V
    .registers 10
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 49
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;II)V
    .registers 12
    .parameter "position"
    .parameter "chapterIndex"
    .parameter "pageIndex"

    .prologue
    const/4 v5, 0x0

    .line 66
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 8
    .parameter "position"
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "pageOffset"
    .parameter "highlight"
    .parameter "highlightSearch"
    .parameter "nextHighlightChapterIndex"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    .line 40
    iput p2, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    .line 41
    iput p3, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    .line 42
    iput p4, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    .line 43
    iput-object p5, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    .line 45
    iput-object p7, p0, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/String;)V
    .registers 13
    .parameter "position"
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "highlight"

    .prologue
    const/4 v6, 0x0

    .line 70
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;Ljava/lang/String;)V
    .registers 11
    .parameter "position"
    .parameter "highlight"

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 53
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 13
    .parameter "position"
    .parameter "highlight"
    .parameter "highlightSearch"
    .parameter "nextHighlightChapterIndex"

    .prologue
    const/4 v2, -0x1

    .line 75
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/render/RenderPosition;I)V
    .registers 11
    .parameter "anchor"
    .parameter "pageOffset"

    .prologue
    .line 61
    iget-object v1, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    iget v2, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget v0, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    add-int v4, v0, p2

    iget-object v5, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .parameter "another"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 152
    instance-of v4, p1, Lcom/google/android/apps/books/render/RenderPosition;

    if-eqz v4, :cond_37

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/google/android/apps/books/render/RenderPosition;

    .line 154
    .local v0, other:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v0}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 155
    iget v4, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v5, v0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    if-ge v4, v5, :cond_1d

    .line 170
    .end local v0           #other:Lcom/google/android/apps/books/render/RenderPosition;
    :cond_1c
    :goto_1c
    return v1

    .line 157
    .restart local v0       #other:Lcom/google/android/apps/books/render/RenderPosition;
    :cond_1d
    iget v4, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v5, v0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    if-le v4, v5, :cond_25

    move v1, v2

    .line 158
    goto :goto_1c

    .line 159
    :cond_25
    iget v4, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget v5, v0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    if-lt v4, v5, :cond_1c

    .line 161
    iget v1, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget v4, v0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    if-le v1, v4, :cond_33

    move v1, v2

    .line 162
    goto :goto_1c

    :cond_33
    move v1, v3

    .line 164
    goto :goto_1c

    :cond_35
    move v1, v3

    .line 167
    goto :goto_1c

    .end local v0           #other:Lcom/google/android/apps/books/render/RenderPosition;
    :cond_37
    move v1, v3

    .line 170
    goto :goto_1c
.end method

.method public hasValidIndices()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 92
    iget v0, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasValidPosition()Z
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    sget-object v1, Lcom/google/android/apps/books/render/RenderPosition;->INVALID_POSITION:Lcom/google/android/apps/books/common/Position;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 3
    .parameter "pageOffset"

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/render/RenderPosition;I)V

    return-object v0
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidPosition()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 118
    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 121
    const-string v2, "c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, "p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3e
    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    if-eqz v2, :cond_53

    .line 125
    const-string v2, "o="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_53
    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v2, :cond_68

    .line 128
    const-string v2, "h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_68
    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    if-eqz v2, :cond_7d

    .line 131
    const-string v2, "s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_7d
    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    if-eqz v2, :cond_92

    .line 134
    const-string v2, "ch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 138
    .local v1, length:I
    const/4 v2, 0x2

    if-le v1, v2, :cond_9e

    .line 139
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 141
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", chapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", pageOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 103
    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_40
    iget-object v1, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    if-eqz v1, :cond_4f

    .line 106
    const-string v1, ", highlightSearch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    :cond_4f
    iget-object v1, p0, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_5e

    .line 109
    const-string v1, ", nextHighlightChapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    :cond_5e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
