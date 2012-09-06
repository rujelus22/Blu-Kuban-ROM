.class public Lcom/google/googlenav/ui/view/android/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 25
    sub-int v0, p0, p1

    .line 26
    if-gtz v0, :cond_7

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_6
    return-object v0

    .line 28
    :cond_7
    if-ne v0, v2, :cond_10

    .line 29
    const/16 v0, 0x364

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 31
    :cond_10
    const/16 v1, 0x2ca

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
