.class Lcom/cooliris/media/DiskCacheSEC$ChunkFile;
.super Ljava/lang/Object;
.source "DiskCacheSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DiskCacheSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkFile"
.end annotation


# instance fields
.field private mCount:I

.field private mData:[B

.field private mIndex:I

.field final synthetic this$0:Lcom/cooliris/media/DiskCacheSEC;


# direct methods
.method constructor <init>(Lcom/cooliris/media/DiskCacheSEC;I)V
    .registers 9
    .parameter
    .parameter "index"

    .prologue
    const/16 v5, 0x800

    .line 108
    iput-object p1, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mIndex:I

    .line 111
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    .line 113
    const/4 v1, 0x1

    .line 114
    .local v1, num:I
    const/16 v0, 0x7ff

    .local v0, i:I
    move v2, v1

    .end local v1           #num:I
    .local v2, num:I
    :goto_11
    if-ltz v0, :cond_28

    .line 115
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #num:I
    .restart local v1       #num:I
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 116
    const/16 v3, 0x40

    if-le v1, v3, :cond_1f

    .line 117
    const/4 v1, 0x1

    .line 119
    :cond_1f
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    const/4 v4, 0x1

    aput-byte v4, v3, v0

    .line 114
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .end local v1           #num:I
    .restart local v2       #num:I
    goto :goto_11

    .line 122
    :cond_28
    iput v5, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    .line 123
    return-void
.end method


# virtual methods
.method adjust()V
    .registers 6

    .prologue
    .line 126
    const/4 v1, 0x1

    .line 127
    .local v1, num:I
    const/16 v0, 0x7ff

    .local v0, i:I
    move v2, v1

    .end local v1           #num:I
    .local v2, num:I
    :goto_4
    if-ltz v0, :cond_1e

    .line 128
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    aget-byte v3, v3, v0

    if-gez v3, :cond_11

    .line 129
    const/4 v1, 0x1

    .line 127
    .end local v2           #num:I
    .restart local v1       #num:I
    :cond_d
    :goto_d
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .end local v1           #num:I
    .restart local v2       #num:I
    goto :goto_4

    .line 131
    :cond_11
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #num:I
    .restart local v1       #num:I
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 132
    const/16 v3, 0x40

    if-le v1, v3, :cond_d

    .line 133
    const/4 v1, 0x1

    goto :goto_d

    .line 137
    .end local v1           #num:I
    .restart local v2       #num:I
    :cond_1e
    return-void
.end method

.method searchFree(I)I
    .registers 7
    .parameter "count"

    .prologue
    .line 168
    iget v4, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    if-lt v4, p1, :cond_34

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, i:I
    :goto_5
    rsub-int v4, p1, 0x800

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_34

    .line 171
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    aget-byte v3, v4, v1

    .line 172
    .local v3, temp:I
    if-gez v3, :cond_14

    .line 173
    neg-int v4, v3

    add-int/2addr v1, v4

    goto :goto_5

    .line 174
    :cond_14
    if-lez v3, :cond_31

    .line 175
    move v0, v3

    .line 176
    .local v0, area:I
    add-int v2, v1, v3

    .line 178
    .local v2, nextCur:I
    :goto_19
    if-ge v0, p1, :cond_2c

    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    aget-byte v4, v4, v2

    if-lez v4, :cond_2c

    .line 179
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    aget-byte v4, v4, v2

    add-int/2addr v0, v4

    .line 180
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    aget-byte v4, v4, v2

    add-int/2addr v2, v4

    goto :goto_19

    .line 183
    :cond_2c
    if-lt v0, p1, :cond_2f

    .line 193
    .end local v0           #area:I
    .end local v1           #i:I
    .end local v2           #nextCur:I
    .end local v3           #temp:I
    :goto_2e
    return v1

    .line 186
    .restart local v0       #area:I
    .restart local v1       #i:I
    .restart local v2       #nextCur:I
    .restart local v3       #temp:I
    :cond_2f
    move v1, v2

    .line 188
    goto :goto_5

    .line 189
    .end local v0           #area:I
    .end local v2           #nextCur:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 193
    .end local v1           #i:I
    .end local v3           #temp:I
    :cond_34
    const/4 v1, -0x1

    goto :goto_2e
.end method

.method setAlloc(II)V
    .registers 8
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 197
    move v1, p2

    .line 198
    .local v1, j:I
    move v0, p1

    .local v0, i:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_3
    add-int v3, p1, p2

    if-ge v0, v3, :cond_13

    .line 199
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    add-int/lit8 v1, v2, -0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    neg-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_3

    .line 202
    :cond_13
    iget v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    .line 203
    return-void
.end method

.method setFree(II)V
    .registers 8
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 206
    move v1, p2

    .line 207
    .local v1, j:I
    move v0, p1

    .local v0, i:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_3
    add-int v3, p1, p2

    if-ge v0, v3, :cond_12

    .line 208
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    add-int/lit8 v1, v2, -0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_3

    .line 211
    :cond_12
    iget v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "chunk#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 221
    .local v1, ret:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    const/16 v2, 0x800

    if-ge v0, v2, :cond_34

    .line 222
    iget-object v2, p0, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->mData:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 224
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
