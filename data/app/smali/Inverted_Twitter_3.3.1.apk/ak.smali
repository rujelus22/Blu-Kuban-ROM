.class public final Lak;
.super Lai;


# instance fields
.field final c:I

.field final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lai;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lak;->c:I

    iput p4, p0, Lak;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Z
    .registers 4

    iget v0, p0, Lak;->c:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lak;->d:I

    if-ne p2, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a([II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_12

    aget v2, p1, v1

    iget v3, p0, Lak;->c:I

    if-ne v2, v3, :cond_12

    aget v2, p1, v0

    iget v3, p0, Lak;->d:I

    if-ne v2, v3, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method
