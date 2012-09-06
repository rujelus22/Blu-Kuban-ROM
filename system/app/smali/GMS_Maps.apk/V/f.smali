.class public Lv/f;
.super Lv/a;
.source "SourceFile"


# static fields
.field private static final e:Lv/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    new-instance v0, Lv/g;

    const/16 v1, 0x64

    const-string v2, "IntChunkArrayManager"

    invoke-direct {v0, v1, v2}, Lv/g;-><init>(ILjava/lang/String;)V

    sput-object v0, Lv/f;->e:Lv/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 36
    const/16 v0, 0xa

    sget-object v1, Lv/f;->e:Lv/e;

    invoke-direct {p0, p1, v0, v1}, Lv/a;-><init>(IILv/e;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    move v1, v2

    :goto_2
    iget v0, p0, Lv/f;->b:I

    if-ge v1, v0, :cond_21

    .line 72
    iget-object v0, p0, Lv/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v3, v2

    .line 73
    :goto_f
    const/16 v4, 0x400

    if-ge v3, v4, :cond_1d

    .line 74
    aget v4, v0, v3

    div-int/2addr v4, p2

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 71
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 77
    :cond_21
    iget v0, p0, Lv/f;->b:I

    iget-object v1, p0, Lv/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3d

    .line 78
    :goto_2b
    iget v0, p0, Lv/f;->d:I

    if-ge v2, v0, :cond_3d

    .line 79
    iget-object v0, p0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    div-int/2addr v0, p2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 82
    :cond_3d
    return-void
.end method

.method public a(Ljava/nio/IntBuffer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    move v1, v2

    :goto_2
    iget v0, p0, Lv/f;->b:I

    if-ge v1, v0, :cond_17

    .line 41
    iget-object v0, p0, Lv/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/16 v3, 0x400

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 43
    :cond_17
    iget v0, p0, Lv/f;->b:I

    iget-object v1, p0, Lv/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 44
    iget-object v0, p0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lv/f;->d:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 46
    :cond_2a
    return-void
.end method

.method public a(Ljava/nio/ShortBuffer;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    move v1, v2

    :goto_2
    iget v0, p0, Lv/f;->b:I

    if-ge v1, v0, :cond_21

    .line 53
    iget-object v0, p0, Lv/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v3, v2

    .line 56
    :goto_f
    const/16 v4, 0x400

    if-ge v3, v4, :cond_1d

    .line 57
    aget v4, v0, v3

    div-int/2addr v4, p2

    int-to-short v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 52
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 60
    :cond_21
    iget v0, p0, Lv/f;->b:I

    iget-object v1, p0, Lv/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3d

    .line 61
    :goto_2b
    iget v0, p0, Lv/f;->d:I

    if-ge v2, v0, :cond_3d

    .line 62
    iget-object v0, p0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    div-int/2addr v0, p2

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 65
    :cond_3d
    return-void
.end method
