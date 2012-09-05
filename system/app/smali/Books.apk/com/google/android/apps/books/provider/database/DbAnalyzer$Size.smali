.class public final Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;
.super Ljava/lang/Object;
.source "DbAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/database/DbAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Size"
.end annotation


# instance fields
.field private final mBytes:I

.field private final mRows:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "rows"
    .parameter "bytes"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mRows:I

    .line 191
    iput p2, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mBytes:I

    .line 192
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 209
    instance-of v2, p1, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;

    if-nez v2, :cond_6

    .line 213
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 212
    check-cast v0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;

    .line 213
    .local v0, size:Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;
    iget v2, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mBytes:I

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->getBytes()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mRows:I

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->getRows()I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getBytes()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mBytes:I

    return v0
.end method

.method public getRows()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mRows:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mRows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->mBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->getRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;->getBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
