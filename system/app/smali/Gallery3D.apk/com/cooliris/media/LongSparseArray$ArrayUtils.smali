.class public final Lcom/cooliris/media/LongSparseArray$ArrayUtils;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/LongSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayUtils"
.end annotation


# static fields
.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 364
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/cooliris/media/LongSparseArray$ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 368
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/cooliris/media/LongSparseArray$ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 370
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 371
    return-void
.end method

.method public static idealByteArraySize(I)I
    .registers 4
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 374
    const/4 v0, 0x4

    .local v0, i:I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 375
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 376
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 378
    .end local p0
    :cond_10
    return p0

    .line 374
    .restart local p0
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealIntArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 394
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/cooliris/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method
