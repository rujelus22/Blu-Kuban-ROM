.class final Lorg/apache/harmony/xnet/provider/jsse/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->bytes:[B

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->hashCode:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 38
    instance-of v1, p1, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    if-nez v1, :cond_6

    .line 39
    const/4 v1, 0x0

    .line 42
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 41
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    .line 42
    .local v0, lhs:Lorg/apache/harmony/xnet/provider/jsse/ByteArray;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->bytes:[B

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->hashCode:I

    return v0
.end method
