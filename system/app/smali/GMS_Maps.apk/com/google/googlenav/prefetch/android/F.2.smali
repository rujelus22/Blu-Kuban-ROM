.class public Lcom/google/googlenav/prefetch/android/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/prefetch/android/y;


# static fields
.field private static c:[I

.field private static d:[I


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x9

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/googlenav/prefetch/android/F;->c:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/googlenav/prefetch/android/F;->d:[I

    return-void

    .line 44
    nop

    :array_12
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_28
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/F;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/F;->b:I

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 58
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 60
    sget-object v3, Lcom/google/googlenav/prefetch/android/F;->d:[I

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/F;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v5, Lcom/google/googlenav/prefetch/android/F;->c:[I

    invoke-static {v0, v3, v4, v1, v5}, Lcom/google/googlenav/prefetch/android/F;->a(Ln/am;[ILjava/util/Queue;Ljava/util/Set;[I)V

    goto :goto_1b

    .line 64
    :cond_31
    return-void
.end method

.method private static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 100
    if-ltz p0, :cond_5

    .line 101
    rem-int v0, p0, p1

    .line 103
    :goto_4
    return v0

    :cond_5
    rem-int v0, p0, p1

    add-int/2addr v0, p1

    goto :goto_4
.end method

.method private static a(Ln/am;[ILjava/util/Queue;Ljava/util/Set;[I)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->c()Lcom/google/googlenav/clientparam/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/clientparam/e;->a()I

    move-result v7

    .line 137
    const/4 v2, 0x0

    .line 139
    const/4 v1, 0x0

    :goto_a
    move-object/from16 v0, p4

    array-length v3, v0

    if-ge v1, v3, :cond_89

    .line 140
    aget v8, p4, v1

    .line 141
    aget v6, p1, v1

    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-virtual/range {p0 .. p0}, Ln/am;->b()I

    move-result v3

    sub-int v9, v8, v3

    .line 144
    invoke-virtual/range {p0 .. p0}, Ln/am;->c()I

    move-result v3

    invoke-static {v3, v9}, Lcom/google/googlenav/prefetch/android/F;->b(II)I

    move-result v3

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    .line 145
    invoke-virtual/range {p0 .. p0}, Ln/am;->c()I

    move-result v5

    invoke-static {v5, v9}, Lcom/google/googlenav/prefetch/android/F;->b(II)I

    move-result v5

    add-int/2addr v5, v6

    add-int/lit8 v10, v5, -0x1

    .line 146
    invoke-virtual/range {p0 .. p0}, Ln/am;->d()I

    move-result v5

    invoke-static {v5, v9}, Lcom/google/googlenav/prefetch/android/F;->b(II)I

    move-result v5

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 147
    invoke-virtual/range {p0 .. p0}, Ln/am;->d()I

    move-result v11

    invoke-static {v11, v9}, Lcom/google/googlenav/prefetch/android/F;->b(II)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v9, v6, -0x1

    .line 148
    const/4 v6, 0x1

    shl-int v11, v6, v8

    move v6, v3

    move v3, v4

    .line 150
    :goto_4b
    if-gt v6, v10, :cond_86

    move v4, v5

    move v15, v3

    move v3, v2

    move v2, v15

    .line 151
    :goto_51
    if-gt v4, v9, :cond_7f

    .line 152
    invoke-static {v6, v11}, Lcom/google/googlenav/prefetch/android/F;->a(II)I

    move-result v12

    .line 153
    invoke-static {v4, v11}, Lcom/google/googlenav/prefetch/android/F;->a(II)I

    move-result v13

    .line 155
    new-instance v14, Ln/am;

    invoke-direct {v14, v8, v12, v13}, Ln/am;-><init>(III)V

    .line 156
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7c

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v12

    if-ge v12, v7, :cond_7c

    .line 157
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 151
    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 150
    :cond_7f
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v15, v2

    move v2, v3

    move v3, v15

    goto :goto_4b

    .line 139
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 168
    :cond_89
    return-void
.end method

.method private static b(II)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 114
    int-to-double v0, p0

    const-wide/high16 v2, 0x4000

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()Ln/am;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/F;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    return-object v0
.end method

.method public a(Ln/am;)Z
    .registers 3
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/F;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/google/googlenav/prefetch/android/F;->b:I

    return v0
.end method

.method public k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .registers 3

    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
