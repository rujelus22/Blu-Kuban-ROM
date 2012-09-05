.class public final Lcom/google/protobuf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/c;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/c;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/c;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/c;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/c;->c:I

    .line 51
    iput-object p1, p0, Lcom/google/protobuf/c;->b:[B

    .line 52
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    if-ne p1, p0, :cond_5

    .line 262
    :cond_4
    :goto_4
    return v0

    .line 244
    :cond_5
    instance-of v2, p1, Lcom/google/protobuf/c;

    if-nez v2, :cond_b

    move v0, v1

    .line 245
    goto :goto_4

    .line 248
    :cond_b
    check-cast p1, Lcom/google/protobuf/c;

    .line 249
    iget-object v2, p0, Lcom/google/protobuf/c;->b:[B

    array-length v3, v2

    .line 250
    iget-object v2, p1, Lcom/google/protobuf/c;->b:[B

    array-length v2, v2

    if-eq v3, v2, :cond_17

    move v0, v1

    .line 251
    goto :goto_4

    .line 254
    :cond_17
    iget-object v4, p0, Lcom/google/protobuf/c;->b:[B

    .line 255
    iget-object v5, p1, Lcom/google/protobuf/c;->b:[B

    move v2, v1

    .line 256
    :goto_1c
    if-ge v2, v3, :cond_4

    .line 257
    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_26

    move v0, v1

    .line 258
    goto :goto_4

    .line 256
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public final hashCode()I
    .registers 6

    .prologue
    .line 269
    iget v0, p0, Lcom/google/protobuf/c;->c:I

    .line 271
    if-nez v0, :cond_1d

    .line 272
    iget-object v4, p0, Lcom/google/protobuf/c;->b:[B

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/c;->b:[B

    array-length v2, v0

    .line 276
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_c
    if-ge v1, v2, :cond_18

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_c

    .line 279
    :cond_18
    if-nez v0, :cond_1b

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_1b
    iput v0, p0, Lcom/google/protobuf/c;->c:I

    .line 286
    :cond_1d
    return v0
.end method
