.class public final Lcom/google/zxing/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# static fields
.field private static final a:[Lcom/google/zxing/j;


# instance fields
.field private final b:Lcom/google/zxing/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/j;

    sput-object v0, Lcom/google/zxing/b/a;->a:[Lcom/google/zxing/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/b/a/d;

    invoke-direct {v0}, Lcom/google/zxing/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 64
    if-eqz p2, :cond_be

    sget-object v0, Lcom/google/zxing/d;->b:Lcom/google/zxing/d;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->a()[I

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->b()[I

    move-result-object v4

    if-eqz v2, :cond_1c

    if-nez v4, :cond_21

    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_21
    iget v5, v3, Lcom/google/zxing/common/b;->a:I

    aget v0, v2, v1

    aget v6, v2, v8

    :goto_27
    if-ge v0, v5, :cond_32

    invoke-virtual {v3, v0, v6}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v7

    if-eqz v7, :cond_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_32
    if-ne v0, v5, :cond_39

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_39
    aget v5, v2, v1

    sub-int v5, v0, v5

    if-nez v5, :cond_44

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_44
    aget v0, v2, v8

    aget v6, v4, v8

    aget v2, v2, v1

    aget v4, v4, v1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v4, v5

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v6, v5

    if-lez v4, :cond_58

    if-gtz v6, :cond_5d

    :cond_58
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5d
    shr-int/lit8 v7, v5, 0x1

    add-int v8, v0, v7

    add-int/2addr v7, v2

    new-instance v9, Lcom/google/zxing/common/b;

    invoke-direct {v9, v4, v6}, Lcom/google/zxing/common/b;-><init>(II)V

    move v2, v1

    :goto_68
    if-ge v2, v6, :cond_84

    mul-int v0, v2, v5

    add-int v10, v8, v0

    move v0, v1

    :goto_6f
    if-ge v0, v4, :cond_80

    mul-int v11, v0, v5

    add-int/2addr v11, v7

    invoke-virtual {v3, v11, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_7d

    invoke-virtual {v9, v0, v2}, Lcom/google/zxing/common/b;->b(II)V

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_80
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_68

    .line 66
    :cond_84
    iget-object v0, p0, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/d;

    invoke-virtual {v0, v9}, Lcom/google/zxing/b/a/d;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/g;

    move-result-object v1

    .line 67
    sget-object v0, Lcom/google/zxing/b/a;->a:[Lcom/google/zxing/j;

    .line 73
    :goto_8c
    new-instance v2, Lcom/google/zxing/h;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->a()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    .line 75
    invoke-virtual {v1}, Lcom/google/zxing/common/g;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 76
    sget-object v0, Lcom/google/zxing/i;->c:Lcom/google/zxing/i;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->c()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 78
    :cond_aa
    invoke-virtual {v1}, Lcom/google/zxing/common/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 79
    sget-object v0, Lcom/google/zxing/i;->d:Lcom/google/zxing/i;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 81
    :cond_bd
    return-object v2

    .line 69
    :cond_be
    new-instance v0, Lcom/google/zxing/b/b/a;

    invoke-virtual {p1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/b/b/a;-><init>(Lcom/google/zxing/common/b;)V

    invoke-virtual {v0}, Lcom/google/zxing/b/b/a;->a()Lcom/google/zxing/common/i;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/d;

    invoke-virtual {v0}, Lcom/google/zxing/common/i;->d()Lcom/google/zxing/common/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/b/a/d;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/g;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/google/zxing/common/i;->e()[Lcom/google/zxing/j;

    move-result-object v0

    goto :goto_8c
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method
