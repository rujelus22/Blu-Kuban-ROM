.class public Lx/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lx/v;


# instance fields
.field private final b:Lx/z;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Lx/x;

    invoke-direct {v0}, Lx/x;-><init>()V

    sput-object v0, Lx/v;->a:Lx/v;

    .line 80
    return-void
.end method

.method private constructor <init>(Lx/z;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lx/v;->c:I

    .line 100
    iput-object p1, p0, Lx/v;->b:Lx/z;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lx/z;Lx/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lx/v;-><init>(Lx/z;)V

    return-void
.end method

.method public static a()Lx/v;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lx/v;->a:Lx/v;

    return-object v0
.end method

.method public static a(Lx/z;)Lx/v;
    .registers 3
    .parameter

    .prologue
    .line 91
    new-instance v0, Lx/v;

    invoke-virtual {p0}, Lx/z;->c()Lx/z;

    move-result-object v1

    invoke-direct {v0, v1}, Lx/v;-><init>(Lx/z;)V

    return-object v0
.end method

.method private static a(DDD)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_16

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_16

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_18

    cmpl-double v0, p2, p2

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public a(I)D
    .registers 4
    .parameter

    .prologue
    .line 259
    if-ltz p1, :cond_a

    iget-object v0, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0}, Lx/z;->e()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 260
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 262
    :cond_10
    iget-object v0, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public a(II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 286
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lx/v;->d()I

    move-result v0

    if-ge p1, v0, :cond_d

    if-ltz p2, :cond_d

    const/4 v0, 0x3

    if-lt p2, v0, :cond_13

    .line 287
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 289
    :cond_13
    iget-object v0, p0, Lx/v;->b:Lx/z;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lx/z;->j(I)I

    move-result v0

    return v0
.end method

.method public a(III)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v2, p1, p2, p3}, Lx/z;->c(III)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1e

    .line 111
    iget-object v2, p0, Lx/v;->b:Lx/z;

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput p1, v3, v1

    aput p2, v3, v0

    const/4 v1, 0x2

    aput p3, v3, v1

    invoke-virtual {v2, v3}, Lx/z;->b([I)V

    .line 115
    :goto_1d
    return v0

    .line 114
    :cond_1e
    iget v0, p0, Lx/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/v;->c:I

    move v0, v1

    .line 115
    goto :goto_1d
.end method

.method public a(Lx/g;)Z
    .registers 8
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Lx/g;->a()D

    move-result-wide v0

    .line 122
    invoke-virtual {p0}, Lx/v;->c()D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    mul-double/2addr v4, v0

    invoke-static/range {v0 .. v5}, Lx/v;->a(DDD)Z

    move-result v0

    return v0
.end method

.method public b(I)D
    .registers 4
    .parameter

    .prologue
    .line 271
    if-ltz p1, :cond_a

    iget-object v0, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0}, Lx/z;->e()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 272
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 274
    :cond_10
    iget-object v0, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->c(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lx/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/v;->c:I

    .line 154
    return-void
.end method

.method public c()D
    .registers 7

    .prologue
    .line 238
    const-wide/16 v1, 0x0

    .line 239
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lx/v;->b:Lx/z;

    iget v3, v3, Lx/z;->d:I

    if-ge v0, v3, :cond_17

    .line 240
    iget-object v3, p0, Lx/v;->b:Lx/z;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v0, v4, v5}, Lx/z;->b(III)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 239
    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    .line 242
    :cond_17
    return-wide v1
.end method

.method public d()I
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lx/v;->b:Lx/z;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lx/v;->b:Lx/z;

    iget v0, v0, Lx/z;->d:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_5
.end method

.method public e()I
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lx/v;->b:Lx/z;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0}, Lx/z;->e()I

    move-result v0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 349
    instance-of v0, p1, Lx/v;

    if-nez v0, :cond_6

    .line 350
    const/4 v0, 0x0

    .line 353
    :goto_5
    return v0

    .line 352
    :cond_6
    check-cast p1, Lx/v;

    .line 353
    iget-object v0, p1, Lx/v;->b:Lx/z;

    iget-object v1, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0, v1}, Lx/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v0}, Lx/z;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v1, "\nint[] triangles = {\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v1, p0, Lx/v;->b:Lx/z;

    iget v3, v1, Lx/z;->d:I

    move v1, v0

    .line 323
    :goto_10
    if-ge v1, v3, :cond_51

    .line 324
    iget-object v4, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v4, v1}, Lx/z;->j(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v4, p0, Lx/v;->b:Lx/z;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lx/z;->j(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v4, p0, Lx/v;->b:Lx/z;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5}, Lx/z;->j(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    iget-object v4, p0, Lx/v;->b:Lx/z;

    iget v4, v4, Lx/z;->d:I

    add-int/lit8 v4, v4, -0x3

    if-ne v1, v4, :cond_4b

    .line 330
    const-string v4, "\n};\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_48
    add-int/lit8 v1, v1, 0x3

    goto :goto_10

    .line 332
    :cond_4b
    const-string v4, ",\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 335
    :cond_51
    iget-object v1, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v1}, Lx/z;->e()I

    move-result v1

    .line 336
    :goto_57
    if-ge v0, v1, :cond_7d

    .line 337
    const-string v3, "cutVertices.add(new Vertex2d("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v3, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v3, v0}, Lx/z;->b(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v3, p0, Lx/v;->b:Lx/z;

    invoke-virtual {v3, v0}, Lx/z;->c(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 341
    const-string v3, "));\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 344
    :cond_7d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
