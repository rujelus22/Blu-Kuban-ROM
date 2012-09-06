.class final Lcom/google/zxing/c/a/a/a/e;
.super Lcom/google/zxing/c/a/a/a/i;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/i;-><init>(Lcom/google/zxing/common/a;)V

    .line 47
    iput-object p3, p0, Lcom/google/zxing/c/a/a/a/e;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/zxing/c/a/a/a/e;->d:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 104
    const v0, 0x186a0

    rem-int v0, p1, v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x30

    .line 52
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/e;->a:Lcom/google/zxing/common/a;

    iget v0, v0, Lcom/google/zxing/common/a;->b:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_f

    .line 53
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 56
    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/e;->b(Ljava/lang/StringBuffer;I)V

    .line 59
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/zxing/c/a/a/a/e;->b(Ljava/lang/StringBuffer;II)V

    .line 60
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/e;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v2, 0x44

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    const v2, 0x9600

    if-eq v1, v2, :cond_64

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v2, v1, 0x20

    div-int/lit8 v1, v1, 0x20

    rem-int/lit8 v3, v1, 0xc

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v1, v1, 0xc

    div-int/lit8 v4, v1, 0xa

    if-nez v4, :cond_4d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    div-int/lit8 v1, v3, 0xa

    if-nez v1, :cond_57

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    div-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_61

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 62
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 96
    const v0, 0x186a0

    div-int v0, p2, v0

    .line 97
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method
