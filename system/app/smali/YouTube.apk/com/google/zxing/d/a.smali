.class public final Lcom/google/zxing/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# static fields
.field private static final a:[Lcom/google/zxing/j;


# instance fields
.field private final b:Lcom/google/zxing/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/j;

    sput-object v0, Lcom/google/zxing/d/a;->a:[Lcom/google/zxing/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/d/a/c;

    invoke-direct {v0}, Lcom/google/zxing/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/d/a;->b:Lcom/google/zxing/d/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    if-eqz p2, :cond_ed

    sget-object v0, Lcom/google/zxing/d;->b:Lcom/google/zxing/d;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 61
    invoke-virtual {p1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/common/b;->a()[I

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/zxing/common/b;->b()[I

    move-result-object v3

    if-eqz v7, :cond_1c

    if-nez v3, :cond_21

    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_21
    aget v0, v7, v1

    aget v4, v7, v2

    iget v5, v6, Lcom/google/zxing/common/b;->a:I

    :goto_27
    if-ge v0, v5, :cond_32

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_32
    if-ne v0, v5, :cond_39

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_39
    aget v4, v7, v1

    sub-int/2addr v0, v4

    ushr-int/lit8 v8, v0, 0x3

    if-nez v8, :cond_45

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_45
    aget v9, v7, v2

    aget v10, v3, v2

    aget v0, v7, v1

    iget v11, v6, Lcom/google/zxing/common/b;->a:I

    move v3, v2

    move v5, v0

    move v0, v1

    :goto_50
    add-int/lit8 v4, v11, -0x1

    if-ge v5, v4, :cond_64

    const/16 v4, 0x8

    if-ge v0, v4, :cond_64

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5, v9}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v4

    if-eq v3, v4, :cond_62

    add-int/lit8 v0, v0, 0x1

    :cond_62
    move v3, v4

    goto :goto_50

    :cond_64
    add-int/lit8 v0, v11, -0x1

    if-ne v5, v0, :cond_6d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6d
    aget v7, v7, v1

    iget v0, v6, Lcom/google/zxing/common/b;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_73
    if-le v0, v7, :cond_7e

    invoke-virtual {v6, v0, v9}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v3

    if-nez v3, :cond_7e

    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    :cond_7e
    move v3, v0

    move v0, v1

    :goto_80
    if-le v3, v7, :cond_93

    const/16 v4, 0x9

    if-ge v0, v4, :cond_93

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v6, v4, v9}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v3

    if-eq v2, v3, :cond_90

    add-int/lit8 v0, v0, 0x1

    :cond_90
    move v2, v3

    move v3, v4

    goto :goto_80

    :cond_93
    if-ne v3, v7, :cond_9a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9a
    sub-int v0, v3, v5

    add-int/lit8 v0, v0, 0x1

    div-int v3, v0, v8

    sub-int v0, v10, v9

    add-int/lit8 v0, v0, 0x1

    div-int v4, v0, v8

    if-lez v3, :cond_aa

    if-gtz v4, :cond_af

    :cond_aa
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_af
    shr-int/lit8 v0, v8, 0x1

    add-int v7, v9, v0

    add-int/2addr v5, v0

    new-instance v9, Lcom/google/zxing/common/b;

    invoke-direct {v9, v3, v4}, Lcom/google/zxing/common/b;-><init>(II)V

    move v0, v1

    :goto_ba
    if-ge v0, v4, :cond_d5

    mul-int v2, v0, v8

    add-int v10, v7, v2

    move v2, v1

    :goto_c1
    if-ge v2, v3, :cond_d2

    mul-int v11, v2, v8

    add-int/2addr v11, v5

    invoke-virtual {v6, v11, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_cf

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/common/b;->b(II)V

    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :cond_d2
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 62
    :cond_d5
    iget-object v0, p0, Lcom/google/zxing/d/a;->b:Lcom/google/zxing/d/a/c;

    invoke-static {v9}, Lcom/google/zxing/d/a/c;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/g;

    move-result-object v1

    .line 63
    sget-object v0, Lcom/google/zxing/d/a;->a:[Lcom/google/zxing/j;

    .line 69
    :goto_dd
    new-instance v2, Lcom/google/zxing/h;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->a()[B

    move-result-object v1

    sget-object v4, Lcom/google/zxing/a;->j:Lcom/google/zxing/a;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    return-object v2

    .line 65
    :cond_ed
    new-instance v0, Lcom/google/zxing/d/b/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/d/b/a;-><init>(Lcom/google/zxing/c;)V

    invoke-virtual {v0}, Lcom/google/zxing/d/b/a;->a()Lcom/google/zxing/common/i;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/google/zxing/d/a;->b:Lcom/google/zxing/d/a/c;

    invoke-virtual {v0}, Lcom/google/zxing/common/i;->d()Lcom/google/zxing/common/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/d/a/c;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/g;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lcom/google/zxing/common/i;->e()[Lcom/google/zxing/j;

    move-result-object v0

    goto :goto_dd
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method
