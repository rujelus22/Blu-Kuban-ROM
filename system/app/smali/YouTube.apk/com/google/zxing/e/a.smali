.class public final Lcom/google/zxing/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# static fields
.field private static final a:[Lcom/google/zxing/j;


# instance fields
.field private final b:Lcom/google/zxing/e/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/j;

    sput-object v0, Lcom/google/zxing/e/a;->a:[Lcom/google/zxing/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/e/a/m;

    invoke-direct {v0}, Lcom/google/zxing/e/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/a;->b:Lcom/google/zxing/e/a/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 69
    if-eqz p2, :cond_c2

    sget-object v0, Lcom/google/zxing/d;->b:Lcom/google/zxing/d;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->a()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->b()[I

    move-result-object v5

    if-eqz v4, :cond_1c

    if-nez v5, :cond_21

    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_21
    iget v6, v3, Lcom/google/zxing/common/b;->b:I

    iget v7, v3, Lcom/google/zxing/common/b;->a:I

    aget v2, v4, v1

    aget v0, v4, v9

    :goto_29
    if-ge v2, v7, :cond_38

    if-ge v0, v6, :cond_38

    invoke-virtual {v3, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_38

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_38
    if-eq v2, v7, :cond_3c

    if-ne v0, v6, :cond_41

    :cond_3c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_41
    aget v0, v4, v1

    sub-int v6, v2, v0

    if-nez v6, :cond_4c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4c
    aget v0, v4, v9

    aget v2, v5, v9

    aget v4, v4, v1

    aget v5, v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v5, v6

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    div-int v7, v2, v6

    if-lez v5, :cond_61

    if-gtz v7, :cond_66

    :cond_61
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_66
    if-eq v7, v5, :cond_6d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6d
    shr-int/lit8 v2, v6, 0x1

    add-int v8, v0, v2

    add-int/2addr v4, v2

    new-instance v9, Lcom/google/zxing/common/b;

    invoke-direct {v9, v5, v7}, Lcom/google/zxing/common/b;-><init>(II)V

    move v2, v1

    :goto_78
    if-ge v2, v7, :cond_94

    mul-int v0, v2, v6

    add-int v10, v8, v0

    move v0, v1

    :goto_7f
    if-ge v0, v5, :cond_90

    mul-int v11, v0, v6

    add-int/2addr v11, v4

    invoke-virtual {v3, v11, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_8d

    invoke-virtual {v9, v0, v2}, Lcom/google/zxing/common/b;->b(II)V

    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_78

    .line 71
    :cond_94
    iget-object v0, p0, Lcom/google/zxing/e/a;->b:Lcom/google/zxing/e/a/m;

    invoke-virtual {v0, v9, p2}, Lcom/google/zxing/e/a/m;->a(Lcom/google/zxing/common/b;Ljava/util/Hashtable;)Lcom/google/zxing/common/g;

    move-result-object v1

    .line 72
    sget-object v0, Lcom/google/zxing/e/a;->a:[Lcom/google/zxing/j;

    .line 79
    :goto_9c
    new-instance v2, Lcom/google/zxing/h;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->a()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    .line 80
    invoke-virtual {v1}, Lcom/google/zxing/common/g;->c()Ljava/util/Vector;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_b6

    .line 82
    sget-object v3, Lcom/google/zxing/i;->c:Lcom/google/zxing/i;

    invoke-virtual {v2, v3, v0}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 84
    :cond_b6
    invoke-virtual {v1}, Lcom/google/zxing/common/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_c1

    .line 86
    sget-object v1, Lcom/google/zxing/i;->d:Lcom/google/zxing/i;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 88
    :cond_c1
    return-object v2

    .line 74
    :cond_c2
    new-instance v0, Lcom/google/zxing/e/b/c;

    invoke-virtual {p1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/e/b/c;-><init>(Lcom/google/zxing/common/b;)V

    invoke-virtual {v0, p2}, Lcom/google/zxing/e/b/c;->a(Ljava/util/Hashtable;)Lcom/google/zxing/common/i;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/zxing/e/a;->b:Lcom/google/zxing/e/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/common/i;->d()Lcom/google/zxing/common/b;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/zxing/e/a/m;->a(Lcom/google/zxing/common/b;Ljava/util/Hashtable;)Lcom/google/zxing/common/g;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcom/google/zxing/common/i;->e()[Lcom/google/zxing/j;

    move-result-object v0

    goto :goto_9c
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method
