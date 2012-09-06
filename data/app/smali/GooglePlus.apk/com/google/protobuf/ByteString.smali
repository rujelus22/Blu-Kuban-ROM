.class public final Lcom/google/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ByteString$1;,
        Lcom/google/protobuf/ByteString$CodedBuilder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/protobuf/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 51
    iput-object p1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 52
    return-void
.end method

.method synthetic constructor <init>([BLcom/google/protobuf/ByteString$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom([B)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "bytes"

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/google/protobuf/ByteString;
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 90
    new-array v0, p2, [B

    .line 91
    .local v0, copy:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-instance v1, Lcom/google/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .registers 4
    .parameter "text"

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Lcom/google/protobuf/ByteString;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/protobuf/ByteString;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 136
    :catch_c
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;
    .registers 3
    .parameter "size"

    .prologue
    .line 377
    new-instance v0, Lcom/google/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(ILcom/google/protobuf/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3
    .parameter "index"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo([BIII)V
    .registers 6
    .parameter "target"
    .parameter "sourceOffset"
    .parameter "targetOffset"
    .parameter "size"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 252
    if-ne p1, p0, :cond_5

    .line 274
    :cond_4
    :goto_4
    return v5

    .line 256
    :cond_5
    instance-of v7, p1, Lcom/google/protobuf/ByteString;

    if-nez v7, :cond_b

    move v5, v6

    .line 257
    goto :goto_4

    :cond_b
    move-object v1, p1

    .line 260
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 261
    .local v1, other:Lcom/google/protobuf/ByteString;
    iget-object v7, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v3, v7

    .line 262
    .local v3, size:I
    iget-object v7, v1, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_18

    move v5, v6

    .line 263
    goto :goto_4

    .line 266
    :cond_18
    iget-object v4, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 267
    .local v4, thisBytes:[B
    iget-object v2, v1, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 268
    .local v2, otherBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v3, :cond_4

    .line 269
    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_27

    move v5, v6

    .line 270
    goto :goto_4

    .line 268
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 281
    iget v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 283
    .local v0, h:I
    if-nez v0, :cond_1b

    .line 284
    iget-object v3, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 285
    .local v3, thisBytes:[B
    iget-object v4, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v2, v4

    .line 287
    .local v2, size:I
    move v0, v2

    .line 288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_16

    .line 289
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 291
    :cond_16
    if-nez v0, :cond_19

    .line 292
    const/4 v0, 0x1

    .line 295
    :cond_19
    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 298
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #thisBytes:[B
    :cond_1b
    return v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 308
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v1, v2

    .line 213
    .local v1, size:I
    new-array v0, v1, [B

    .line 214
    .local v0, copy:[B
    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .registers 5

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 242
    :catch_a
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
