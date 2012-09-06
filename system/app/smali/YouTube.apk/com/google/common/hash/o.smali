.class final Lcom/google/common/hash/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/l;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:Ljava/nio/ByteBuffer;

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    .line 69
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/common/hash/o;-><init>(Ljava/security/MessageDigest;)V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/common/hash/o;->c:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Cannot use Hasher after calling #hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 166
    return-void

    .line 165
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/g;
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/o;->c:Z

    .line 170
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/h;->a([B)Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/google/common/hash/l;
    .registers 7
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 109
    iget-object v0, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 110
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 111
    iget-object v0, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 112
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 144
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 145
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    iget-object v3, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    iget-object v3, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v2, p0, Lcom/google/common/hash/o;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    :cond_28
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/o;->a([B)Lcom/google/common/hash/l;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 153
    :catch_11
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/hash/f;)Lcom/google/common/hash/l;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 160
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/f;->funnel(Ljava/lang/Object;Lcom/google/common/hash/r;)V

    .line 161
    return-object p0
.end method

.method public final a([B)Lcom/google/common/hash/l;
    .registers 3
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 80
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    return-object p0
.end method

.method public final a([BII)Lcom/google/common/hash/l;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 86
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/ag;->a(III)V

    .line 87
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 88
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/CharSequence;)Lcom/google/common/hash/r;
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/common/hash/o;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([B)Lcom/google/common/hash/r;
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/common/hash/o;->a([B)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method
