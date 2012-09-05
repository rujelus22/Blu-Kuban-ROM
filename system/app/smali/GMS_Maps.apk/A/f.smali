.class public LA/f;
.super LA/a;


# static fields
.field private static final e:LA/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, LA/g;

    const/16 v1, 0x64

    const-string v2, "IntChunkArrayManager"

    invoke-direct {v0, v1, v2}, LA/g;-><init>(ILjava/lang/String;)V

    sput-object v0, LA/f;->e:LA/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0xa

    sget-object v1, LA/f;->e:LA/e;

    invoke-direct {p0, p1, v0, v1}, LA/a;-><init>(IILA/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;I)V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget v0, p0, LA/f;->b:I

    if-ge v1, v0, :cond_21

    iget-object v0, p0, LA/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v3, v2

    :goto_f
    const/16 v4, 0x400

    if-ge v3, v4, :cond_1d

    aget v4, v0, v3

    div-int/2addr v4, p2

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    iget v0, p0, LA/f;->b:I

    iget-object v1, p0, LA/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3d

    :goto_2b
    iget v0, p0, LA/f;->d:I

    if-ge v2, v0, :cond_3d

    iget-object v0, p0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    div-int/2addr v0, p2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3d
    return-void
.end method

.method public a(Ljava/nio/IntBuffer;)V
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget v0, p0, LA/f;->b:I

    if-ge v1, v0, :cond_17

    iget-object v0, p0, LA/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/16 v3, 0x400

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_17
    iget v0, p0, LA/f;->b:I

    iget-object v1, p0, LA/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, LA/f;->d:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :cond_2a
    return-void
.end method

.method public a(Ljava/nio/ShortBuffer;I)V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget v0, p0, LA/f;->b:I

    if-ge v1, v0, :cond_21

    iget-object v0, p0, LA/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v3, v2

    :goto_f
    const/16 v4, 0x400

    if-ge v3, v4, :cond_1d

    aget v4, v0, v3

    div-int/2addr v4, p2

    int-to-short v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    iget v0, p0, LA/f;->b:I

    iget-object v1, p0, LA/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3d

    :goto_2b
    iget v0, p0, LA/f;->d:I

    if-ge v2, v0, :cond_3d

    iget-object v0, p0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    div-int/2addr v0, p2

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3d
    return-void
.end method
