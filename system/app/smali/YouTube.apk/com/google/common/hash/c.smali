.class public abstract Lcom/google/common/hash/c;
.super Lcom/google/common/hash/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/c;-><init>(II)V

    .line 88
    return-void
.end method

.method private constructor <init>(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 101
    rem-int v0, p2, p1

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 104
    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    .line 107
    iput p2, p0, Lcom/google/common/hash/c;->b:I

    .line 108
    iput p1, p0, Lcom/google/common/hash/c;->c:I

    .line 109
    return-void

    .line 101
    :cond_1e
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private c()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    .line 235
    invoke-direct {p0}, Lcom/google/common/hash/c;->d()V

    .line 237
    :cond_d
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 241
    :goto_5
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/c;->c:I

    if-lt v0, v1, :cond_15

    .line 244
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 246
    :cond_15
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 247
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/g;
    .registers 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/common/hash/c;->d()V

    .line 222
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 223
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_15

    .line 224
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->b(Ljava/nio/ByteBuffer;)V

    .line 226
    :cond_15
    invoke-virtual {p0}, Lcom/google/common/hash/c;->b()Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/google/common/hash/l;
    .registers 4
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 209
    invoke-direct {p0}, Lcom/google/common/hash/c;->c()V

    .line 210
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .registers 5
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 173
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/c;->c()V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_16
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/hash/f;)Lcom/google/common/hash/l;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/f;->funnel(Ljava/lang/Object;Lcom/google/common/hash/r;)V

    .line 216
    return-object p0
.end method

.method public final a([B)Lcom/google/common/hash/l;
    .registers 4
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/c;->a([BII)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final a([BII)Lcom/google/common/hash/l;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v0, v2, :cond_1f

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/c;->c()V

    :goto_1e
    return-object p0

    :cond_1f
    iget v0, p0, Lcom/google/common/hash/c;->b:I

    iget-object v2, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v2, :cond_38

    iget-object v3, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_38
    invoke-direct {p0}, Lcom/google/common/hash/c;->d()V

    :goto_3b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, p0, Lcom/google/common/hash/c;->c:I

    if-lt v0, v2, :cond_47

    invoke-virtual {p0, v1}, Lcom/google/common/hash/c;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_3b

    :cond_47
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1e
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method abstract b()Lcom/google/common/hash/g;
.end method

.method public final synthetic b(Ljava/lang/CharSequence;)Lcom/google/common/hash/r;
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([B)Lcom/google/common/hash/r;
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->a([B)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget v0, p0, Lcom/google/common/hash/c;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 127
    :goto_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/c;->c:I

    if-ge v0, v1, :cond_1c

    .line 128
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_e

    .line 130
    :cond_1c
    iget v0, p0, Lcom/google/common/hash/c;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->a(Ljava/nio/ByteBuffer;)V

    .line 133
    return-void
.end method
