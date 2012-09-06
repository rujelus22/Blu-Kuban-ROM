.class public final Lcom/google/zxing/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Vector;Lcom/google/zxing/common/f;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 41
    const/4 v0, 0x1

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2b

    .line 42
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 43
    add-int/lit8 v0, v1, -0x1

    .line 45
    :goto_e
    if-ltz v0, :cond_22

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Lcom/google/zxing/common/f;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_22

    .line 46
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 49
    :cond_22
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 51
    :cond_2b
    return-void
.end method
