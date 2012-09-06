.class public final Lcom/google/zxing/common/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    .line 36
    iput p1, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    .line 37
    iput p2, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    .line 38
    return-void
.end method


# virtual methods
.method public clear(B)V
    .registers 5
    .parameter "value"

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    if-ge v1, v2, :cond_16

    .line 66
    const/4 v0, 0x0

    .local v0, x:I
    :goto_6
    iget v2, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    if-ge v0, v2, :cond_13

    .line 67
    iget-object v2, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v2, v2, v1

    aput-byte p1, v2, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 65
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v0           #x:I
    :cond_16
    return-void
.end method

.method public get(II)B
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aput-byte p3, v0, p1

    .line 58
    return-void
.end method

.method public set(III)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 74
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_f
    iget v3, p0, Lcom/google/zxing/common/ByteMatrix;->height:I

    if-ge v2, v3, :cond_3d

    .line 75
    const/4 v1, 0x0

    .local v1, x:I
    :goto_14
    iget v3, p0, Lcom/google/zxing/common/ByteMatrix;->width:I

    if-ge v1, v3, :cond_35

    .line 76
    iget-object v3, p0, Lcom/google/zxing/common/ByteMatrix;->bytes:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v1

    packed-switch v3, :pswitch_data_42

    .line 84
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 78
    :pswitch_29
    const-string v3, " 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 81
    :pswitch_2f
    const-string v3, " 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 88
    :cond_35
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 90
    .end local v1           #x:I
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 76
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2f
    .end packed-switch
.end method
