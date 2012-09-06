.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final format:Lcom/google/zxing/BarcodeFormat;

.field private final rawBytes:[B

.field private resultMetadata:Ljava/util/Hashtable;

.field private resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .registers 7
    .parameter "text"
    .parameter "rawBytes"
    .parameter "resultPoints"
    .parameter "format"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_f

    if-nez p2, :cond_f

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text and bytes are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_f
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/google/zxing/Result;->rawBytes:[B

    .line 43
    iput-object p3, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 44
    iput-object p4, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 46
    return-void
.end method


# virtual methods
.method public addResultPoints([Lcom/google/zxing/ResultPoint;)V
    .registers 6
    .parameter "newPoints"

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    if-nez v1, :cond_8

    .line 96
    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 103
    :cond_7
    :goto_7
    return-void

    .line 97
    :cond_8
    if-eqz p1, :cond_7

    array-length v1, p1

    if-lez v1, :cond_7

    .line 98
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    .line 99
    .local v0, allPoints:[Lcom/google/zxing/ResultPoint;
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    iget-object v2, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    goto :goto_7
.end method

.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public getRawBytes()[B
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/Result;->rawBytes:[B

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .registers 5
    .parameter "type"
    .parameter "value"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 91
    :cond_c
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/Result;->rawBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_20
    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    goto :goto_20
.end method
