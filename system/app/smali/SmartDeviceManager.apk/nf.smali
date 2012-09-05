.class public final Lnf;
.super Ljava/io/OutputStream;
.source "a"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lne;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnf;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lnf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnf;-><init>(C)V

    return-void
.end method

.method private constructor <init>(C)V
    .registers 3
    .parameter

    .prologue
    .line 73
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lnf;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnf;->c:Ljava/util/LinkedList;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lnf;->b:Lne;

    .line 80
    new-array v0, p1, [B

    iput-object v0, p0, Lnf;->e:[B

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const/high16 v2, 0x4

    .line 275
    iget v0, p0, Lnf;->d:I

    iget-object v1, p0, Lnf;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lnf;->d:I

    .line 283
    iget v0, p0, Lnf;->d:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 285
    if-le v0, v2, :cond_17

    move v0, v2

    .line 288
    :cond_17
    iget-object v1, p0, Lnf;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lnf;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v0, v0, [B

    iput-object v0, p0, Lnf;->e:[B

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lnf;->f:I

    .line 291
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lnf;->d:I

    .line 90
    iput v0, p0, Lnf;->f:I

    .line 92
    iget-object v0, p0, Lnf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 93
    iget-object v0, p0, Lnf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 95
    :cond_12
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lnf;->f:I

    iget-object v1, p0, Lnf;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 113
    invoke-direct {p0}, Lnf;->c()V

    .line 115
    :cond_a
    iget-object v0, p0, Lnf;->e:[B

    iget v1, p0, Lnf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnf;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 116
    return-void
.end method

.method public final b(I)V
    .registers 5
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lnf;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnf;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 121
    iget-object v0, p0, Lnf;->e:[B

    iget v1, p0, Lnf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnf;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lnf;->e:[B

    iget v1, p0, Lnf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnf;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 127
    :goto_21
    return-void

    .line 124
    :cond_22
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lnf;->a(I)V

    .line 125
    invoke-virtual {p0, p1}, Lnf;->a(I)V

    goto :goto_21
.end method

.method public final b()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 148
    iget v0, p0, Lnf;->d:I

    iget v1, p0, Lnf;->f:I

    add-int/2addr v1, v0

    .line 150
    if-nez v1, :cond_b

    .line 151
    sget-object v0, Lnf;->a:[B

    .line 171
    :goto_a
    return-object v0

    .line 154
    :cond_b
    new-array v2, v1, [B

    .line 157
    iget-object v0, p0, Lnf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 158
    array-length v5, v0

    .line 159
    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    add-int v0, v4, v5

    move v4, v0

    .line 161
    goto :goto_14

    .line 162
    :cond_28
    iget-object v0, p0, Lnf;->e:[B

    iget v3, p0, Lnf;->f:I

    invoke-static {v0, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v0, p0, Lnf;->f:I

    add-int/2addr v0, v4

    .line 164
    if-eq v0, v1, :cond_5d

    .line 165
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: total len assumed to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", copied "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_5d
    iget-object v0, p0, Lnf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 169
    invoke-virtual {p0}, Lnf;->a()V

    :cond_68
    move-object v0, v2

    .line 171
    goto :goto_a
.end method

.method public final c(I)V
    .registers 5
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lnf;->f:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lnf;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 132
    iget-object v0, p0, Lnf;->e:[B

    iget v1, p0, Lnf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnf;->f:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Lnf;->e:[B

    iget v1, p0, Lnf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnf;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lnf;->e:[B

    iget v1, p0, Lnf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnf;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 140
    :goto_2e
    return-void

    .line 136
    :cond_2f
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lnf;->a(I)V

    .line 137
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lnf;->a(I)V

    .line 138
    invoke-virtual {p0, p1}, Lnf;->a(I)V

    goto :goto_2e
.end method

.method public final close()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public final flush()V
    .registers 1

    .prologue
    .line 265
    return-void
.end method

.method public final write(I)V
    .registers 2
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lnf;->a(I)V

    .line 261
    return-void
.end method

.method public final write([B)V
    .registers 4
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnf;->write([BII)V

    .line 239
    return-void
.end method

.method public final write([BII)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    move v0, p3

    move v1, p2

    :goto_2
    iget-object v2, p0, Lnf;->e:[B

    array-length v2, v2

    iget v3, p0, Lnf;->f:I

    sub-int/2addr v2, v3

    .line 246
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 247
    if-lez v2, :cond_1c

    .line 248
    iget-object v3, p0, Lnf;->e:[B

    iget v4, p0, Lnf;->f:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr v1, v2

    .line 250
    iget v3, p0, Lnf;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lnf;->f:I

    .line 251
    sub-int/2addr v0, v2

    .line 253
    :cond_1c
    if-lez v0, :cond_22

    .line 254
    invoke-direct {p0}, Lnf;->c()V

    goto :goto_2

    .line 256
    :cond_22
    return-void
.end method
