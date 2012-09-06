.class abstract Lcom/google/zxing/c/a/a/a/h;
.super Lcom/google/zxing/c/a/a/a/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/j;-><init>(Lcom/google/zxing/common/a;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuffer;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    const/16 v5, 0xa

    const/4 v1, 0x0

    move v0, v1

    .line 52
    :goto_6
    const/4 v2, 0x4

    if-ge v0, v2, :cond_26

    .line 53
    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/h;->b:Lcom/google/zxing/c/a/a/a/s;

    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v3, p2

    invoke-virtual {v2, v3, v5}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v2

    .line 54
    div-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_19

    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    :cond_19
    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_20

    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    :cond_20
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    move v2, v1

    move v3, v1

    .line 63
    :goto_28
    const/16 v0, 0xd

    if-ge v2, v0, :cond_3f

    add-int v0, v2, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_3a

    mul-int/lit8 v0, v0, 0x3

    :cond_3a
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    :cond_3f
    rem-int/lit8 v0, v3, 0xa

    rsub-int/lit8 v0, v0, 0xa

    if-ne v0, v5, :cond_46

    move v0, v1

    :cond_46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 64
    return-void
.end method

.method protected final b(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 46
    const/16 v1, 0x39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/c/a/a/a/h;->a(Ljava/lang/StringBuffer;II)V

    .line 49
    return-void
.end method
