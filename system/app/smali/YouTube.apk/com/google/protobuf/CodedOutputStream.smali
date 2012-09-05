.class public final Lcom/google/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->d:Ljava/io/OutputStream;

    .line 78
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->a:[B

    .line 79
    iput p2, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    .line 80
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 694
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 695
    array-length v1, v0

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->d(I)I

    move-result v1

    array-length v0, v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    add-int/2addr v0, v1

    return v0

    .line 697
    :catch_e
    move-exception v0

    .line 698
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BII)Lcom/google/protobuf/CodedOutputStream;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method

.method public static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 917
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/WireFormat;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->d(I)I

    move-result v0

    return v0
.end method

.method public static b(ILcom/google/protobuf/j;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->b(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/protobuf/j;->j()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->d(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    .line 798
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 803
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->a:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    .line 805
    return-void
.end method

.method public static d(I)I
    .registers 2
    .parameter

    .prologue
    .line 942
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 946
    :goto_5
    return v0

    .line 943
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    .line 944
    :cond_c
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    .line 945
    :cond_13
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    .line 946
    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    .line 823
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    sub-int/2addr v0, v1

    return v0

    .line 825
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 870
    int-to-byte v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    if-ne v1, v2, :cond_a

    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->b()V

    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->a:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    aput-byte v0, v1, v2

    .line 871
    return-void
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 912
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->c(I)V

    .line 913
    return-void
.end method

.method public final a(ILcom/google/protobuf/j;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->a(II)V

    .line 221
    invoke-interface {p2}, Lcom/google/protobuf/j;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->c(I)V

    invoke-interface {p2, p0}, Lcom/google/protobuf/j;->a(Lcom/google/protobuf/CodedOutputStream;)V

    .line 222
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->a(II)V

    .line 193
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->c(I)V

    array-length v1, v0

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_24

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream;->a:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    invoke-static {v0, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    .line 194
    :goto_23
    return-void

    .line 193
    :cond_24
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/protobuf/CodedOutputStream;->a:[B

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x0

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->b()V

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->b:I

    if-gt v1, v2, :cond_46

    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream;->a:[B

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->c:I

    goto :goto_23

    :cond_46
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_23
.end method

.method public final a(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->a(II)V

    .line 186
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->a(I)V

    .line 187
    return-void
.end method

.method public final c(I)V
    .registers 3
    .parameter

    .prologue
    .line 926
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 927
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->a(I)V

    .line 928
    return-void

    .line 930
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->a(I)V

    .line 931
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
