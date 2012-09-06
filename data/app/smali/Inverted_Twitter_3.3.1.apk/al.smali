.class public final Lal;
.super Lai;


# instance fields
.field final c:I

.field final d:I

.field final e:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lai;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lal;->c:I

    iput p4, p0, Lal;->d:I

    iput p5, p0, Lal;->e:I

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

    const/4 v0, 0x0

    return v0
.end method

.method public final a([II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_19

    aget v2, p1, v1

    iget v3, p0, Lal;->c:I

    if-ne v2, v3, :cond_19

    aget v2, p1, v0

    iget v3, p0, Lal;->d:I

    if-ne v2, v3, :cond_19

    const/4 v2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lal;->e:I

    if-ne v2, v3, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method
