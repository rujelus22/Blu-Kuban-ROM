.class public Lcom/google/android/apps/books/render/TextRange;
.super Ljava/lang/Object;
.source "TextRange.java"


# instance fields
.field public final endOffset:I

.field public final passageIndex:I

.field public final position:Lcom/google/android/apps/books/common/Position;

.field public final startOffset:I


# direct methods
.method public constructor <init>(ILcom/google/android/apps/books/common/Position;II)V
    .registers 6
    .parameter "passageIndex"
    .parameter "position"
    .parameter "startOffset"
    .parameter "endOffset"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-gt p3, p4, :cond_12

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 45
    iput p1, p0, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/books/render/TextRange;->position:Lcom/google/android/apps/books/common/Position;

    .line 47
    iput p3, p0, Lcom/google/android/apps/books/render/TextRange;->startOffset:I

    .line 48
    iput p4, p0, Lcom/google/android/apps/books/render/TextRange;->endOffset:I

    .line 49
    return-void

    .line 44
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[passage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/TextRange;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/TextRange;->startOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/TextRange;->endOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
