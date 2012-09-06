.class public Lcom/google/googlenav/common/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-wide/high16 v0, -0x8000

    sput-wide v0, Lcom/google/googlenav/common/util/k;->c:J

    return-void
.end method

.method public static a()I
    .registers 1

    .prologue
    .line 227
    invoke-static {}, Lcom/google/googlenav/common/util/k;->e()V

    .line 228
    sget v0, Lcom/google/googlenav/common/util/k;->a:I

    return v0
.end method

.method public static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 254
    add-int/lit16 v0, p0, 0x200

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 233
    invoke-static {}, Lcom/google/googlenav/common/util/k;->e()V

    .line 234
    sget v0, Lcom/google/googlenav/common/util/k;->b:I

    return v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/googlenav/common/util/k;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .registers 2

    .prologue
    .line 239
    invoke-static {}, Lcom/google/googlenav/common/util/k;->e()V

    .line 240
    sget v0, Lcom/google/googlenav/common/util/k;->b:I

    sget v1, Lcom/google/googlenav/common/util/k;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static c(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 272
    const/16 v0, 0x400

    .line 273
    const/high16 v1, 0x10

    .line 275
    if-le p0, v1, :cond_56

    .line 276
    invoke-static {p0, v1}, Lcom/google/googlenav/common/util/j;->b(II)I

    move-result v0

    .line 277
    if-ge v0, v2, :cond_3c

    .line 278
    mul-int/lit8 v0, p0, 0xa

    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/j;->b(II)I

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_3b
    return-object v0

    .line 281
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 284
    :cond_56
    if-le p0, v0, :cond_a6

    .line 285
    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/j;->b(II)I

    move-result v1

    .line 286
    if-ge v1, v2, :cond_8c

    .line 287
    mul-int/lit8 v1, p0, 0xa

    invoke-static {v1, v0}, Lcom/google/googlenav/common/util/j;->b(II)I

    move-result v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 290
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 293
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b
.end method

.method public static d()I
    .registers 4

    .prologue
    .line 245
    invoke-static {}, Lcom/google/googlenav/common/util/k;->e()V

    .line 246
    sget v0, Lcom/google/googlenav/common/util/k;->b:I

    sget v1, Lcom/google/googlenav/common/util/k;->a:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    sget v2, Lcom/google/googlenav/common/util/k;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static e()V
    .registers 6

    .prologue
    .line 211
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 213
    sget-wide v3, Lcom/google/googlenav/common/util/k;->c:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    .line 223
    :goto_12
    return-void

    .line 216
    :cond_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    long-to-int v4, v4

    sput v4, Lcom/google/googlenav/common/util/k;->a:I

    .line 218
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/google/googlenav/common/util/k;->b:I

    .line 219
    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-int v0, v3

    .line 221
    const/16 v3, 0x32

    if-ge v0, v3, :cond_37

    const/16 v0, 0xc8

    :goto_31
    int-to-long v3, v0

    add-long v0, v1, v3

    sput-wide v0, Lcom/google/googlenav/common/util/k;->c:J

    goto :goto_12

    :cond_37
    const/16 v0, 0xbb8

    goto :goto_31
.end method
