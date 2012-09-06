.class public Lz/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lz/B;->a:[F

    .line 21
    invoke-virtual {p0}, Lz/B;->a()Lz/B;

    .line 22
    return-void
.end method

.method public static a([F)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 210
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2f

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    rem-int/lit8 v2, v0, 0x4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    .line 214
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 218
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lz/B;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lz/B;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 46
    return-object p0
.end method

.method public a(F)Lz/B;
    .registers 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lz/B;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p1, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 104
    return-object p0
.end method

.method public a(FFF)Lz/B;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lz/B;->a:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 56
    iget-object v0, p0, Lz/B;->a:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 57
    iget-object v0, p0, Lz/B;->a:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 59
    return-object p0
.end method

.method public a(Lz/B;)Lz/B;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p1, Lz/B;->a:[F

    iget-object v1, p0, Lz/B;->a:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-object p0
.end method

.method public a(Lz/D;F)Lz/B;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lz/B;->a:[F

    iget-object v2, p1, Lz/D;->a:[F

    aget v3, v2, v1

    iget-object v2, p1, Lz/D;->a:[F

    const/4 v4, 0x1

    aget v4, v2, v4

    iget-object v2, p1, Lz/D;->a:[F

    const/4 v5, 0x2

    aget v5, v2, v5

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 94
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lz/B;->a:[F

    invoke-static {v0}, Lz/B;->a([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
